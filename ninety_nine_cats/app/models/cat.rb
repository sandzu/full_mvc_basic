# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birthdate   :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "date"

class Cat < ApplicationRecord

  COLORS = %w(Black White Gray Brown Orange Blonde)
  validates :sex, inclusion: {in: %w(M F), message: "%{value} not a valid sex" }
  validates :color, inclusion: {in: COLORS, message: "%{value} not a valid color"}
  validates :birthdate, :color, :name, :sex, :description,presence:true

  has_many :cat_rental_requests,
  primary_key: :id,
  foreign_key: :cat_id,
  class_name: :CatRentalRequest,
  dependent: :destroy 

  def age
    Date.today - self.birthdate
  end

end
