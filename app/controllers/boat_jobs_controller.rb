class BoatJobsController < ApplicationController

def index
	@boats_jobs = Boat.all
end

def show
	@boat_job = Boat.find(params[:id])
end

def new
	@boat_job = Boat.new
end

def create
	@boat_job = BoatJob.new

	#Don't need line 18 & 19 when you do private. 
	@boat_job.boat_id = params[:boat_id]
	@boat_job.job_id = params[:job_id]
	if @boat_job.save
		redirect_to "/boat_jobs/"
	else
		render "new"
	end
end

# private

# 	params = {
# 		boat_jobs: {
# 			job_id: 21,
# 			boat_id: 12
# 		}
# 	}
	
# 	params = {
# 		job_id: 21,
# 		boat_id: 12
# 	}


# 	params[:boat_jobs][:job_id]
# 	params[:boat_jobs][:boat_id]
    
#     def boat_jobs_params
#       params.require(:boat_jobs).permit(:boat_id, :job_id)
#     end


end