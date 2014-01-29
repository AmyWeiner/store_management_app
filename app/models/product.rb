# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  price       :float
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Product < ActiveRecord::Base
	has_many :inventories
	has_many :categories, through: :inventories
end
