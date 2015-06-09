#encoding: utf-8
class List < ActiveRecord::Base
  belongs_to :category
  before_create :set_cat

  def set_cat
    if !self.category_id
      self.category_id = 1
    end
  end

end
