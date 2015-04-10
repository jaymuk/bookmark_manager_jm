module SessionHelpers

  def sign_in(email, password)
    visit '/sessions/new'
    fill_in 'email', with: email
    fill_in 'password', with: password
    click_button 'Sign in'
  end

  def forgot_password(email)
    visit '/forgot/password'
    fill_in 'email', with: email
  end
end