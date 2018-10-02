class Picture < ApplicationRecord


    def self.newest_first
      Picture.order("created_at DESC")
    end

    def self.most_recent_five
      Picture.newest_first.limit(5)
    end

    def self.created_before(time)
      Picture.where("created_at < ?", time)
    end

  validates :artist, :title, :url, presence: true
  validates :url, uniqueness: true
  validates_length_of :title, :minimum => 3
  validates_length_of :title, :maximum => 30







end
