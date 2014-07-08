class SecrateCode < ActiveRecord::Base
  belongs_to :user
  #attr_accessible :secrate_code, :user_id
end
