# == Schema Information
#
# Table name: affiliations
#
#  id         :bigint           not null, primary key
#  name       :string
#  status     :integer          default("active")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Affiliation < ApplicationRecord
  has_many :avatars
  enum status: { inactive: 0, active: 1 }
  validates :name, presence: true
  validates_uniqueness_of :name
end
