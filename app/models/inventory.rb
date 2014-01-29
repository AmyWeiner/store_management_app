# == Schema Information
#
# Table name: inventories
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Inventory < ActiveRecord::Base
  belongs_to :product
  belongs_to :category
end
