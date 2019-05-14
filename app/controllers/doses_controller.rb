class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    # We need ingredient_id to associate dose with corresponding ingredient
    # @ingredient = Ingredient.find(params[:ingredient_id])
    # @dose.ingredient = @ingredient
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
  end

  # def show
  #   @cocktail = Cocktail.find(params[:cocktail_id])
  #   # @dose = @dose.find(params[:id])
  #   @doses = @cocktail.doses
  # end

  private
  def dose_params
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
