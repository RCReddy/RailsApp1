class Role < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :role, :user_id
end
