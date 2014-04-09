 class WinesController < ApplicationController
 


before_action :set_wine, only: [:show, :edit, :update, :destory]

def index
     @available_at = Time.now
	 @wines = Wine.all
end	
  
def show
 	#leave empty	
end


def new
	@wine = Wine.new
end

def create 
	@wine = Wine.new(wine_params)
	@wine.save
	redirect_to @wine
end

def edit
	#leave empty
end

def update 
	@wine.update(wine_params)
	redirect_to @wine
end

def destroy
   @wine.destroy
   redirect_to_wines_url
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