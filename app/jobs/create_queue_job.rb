class CreateQueueJob < ApplicationJob
  queue_as :default

  before_enqueue do |job|
    priority_str =  if @priority == 1
                      "High"
                    elsif @priority == 11
                      "Default"
                    elsif @priority == 75
                      "Low"
                    end
    Job.create(job: job_id, state: "Waiting", priority: priority_str)
  end

  def perform(movie_data)
    queue_job = Job.find_by_job(job_id)
    queue_job.update(state: "in progress")
    if Movie.create(movie_data)
      queue_job.update(state: "done")
    else
      queue_job.update(state: "failed")
    end
  end
end
