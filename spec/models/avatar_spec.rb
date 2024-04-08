# == Schema Information
#
# Table name: avatars
#
#  id            :bigint           not null, primary key
#  date_of_birth :date
#  description   :text
#  gender        :integer
#  ki            :integer
#  name          :string
#  status        :integer          default("active")
#  weight        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  race_id       :bigint           not null
#  user_admin_id :bigint           not null
#
# Indexes
#
#  index_avatars_on_race_id        (race_id)
#  index_avatars_on_user_admin_id  (user_admin_id)
#
# Foreign Keys
#
#  fk_rails_...  (race_id => races.id)
#  fk_rails_...  (user_admin_id => user_admins.id)
#
require 'rails_helper'

RSpec.describe Avatar, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
