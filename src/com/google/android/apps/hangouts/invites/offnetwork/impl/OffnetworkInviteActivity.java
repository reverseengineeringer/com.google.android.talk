package com.google.android.apps.hangouts.invites.offnetwork.impl;

import aal;
import aen;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Telephony.Sms;
import android.text.TextUtils;
import bfd;
import cbr;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import cpy;
import dvd;
import hpu;
import hqo;
import java.util.Iterator;
import java.util.List;

public class OffnetworkInviteActivity
  extends cbr
{
  private final hpu n = new hqo(this, B).a(A);
  
  private static ComponentName a(Context paramContext)
  {
    String str = Telephony.Sms.getDefaultSmsPackage(paramContext);
    if (str != null)
    {
      paramContext = paramContext.getPackageManager().queryIntentActivities(new Intent("android.intent.action.SENDTO", Uri.fromParts("smsto", "", null)), 0).iterator();
      while (paramContext.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)paramContext.next();
        if (str.equals(activityInfo.packageName)) {
          return new ComponentName(str, activityInfo.name);
        }
      }
    }
    return null;
  }
  
  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    if ((Build.VERSION.SDK_INT >= 19) && (Telephony.Sms.getDefaultSmsPackage(paramContext) != null))
    {
      paramContext = a(paramContext);
      if (paramContext != null) {
        localIntent.setComponent(paramContext);
      }
    }
    paramContext = String.valueOf(paramString2);
    if (paramContext.length() != 0) {}
    for (paramContext = "sms:".concat(paramContext);; paramContext = new String("sms:"))
    {
      localIntent.setData(Uri.parse(paramContext));
      localIntent.putExtra("sms_body", paramString1);
      localIntent.putExtra("android.intent.extra.TEXT", paramString1);
      return localIntent;
    }
  }
  
  public static Intent a(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3)
  {
    Intent localIntent = new Intent(aal.oJ, OffnetworkInviteActivity.class);
    localIntent.putExtra("conversation_id", paramString1);
    localIntent.putExtra("phone_number", paramString2);
    localIntent.putExtra("account_to_use_in_invite", paramInt1);
    localIntent.putExtra("account_to_deliver_sms", paramInt2);
    if (!TextUtils.isEmpty(paramString3)) {
      localIntent.putExtra("offnetwork_invite_url", paramString3);
    }
    return localIntent;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    bfd localbfd1 = dvd.e(n.a());
    String str1 = getIntent().getStringExtra("conversation_id");
    String str3 = getIntent().getStringExtra("phone_number");
    Object localObject = dvd.e(getIntent().getIntExtra("account_to_use_in_invite", -1));
    paramBundle = (Bundle)localObject;
    if (localObject == null) {
      paramBundle = localbfd1;
    }
    int i = getIntent().getIntExtra("account_to_deliver_sms", -1);
    bfd localbfd2 = dvd.e(i);
    String str2 = getIntent().getStringExtra("offnetwork_invite_url");
    localObject = str2;
    if (TextUtils.isEmpty(str2)) {
      localObject = cpy.a(paramBundle);
    }
    localObject = getResources().getString(aen.jf, new Object[] { localObject });
    if (localbfd2 == null)
    {
      aal.a(paramBundle, 1896);
      paramBundle = a(this, (String)localObject, str3);
      startActivity(paramBundle);
      finish();
      return;
    }
    if (localbfd2.equals(localbfd1)) {
      aal.a(paramBundle, 1898);
    }
    for (paramBundle = str1;; paramBundle = null)
    {
      paramBundle = BabelGatewayActivity.a(this, i, paramBundle, str3, (String)localObject);
      break;
      aal.a(paramBundle, 1897);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.invites.offnetwork.impl.OffnetworkInviteActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */