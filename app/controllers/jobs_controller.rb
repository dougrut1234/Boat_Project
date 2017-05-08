class JobsController < ApplicationController

def index
	@jobs = Job.all
end

def show
	@job = Job.find(params[:id])
	@boats = Boat.all
	@jobs = Job.all
end

def new
	@job = Job.new
end

def create
	@job = Job.new(job_params)
		if @job.save
			flash[:notice] = "Your job created successfully."
			redirect_to "/jobs/"
		else
			flash[:notice] = "Your job was NOT created."
			redirect_to "/jobs/new"
		end
	end

def edit
	@job = Job.find(params[:id])
end

def update
	@job = Job.find(params[:id])
	@job.description = params[:job][:description]
	@job.origin = params[:job][:origin]
	@job.cost = params[:job][:cost]
	@job.amount_of_containers = params[:job][:amount_of_containers]
		if @job.save
			redirect_to "jobs/show"
		else
			redirect_to "jobs/show"
		end
end

def destroy
	Job.find(params[:id]).destroy
		redirect_to "/jobs/"
end

private
    
    def job_params
      params.require(:job).permit(:description, :destination, :origin, :cost, :amount_of_containers)
    
    end

end
