require 'calabash-android/abase'

class LoginPage < Calabash::ABase

  def signinbtn
    "android.widget.Button marked:'Sign In'"
  end

  def bgrimage 
    "android.widget.ImageView id:'home'"
  end

  def title
    "android.widget.TextView marked:'On Dream'"
  end

  def logins
    query("editText id:'edt_Email'",:setText => 
      "hieudh_55@vnu.edu.vn")
    query("editText id:'edt_Passwd'",:setText => 
      "123456")

    touch(signinbtn)
  end

  def test_views_in_login_page
    wait_for_elements_exist([bgrimage])
  end
end