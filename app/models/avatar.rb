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
#  status        :integer          default(1)
#  weight        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  user_admin_id :bigint           not null
#
# Indexes
#
#  index_avatars_on_user_admin_id  (user_admin_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_admin_id => user_admins.id)
#
class Avatar < ApplicationRecord
  belongs_to :user_admin

  enum gender: { inactive: 0, active: 1 }
end
