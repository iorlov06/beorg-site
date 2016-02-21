module AdminHelper
  def wordify_role role
    case role
    when -1
      "Blocked"
    when 0
      "User"
    when 1
      "Moderator"
    when 2
      "Admin"
    end
  end

  def links user
    case user.role
    when -1
      current_user.role > 0 ? link_to('Unblock', "/admin/manage_role?id=#{user.id}&role=0") : ''
    when 0
      a = current_user.role > 0 ? link_to('Block', "/admin/manage_role?id=#{user.id}&role=-1") : ''
      b = current_user.role > 1 ? link_to('Give Moder Rights', "/admin/manage_role?id=#{user.id}&role=1"): ''
      "#{a} #{b}"
    when 1
      current_user.role > 0 || current_user.id == user.id ? link_to('Remove Moder Rights', "/admin/manage_role?id=#{user.id}&role=0") : ''
    when 2
      current_user.id == user.id ? link_to('Remove Admin Rights', "/admin/manage_role?id=#{user.id}&role=1") : ''
    end
  end
end
