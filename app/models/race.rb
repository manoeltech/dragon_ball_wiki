# == Schema Information
#
# Table name: races
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :integer          default("active")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Race < ApplicationRecord
  enum status: { inactive: 0, active: 1 }
  validates :name, presence: true
  has_many :avatars
end
