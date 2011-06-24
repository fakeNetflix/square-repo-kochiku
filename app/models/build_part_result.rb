class BuildPartResult < ActiveRecord::Base
  has_many :build_artifacts
  belongs_to :build_part

  symbolize :result, :in => [:passed, :failed, :error]

  scope :failed, where(:result => 'failed')
  scope :passed, where(:result => 'passed')

  def elapsed_time
    finished_at - started_at if finished_at && started_at
  end
end
