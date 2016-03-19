package com.google.android.apps.hangouts.wearable;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import bcm;
import bfd;
import fev;
import ffe;
import ffi;
import ilh;

public final class WearableReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ffe localffe = ((ffi)ilh.a(paramContext, ffi.class)).a(paramContext);
    String str;
    int i;
    if (localffe.d())
    {
      str = paramIntent.getAction();
      switch (str.hashCode())
      {
      default: 
        i = -1;
        label58:
        switch (i)
        {
        }
        break;
      }
    }
    do
    {
      return;
      if (!str.equals("com.google.android.apps.hangouts.intent.action.ACTION_NOTIFY_DATASET_CHANGED")) {
        break;
      }
      i = 0;
      break label58;
      paramIntent = ffe.b(paramIntent.getIntExtra("account_id", -1));
    } while ((paramIntent != null) && (!paramIntent.a().equals(localffe.f())));
    ((bcm)ilh.a(paramContext, bcm.class)).a(new fev());
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.wearable.WearableReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */