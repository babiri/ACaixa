class Regist < ApplicationRecord
  belongs_to :user

  validates :caixa, presence: true
  validates :creation_date, presence: true
  validates :edit_date, presence: true
  validates :five, numerically: { only_integer: true, allow_nil: true }
  validates :ten, numerically: { only_integer: true, allow_nil: true }
  validates :twenty, numerically: { only_integer: true, allow_nil: true }
  validates :fifty, numerically: { only_integer: true, allow_nil: true }
  validates :hund, numerically: { only_integer: true, allow_nil: true }
  validates :two_hund, numerically: { only_integer: true, allow_nil: true }
  validates :five_hund, numerically: { only_integer: true, allow_nil: true }
  validates :coin, numerically: { only_integer: true, allow_nil: true }
  validates :reforco, numerically: { allow_nil: true }
  validates :payment, numerically: { allow_nil: true }
  validates :caixa_value, numerically: { only_integer: true, allow_nil: true }, presence: true
end
