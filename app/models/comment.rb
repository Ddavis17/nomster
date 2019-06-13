class Comment < ApplicationRecord
  belongs_to :user && :place

  #note: or seperate if this doesnt work 
end
