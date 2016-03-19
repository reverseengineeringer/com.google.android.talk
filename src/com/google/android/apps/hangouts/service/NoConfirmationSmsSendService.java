package com.google.android.apps.hangouts.service;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import axm;
import axt;
import axu;
import bfd;
import bfw;
import bfz;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import dtt;
import dtw;
import dvd;
import dvi;
import dwb;
import ebi;
import efk;
import ejg;
import enn;
import ezi;
import hbs;
import ihb;
import ilh;
import imx;

public class NoConfirmationSmsSendService
  extends IntentService
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.q;
  }
  
  public NoConfirmationSmsSendService()
  {
    super(NoConfirmationSmsSendService.class.getName());
    setIntentRedelivery(true);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    boolean bool = true;
    String str1 = paramIntent.getAction();
    if (!"android.intent.action.RESPOND_VIA_MESSAGE".equals(str1)) {
      if (a)
      {
        paramIntent = String.valueOf(str1);
        if (paramIntent.length() == 0) {
          break label42;
        }
        "NoConfirmationSmsSendService onHandleIntent wrong action: ".concat(paramIntent);
      }
    }
    label42:
    Object localObject2;
    String str2;
    String str3;
    Object localObject1;
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            new String("NoConfirmationSmsSendService onHandleIntent wrong action: ");
            return;
            localObject2 = paramIntent.getExtras();
          } while (localObject2 == null);
          str1 = ((Bundle)localObject2).getString("android.intent.extra.TEXT");
          str2 = ((Bundle)localObject2).getString("android.intent.extra.SUBJECT");
          str3 = enn.b(paramIntent.getData());
        } while (TextUtils.isEmpty(str3));
        localObject1 = dvd.d;
      } while (!dvi.a());
      localObject1 = dvd.l();
      if (((Bundle)localObject2).getBoolean("showUI", false))
      {
        paramIntent.setClassName(this, "com.google.android.talk.SigningInActivity");
        paramIntent.addFlags(268435456);
        paramIntent.putExtra("account_id", ((bfd)localObject1).g());
        startActivity(paramIntent);
        return;
      }
    } while (TextUtils.isEmpty(str1));
    if (!((bfd)localObject1).I())
    {
      paramIntent = enn.a(new bfz(this, ((bfd)localObject1).g()), null, str3);
      ((efk)ilh.a(getApplicationContext(), efk.class)).a((bfd)localObject1, paramIntent, str1, null, 0, null, 0, 0, null, str2, false, null, 0);
      return;
    }
    if (str3.split(";").length == 1) {}
    for (;;)
    {
      hbs.a("Expected condition to be true", bool);
      paramIntent = str3.split(";")[0];
      localObject2 = dtw.a(paramIntent);
      ((dtw)localObject2).a(dtt.b(paramIntent));
      paramIntent = axt.newBuilder().a((dtw)localObject2);
      paramIntent = ihb.newBuilder().a(paramIntent.a()).a();
      localObject2 = ebi.b();
      RealTimeChatService.a(new ejg(this, getApplicationContext(), ((ebi)localObject2).a(), str2, str1));
      RealTimeChatService.a((ebi)localObject2, new dwb(getApplicationContext()).a(((bfd)localObject1).g()).a(paramIntent).a(bfw.c).b(2).a());
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.service.NoConfirmationSmsSendService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */