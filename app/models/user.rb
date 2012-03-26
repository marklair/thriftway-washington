class User < ActiveRecord::Base
  acts_as_authentic
  
  scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0"} }
  
  ROLES = %w[admin test] # When adding new roles you MUST add them to the END of this array, or it will mess up the current users
  
  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end
  
  def role?(role)
    roles.include? role.to_s
  end
  
  def deliver_password_reset_instructions!
    reset_perishable_token!  
    Notifier.deliver_password_reset_instructions(self)  
  end

end


