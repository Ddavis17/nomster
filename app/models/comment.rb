class Comment < ApplicationRecord
  belongs_to :user 
  belongs_to :place

  #note: or seperate if this doesnt work 
end
