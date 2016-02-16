module Macros
  module Session
    def sign_in(user)
      visit login_path
      page.find('#email').set(user.email)
      page.find('#password').set(user.password)
      find('input[type="submit"]').click
    end


    def sign_out
      page.find('a', :text => 'Logout').click
    end
  end
end

