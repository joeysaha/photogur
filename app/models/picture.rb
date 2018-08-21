# class Picture < ApplicationRecord
#
#   def self.newest_first
#     Picture.order("created_at DESC")
#   end
#
#   def self.most_recent_five
#     Picture.newest_first.limit(5)
#   end
#
#   def self.created_before(time)
#     Picture.where("created_at < ?", time)
#   end
# end

# class Picture < ActiveRecord::Base
#
#   def self.newest_first
#     Picture.order("created_at DESC")
#   end
#
#   def self.most_recent_five
#     Picture.newest_first.limit(5)
#   end
#
#   def self.created_before(time)
#     Picture.where("created_at < ?", time)
#   end
#
# end

class Picture < ActiveRecord::Base

  def self.newest_first
    Picture.order("created_at DESC")
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  def self.pictures_created_in_year(time)
    Picture.where("created_at > ?", time)
  end

  def self.pictures_created_before_year(time)
    Picture.where("created_at < ?", time)
  end
end
