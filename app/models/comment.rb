class Comment < ModelRecord
  belongs_to :user
  belongs_to :post
end
