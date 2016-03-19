package com.google.android.apps.hangouts.phone;

import android.content.Intent;
import android.os.Bundle;
import au;
import ba;
import bg;
import ccz;
import ilh;

public final class LatencyBugActivity
  extends ba
{
  private ccz g()
  {
    return (ccz)ilh.b(this, ccz.class);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = C_().a();
    getIntent().getStringExtra("latency_message");
    if (g() != null) {
      g().a().a(paramBundle, "latencybug");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.LatencyBugActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */