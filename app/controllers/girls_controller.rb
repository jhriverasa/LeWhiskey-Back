class GirlsController < ApplicationController
  before_action :set_girl, only: [:show, :update, :destroy]

  # GET /girls
  def index
    @girls = Girl.all

    render json: @girls
  end

  # GET /girls/1
  def show
    render json: @girl
  end

  # POST /girls
  def create
    @girl = Girl.new(girl_params)

    if @girl.save
      render json: @girl, status: :created, location: @girl
    else
      render json: @girl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /girls/1
  def update
    if @girl.update(girl_params)
      render json: @girl
    else
      render json: @girl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /girls/1
  def destroy
    @girl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_girl
      @girl = Girl.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def girl_params
      params.require(:girl).permit(:name, :cc, :description)
    end
end
