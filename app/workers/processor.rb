class Processor
  include Sidekiq::Worker

  def perform
    awesome_work
  end

  private

  def awesome_work
    sleep rand(0.5..1.5)
  end
end
