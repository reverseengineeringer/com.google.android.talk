package com.google.android.apps.hangouts.wearable;

import android.content.Intent;
import android.net.Uri;
import bcm;
import bfd;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import eat;
import efk;
import ezi;
import fev;
import fey;
import ffe;
import ffi;
import fkg;
import grk;
import grl;
import grm;
import grp;
import gru;
import gsc;
import haw;
import hax;
import hba;
import ilh;
import java.util.Iterator;

public class WearableService
  extends gsc
{
  private efk e;
  private hba f;
  private bcm g;
  private ffe h;
  private eat i;
  
  public void a(grl paramgrl)
  {
    paramgrl = paramgrl.iterator();
    while (paramgrl.hasNext())
    {
      grm localgrm = ((grk)paramgrl.next()).W_();
      if ("/hangouts/api_level/".equals(localgrm.U_().getPath())) {
        h.a(ffe.a(localgrm));
      }
    }
  }
  
  public void a(gru paramgru)
  {
    int j = -1;
    String str1 = paramgru.a();
    Object localObject;
    if (ezi.a("Babel_WearableService", 2))
    {
      localObject = String.valueOf(str1);
      if (((String)localObject).length() == 0) {
        break label118;
      }
      "WearableService.onMessageReceived: ".concat((String)localObject);
    }
    for (;;)
    {
      localObject = h.f();
      if (!"/hangouts/rpc/send_message/".equals(str1)) {
        break;
      }
      paramgru = grp.a(paramgru.b());
      localObject = ffe.b((String)localObject);
      e.a((bfd)localObject, paramgru.f("7"), paramgru.f("android.intent.extra.TEXT"), null, 0, null, 0, 0, null, null, paramgru.b("17"), null, 0);
      return;
      label118:
      new String("WearableService.onMessageReceived: ");
    }
    if ("/hangouts/rpc/switch_account/".equals(str1))
    {
      paramgru = grp.a(paramgru.b()).f("1");
      h.a(paramgru);
      g.a(new fev());
      return;
    }
    if ("/hangouts/rpc/update_watermark/".equals(str1))
    {
      paramgru = grp.a(paramgru.b());
      i.a(ffe.b((String)localObject), paramgru.f("7"), paramgru.e("26"));
      return;
    }
    if ("/hangouts/rpc/open_home/".equals(str1))
    {
      paramgru = BabelGatewayActivity.a(this, ffe.b((String)localObject).g());
      paramgru.addFlags(268435456);
      startActivity(paramgru);
      return;
    }
    if ("/hangouts/rpc/open_conversation/".equals(str1))
    {
      paramgru = grp.a(paramgru.b()).f("7");
      paramgru = BabelGatewayActivity.a(this, ffe.b((String)localObject).g(), paramgru, null);
      paramgru.addFlags(268435456);
      startActivity(paramgru);
      return;
    }
    long l;
    if ("/hangouts/rpc/resend_message/".equals(str1))
    {
      paramgru = grp.a(paramgru.b());
      str1 = paramgru.f("7");
      l = paramgru.e("12");
      i.a(ffe.b((String)localObject), new Long[] { Long.valueOf(l) }, str1);
      return;
    }
    if ("/hangouts/rpc/delete_message/".equals(str1))
    {
      l = grp.a(paramgru.b()).e("12");
      i.a(ffe.b((String)localObject), new long[] { l });
      return;
    }
    int k;
    if ("/hangouts/rpc/request_more_messages/".equals(str1))
    {
      str1 = paramgru.c();
      paramgru = grp.a(paramgru.b());
      String str2 = paramgru.f("7");
      k = paramgru.c("19");
      g.a(new fey(str1, str2, k));
      paramgru = ffe.b((String)localObject);
      if (paramgru != null) {
        j = paramgru.g();
      }
      f.a(j).a(2238).d();
      return;
    }
    if ("/hangouts/rpc/log_impression/".equals(str1))
    {
      paramgru = grp.a(paramgru.b());
      k = paramgru.c("13");
      localObject = ffe.b((String)localObject);
      if (localObject != null) {
        j = ((bfd)localObject).g();
      }
      localObject = f.a(j);
      switch (k)
      {
      default: 
        return;
      case 2230: 
      case 2231: 
        ((haw)localObject).a(k).d();
        return;
      case 2232: 
        str1 = paramgru.f("20");
        j = (int)paramgru.e("29");
        ((haw)localObject).a(k).a(str1).a(Integer.valueOf(j)).d();
        return;
      }
      paramgru = paramgru.f("20");
      ((haw)localObject).a(k).a(paramgru).d();
      return;
    }
    g.a(new fev());
  }
  
  public void onCreate()
  {
    super.onCreate();
    ilh localilh = ilh.b(getApplicationContext());
    h = ((ffi)localilh.a(ffi.class)).a(getApplicationContext());
    g = ((bcm)localilh.a(bcm.class));
    e = ((efk)localilh.a(efk.class));
    f = ((hba)localilh.a(hba.class));
    i = ((eat)localilh.a(eat.class));
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    h.e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.wearable.WearableService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */