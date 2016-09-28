class Player < ApplicationRecord

	COUNTRIES = %w(Korea USA Australia China Taiwan Japan Canada)

	validates :name, presence: true

	validates :nationality, inclusion: { in: COUNTRIES }

	validates :number, inclusion: { in: 0..100 }

	validates :age, inclusion: { in: 15..50 }

	validates :profile_pic, allow_blank: true, format: {
    with: /\w+\.(gif|png|jpg|jpeg)\z/i,
    message: "must reference a GIF, JPG, JPEG, or PNG image"
  }

end
