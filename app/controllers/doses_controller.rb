class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :destroy]

  def index
    @doses = Dose.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
