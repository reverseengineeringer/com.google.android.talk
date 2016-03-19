package com.google.android.apps.hangouts.settings;

import aal;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import ekv;
import ekw;
import hpu;
import hqo;
import ijc;
import iji;
import ild;
import ilh;
import ilv;
import iog;

public class NotificationSettingsActivity
  extends ilv
{
  public NotificationSettingsActivity()
  {
    new hqo(this, B).a(A).e();
    new ild(this, B);
    new ekv(this, this, B);
  }
  
  public static ijc a(Context paramContext, iog paramiog, iji paramiji, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3)
  {
    String str = paramContext.getString(paramInt1);
    hpu localhpu = (hpu)ilh.a(paramContext, hpu.class);
    paramInt1 = localhpu.a();
    paramContext = new Intent(paramContext, NotificationSettingsActivity.class);
    paramContext.putExtra("account_id", paramInt1);
    paramContext.putExtra("title_key", str);
    paramContext.putExtra("sound_key", paramString2);
    paramContext.putExtra("sound_type", paramInt2);
    paramContext.putExtra("vibrate_key", paramString3);
    paramContext.putExtra("notifications_key", paramString1);
    paramContext = paramiji.a(str, null, paramContext);
    paramiog.a(new ekw(paramContext, localhpu.c(), paramString1, paramString3, paramString2));
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fz);
    setTitle(getIntent().getStringExtra("title_key"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.settings.NotificationSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */