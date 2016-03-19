package com.google.android.apps.hangouts.phone;

import eyv;
import ezi;

public class ConversationIntentWhitelistActivity
  extends ConversationIntentSecureActivity
{
  protected boolean g()
  {
    String str = getCallingPackage();
    if (str == null)
    {
      ezi.e("Babel_ConvIntSecureAct", "must use startActivityForResult", new Object[0]);
      return false;
    }
    if (!eyv.a(this, str))
    {
      ezi.e("Babel_ConvIntSecureAct", "Bad signature", new Object[0]);
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ConversationIntentWhitelistActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */