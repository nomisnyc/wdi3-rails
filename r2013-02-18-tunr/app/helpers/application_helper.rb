module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end
  def intellinav
    links = ""
    if @auth.present?
      if @auth.is_admin
        links += "<li>#{link_to('Show Users', users_path)}</li>"
      end

    links +="<li>#{link_to('Edit Account', edit_users_path)}</li>"
    links +="<li>#{link_to('Logout ' + @auth.name, login_path, :method => :delete, :confirm => "Are you sure>")} </li>"
    links +="<li>#{@auth.balance}</li>"

    else
    "<li>#{link_to('Create Account', new_user_path)}</li>" +
    "<li>#{link_to('Login', login_path)}</li>"
    end
  end
end