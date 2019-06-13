class Regist < ApplicationRecord
  belongs_to :user

  enum caixa: %i[payshop euromilhoes tabacaria bar]

  validates :caixa, presence: true
  validates :five, numericality: { only_integer: true, allow_nil: true }
  validates :ten, numericality: { only_integer: true, allow_nil: true }
  validates :twenty, numericality: { only_integer: true, allow_nil: true }
  validates :fifty, numericality: { only_integer: true, allow_nil: true }
  validates :hund, numericality: { only_integer: true, allow_nil: true }
  validates :two_hund, numericality: { only_integer: true, allow_nil: true }
  validates :five_hund, numericality: { only_integer: true, allow_nil: true }
  validates :coin, numericality: { only_integer: true, allow_nil: true }
  validates :reforco, numericality: { allow_nil: true }
  validates :payment, numericality: { allow_nil: true }
  validates :caixa_value, numericality: { only_integer: true, allow_nil: true }, presence: true
end
