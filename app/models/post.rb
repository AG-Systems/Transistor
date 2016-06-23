class Post < ActiveRecord::Base
    acts_as_votable
    belongs_to :user
    has_many :comments
    validates_length_of :question, :minimum => 5, :allow_blank => false
    validates_length_of :title, :minimum => 5, :allow_blank => false
    validate :date_scope
    private
    def date_scope
    if Post.where("user_id = ? AND DATE(created_at) = DATE(?)", self.user_id, Time.now).all.any?
      errors.add(:user_id, "Can only post once a day")
    end
  end
end
