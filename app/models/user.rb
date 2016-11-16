class User < ActiveRecord::Base
  has_many :articles
  before_destroy :set_default_comments

  def set_default_comments
    u = User.where(username: "Usuario ").first
    self.user = u
  end

end
