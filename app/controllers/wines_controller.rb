class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def index
     @available_at = Time.now
	 #@wines = Wine.all
	 @wines = Wine.order(:name).page(params[:page])
  end	
  
  def show
 	#leave empty	
  end


  def new
	@wine = Wine.new
  end

  def create 
	@wine = Wine.new(wine_params)
	if @wine.save
	  redirect_to @wine, notice: "#{@wine.name} was created."
    else
    	render :new
    end	
 end   

  def edit
	#leave empty
  end

  def update 
	if @wine.update(wine_params)
	     redirect_to @wine, notice: "#{@wine.name} was updated."
    else
	     render :new
    end 
  end

  def destroy
   @wine.destroy
   redirect_to wines_url
  end


  def post 
	#leave blank
  end

private

  def wine_params
	params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
  end

  def set_wine
	@wine = Wine.find(params[:id])
  end	
	
end