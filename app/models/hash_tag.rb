class HashTag < ModelRecord
  has_many :post_hash_tags
  has_many :posts, through: :post_hash_tags
end
