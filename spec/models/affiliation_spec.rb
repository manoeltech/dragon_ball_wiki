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
require 'rails_helper'

RSpec.describe Affiliation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
