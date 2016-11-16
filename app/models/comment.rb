class Comment < ActiveRecord::Base
  belongs_to :user
  before_save :set_default_user

  def set_default_user
    if self.user == nil
      u = User.where(username: "Usuario por defecto").first
      self.user = u
    end
 end

end
