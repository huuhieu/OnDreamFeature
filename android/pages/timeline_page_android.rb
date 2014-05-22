require 'calabash-android/abase'

class TimeLinePage < Calabash::ABase

  def ndreambtn
    "com.android.internal.view.menu.ActionMenuItemView marked:'New Dream'"  
  end

  def cancelbtn
    "button marked:'btnCancel'"
  end

  def home
    "android.widget.ImageView marked:'home'"
  end

  def dreamdescript
    "I dreamed a dream"
  end

  def newdream
    touch(ndreambtn)
  end

  def dreamadd
    query("editText id:'tv_content'",:setText => dreamdescript)
    touch("button id:'btnSubmit'")
  end

  def dreamintimeline
    query("TextView marked:'dreamdescript'")
    sleep(5)
  end

  def test_view
    sleep(5)
    wait_for_elements_exist([home])
  end

  def test_cancelbtn
    wait_for_elements_exist([cancelbtn])
  end

end