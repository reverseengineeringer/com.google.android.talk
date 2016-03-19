package com.google.android.apps.hangouts.phone;

import aal;
import android.content.Intent;
import android.text.TextUtils;
import exk;
import ezi;
import imi;

public class ShowDialerActivity
  extends imi
{
  public void onResume()
  {
    int j = 1;
    super.onResume();
    int i;
    Object localObject;
    String str;
    if (!new exk(this, "com.google.android.apps.hangouts.phone.notify_external_interruption", "com.google.android.apps.hangouts.phone.block_external_interruption").a())
    {
      i = 1;
      if (i != 0)
      {
        localObject = getIntent();
        str = ((Intent)localObject).getAction();
        if (str != null) {
          break label140;
        }
        ezi.d("Babel", "Received null action when launching Dialer Activity", new Object[0]);
        i = j;
      }
    }
    for (;;)
    {
      if (i != 0) {
        str = "com.google.android.apps.hangouts.phone.recentcalls";
      }
      Intent localIntent = aal.d(null);
      if (TextUtils.equals(str, "com.google.android.apps.hangouts.phone.dialpad"))
      {
        localObject = ((Intent)localObject).getStringExtra("number_to_call");
        if (!TextUtils.isEmpty((CharSequence)localObject)) {
          localIntent.putExtra("number_to_call", (String)localObject);
        }
      }
      localIntent.setAction(str);
      localIntent.putExtra("use_dialer_activity", false);
      startActivity(localIntent);
      finish();
      return;
      i = 0;
      break;
      label140:
      if (str.equals("android.intent.action.MAIN"))
      {
        ezi.a("Babel", "Received ACTION_MAIN when launching Dialer Activity", new Object[0]);
        i = j;
      }
      else
      {
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ShowDialerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */