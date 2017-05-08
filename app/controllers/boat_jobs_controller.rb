class BoatJobsController < ApplicationController

def index
	@boat_jobs = BoatJob.all
end

def show
	@boat_job = BoatJob.find(params[:id])
end

def new
	@boat_job = BoatJob.new
end

def create
	@boat_job = BoatJob.new

	#Don't need line 18 & 19 when you do private. 
	@boat_job.boat_id = params[:boat_id]
	@boat_job.job_id = params[:job_id]
	if @boat_job.save
		flash[:notice] = "Job Assigned Successfully."
		redirect_to boat_jobs_path
	else
		render "new"
	end
end

 def destroy
    BoatJob.find(params[:id]).destroy
    	redirect_to "/boat_jobs/"
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