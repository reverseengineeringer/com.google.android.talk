package com.google.android.apps.hangouts.service;

import android.app.IntentService;
import android.content.Intent;
import bff;

public class ReferrerTrackingService
  extends IntentService
{
  public ReferrerTrackingService()
  {
    super("ReferrerTrackingService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    bff.a(this, paramIntent.getStringExtra("referrer"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.ReferrerTrackingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */