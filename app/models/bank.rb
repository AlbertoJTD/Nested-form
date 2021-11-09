class Bank < ApplicationRecord
    has_many :bank_subsidiaries, dependent: :destroy
    validates :name, presence: true

    accepts_nested_attributes_for :bank_subsidiaries,
        reject_if: proc { |attr| attr['address'].blank? },
        allow_destroy: true

    def to_s
        name
    end
end
