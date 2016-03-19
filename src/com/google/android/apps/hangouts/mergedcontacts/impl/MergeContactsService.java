package com.google.android.apps.hangouts.mergedcontacts.impl;

import android.app.IntentService;
import android.content.Intent;
import ctt;
import ezi;

public class MergeContactsService
  extends IntentService
{
  private ctt a;
  
  public MergeContactsService()
  {
    super("MergeContactsService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    if (i == -1)
    {
      ezi.d("Babel_db", "Invalid account id passed to MergeContactsService", new Object[0]);
      return;
    }
    boolean bool = paramIntent.getBooleanExtra("force_merge", false);
    a = new ctt(getApplicationContext(), getContentResolver(), i, bool);
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.mergedcontacts.impl.MergeContactsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */