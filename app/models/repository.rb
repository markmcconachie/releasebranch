class Repository < ActiveRecord::Base
   after_save :setup_repo

  private

  def setup_repo
    Dir.mkdir unique_dir
    `git clone #{source} #{unique_dir}`
  end

  def unique_dir
    "#{Rails.root}/tmp/#{self.id}"
  end
end
