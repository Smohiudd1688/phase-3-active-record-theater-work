class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.pluck(:actor)
  end

  def locations
    self.auditions.pluck(:location)
  end

  def lead
    if self.auditions.where(hired: true).length < 1
        'no actor has been hired for this role'
    else
        self.auditions[0]
    end
  end

  def understudy
    if self.auditions.where(hired: true).length < 2
        'no actor has been hired for understudy for this role'
    else
        self.auditions[1]
    end
  end
end
