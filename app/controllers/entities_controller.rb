class EntitiesController < ApplicationController
  before_action :set_entity, only: %i[ show  ]
  load_and_authorize_resource

  # GET /entities/1 or /entities/1.json
  def show
  end

  # GET /entities/new
  def new
    @user = current_user
    @entity = Entity.new
  end

  # POST /entities or /entities.json
  def create
    @entity = Entity.new(entity_params)

    respond_to do |format|
      if @entity.save
        format.html { redirect_to category_path(@entity.category), notice: "Entity was successfully created." }
        format.json { render :show, status: :created, location: @entity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @entity.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entity
      @entity = Entity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def entity_params
      entity_hash = params.require(:entity).permit(:name, :amount, :category_id)
      entity_hash[:user] = current_user
      entity_hash
    end
end
