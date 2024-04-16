# == Schema Information
#
# Table name: avatars
#
#  id             :bigint           not null, primary key
#  date_of_birth  :date
#  description    :text
#  gender         :integer
#  ki             :integer
#  name           :string
#  status         :integer          default("active")
#  weight         :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  affiliation_id :bigint           not null
#  race_id        :bigint           not null
#  user_admin_id  :bigint           not null
#
# Indexes
#
#  index_avatars_on_affiliation_id  (affiliation_id)
#  index_avatars_on_race_id         (race_id)
#  index_avatars_on_user_admin_id   (user_admin_id)
#
# Foreign Keys
#
#  fk_rails_...  (affiliation_id => affiliations.id)
#  fk_rails_...  (race_id => races.id)
#  fk_rails_...  (user_admin_id => user_admins.id)
#
class Avatar < ApplicationRecord
  belongs_to :user_admin
  belongs_to :race
  belongs_to :affiliation

  enum gender: { male: 0, female: 1 }
  enum status: { inactive: 0, active: 1 }

  validates :name, :gender, :date_of_birth, :status, presence: true
  validates :ki, :weight, numericality: { greater_than: 0 }

  has_one_attached :image

  scope :avatar_active, -> { where(status: 1) }


  def self.export_to_csv
    
    headers = [
      "Id", "Nome", "Ki", "Data de Nascimento", "Descrição",
      "Sexo", "Status", "Peso", "Criado em", "Equipe", "Raça"
    ]
    
    avatars = Avatar.all

    CSV.generate do |csv|
      csv << headers
      avatars.each do |avatar|
        csv << [
          avatar.id, avatar.name, avatar.ki, avatar.date_of_birth, avatar.description,
          avatar.gender, avatar.status, avatar.weight, avatar.created_at,
          avatar.affiliation.name, avatar.race.name
        ]
      end
    end
  end

  def formatter_kg
    "#{self.weight}" + " kg"
  end
end
