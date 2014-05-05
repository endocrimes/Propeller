class Application < ActiveRecord::Base
  has_many :devices, :foreign_key => 'application_id'
end
