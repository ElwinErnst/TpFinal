class Inscription < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :payment, presence: true
  paginates_per 3
  def states
    #solicitud enviada, en proceso, rechazada, inscripto
    if state == 1
      return 'sent'
    elsif state == 2
      return 'in progress'
    elsif state == 3
      return 'rejected'
    elsif state == 4
      return 'enrolled'
    end
  end

end
