class BoatsController < ApplicationController

def index
	@boats = Boat.all
end

def show
	@boat = Boat.find(params[:id])
end

def new
	@boat = Boat.new
end

def create
	@boat = Boat.new(boat_params)
		if @boat.save
			redirect_to "/boats/"
		else
			flash[:notice] = "Your boat was NOT created."
			redirect_to "/boats/new"
		end
	end

def edit
	@boat = Boat.find(params[:id])
end

def update
	@boat = Boat.find(params[:id])
	@boat.name = params[:job][:name]
	@boat.amount_of_containers = params[:job][:amount_of_containers]
		if @boat.save
			redirect_to "/boats/"
		else
			redirect_to boat_path
		end
end

def destroy
	Boat.find(params[:id]).destroy
		redirect_to "/boats/"
	end

private
    
    def boat_params
      params.require(:boat).permit(:name, :location, :amount_of_containers)
    
    end
end

