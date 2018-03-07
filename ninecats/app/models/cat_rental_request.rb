class CatRentalRequest < ApplicationRecord
  STATUS = ['APPROVED', 'DENIED', 'PENDING']
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: STATUS }

  belongs_to :cat,
    foreign_key: :cat_id,
    class_name: :Cat

  has_many :cat_rental_requests,
    through: :cat,
    source: :cat_rental_requests

  def overlapping_requests

    cat_rental_requests
      .where("start_date <= '#{self.end_date}'")
      .where("end_date >= '#{self.start_date}'")
    #where other start dates is before our end date
    #where other end dates are after our start date
  end

  def overlapping_approved_requests
    overlapping_requests.where(status: 'APPROVED')
  end

  def inspect
    "<ID: #{self.cat_id} Start Date:#{self.start_date} End Date: #{self.end_date} Status: #{self.status}>\n"
  end
end
