class WorkEnqueuer
  include Sidekiq::Worker
  include Sidetiq::Schedulable

  recurrence { minutely }

  def perform
    (1..4000).each do
      Processor.perform_async()
    end
  end
end
