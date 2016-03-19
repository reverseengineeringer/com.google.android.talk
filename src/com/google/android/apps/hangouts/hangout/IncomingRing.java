package com.google.android.apps.hangouts.hangout;

import aal;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.TextUtils;
import bem;
import beo;
import bet;
import bez;
import bfd;
import bfq;
import bgd;
import bhs;
import bhv;
import bip;
import cgs;
import chk;
import chl;
import chm;
import chn;
import cjv;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import cy;
import cyh;
import cyx;
import czb;
import dl;
import dtt;
import dvd;
import dvv;
import eaw;
import ehd;
import ehh;
import ehi;
import ehm;
import eit;
import ekq;
import exs;
import eyh;
import eyr;
import eys;
import ezi;
import ezm;
import hbs;
import ilh;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kkp;

public final class IncomingRing
  implements bhv, ehh, ehm
{
  public static final long[] a = { 1000L, 1000L, 1000L, 1000L, 1000L, 1000L };
  public static IncomingRing b;
  private static String h;
  private final ArrayList<chn> A = new ArrayList();
  private final Handler B = new Handler();
  private final String C;
  private final cyx D;
  private Bitmap E;
  private final Runnable F = new chk(this);
  public final bfd c;
  public Vibrator d;
  public final eyh e = new eyh("Babel_IncomingRing");
  public boolean f;
  public boolean g;
  private final eaw i;
  private final cgs j;
  private final String k;
  private final long l;
  private final long m;
  private final long n;
  private String o;
  private final String p;
  private String q;
  private final NotificationManager r;
  private cy s;
  private List<czb> t;
  private final String[] u = new String[3];
  private int v;
  private int w;
  private final List<String> x = new ArrayList(4);
  private String y;
  private int z;
  
  private IncomingRing(eaw parameaw, long paramLong, cgs paramcgs, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    i = parameaw;
    j = paramcgs;
    k = paramString1;
    p = paramString2;
    C = paramString3;
    l = paramLong;
    n = SystemClock.elapsedRealtime();
    m = System.currentTimeMillis();
    o = paramString4;
    boolean bool;
    if (j.l() == 2)
    {
      bool = true;
      g = bool;
      c = dvd.a(j.a(), null);
      r = ((NotificationManager)i.getSystemService("notification"));
      if (!TextUtils.isEmpty(paramString5)) {
        break label211;
      }
    }
    label211:
    for (parameaw = (eaw)localObject;; parameaw = aal.a(paramString3, paramString5, false, null, null, 0))
    {
      D = parameaw;
      ilh.a(aal.oJ, cjv.class);
      return;
      bool = false;
      break;
    }
  }
  
  public static void a(Intent paramIntent)
  {
    ezi.a("Babel_IncomingRing", "stopRinging", new Object[0]);
    if ((b != null) && (paramIntent.getBooleanExtra("from_notification", false))) {
      b.t();
    }
  }
  
  private static void a(bfd parambfd, IncomingRing paramIncomingRing)
  {
    ezi.a("Babel_IncomingRing", "Set active ring %s, old ring %s", new Object[] { paramIncomingRing, b });
    b = paramIncomingRing;
    ((cyh)ilh.a(aal.oJ, cyh.class)).a(parambfd.g());
  }
  
  static void a(eaw parameaw, long paramLong, cgs paramcgs, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    ezi.a("Babel_IncomingRing", "startRing", new Object[0]);
    parameaw = new IncomingRing(parameaw, paramLong, paramcgs, paramString1, paramString2, paramString3, paramString4, paramString5);
    ezi.a("Babel_IncomingRing", "start", new Object[0]);
    if (p != null) {
      ehi.a(c).a(new bez(p, parameaw));
    }
    int i1;
    if (parameaw.g())
    {
      ehd.a(C, true, c, parameaw);
      i.h();
      paramcgs = i.getResources();
      paramString2 = aal.oJ;
      i1 = eyr.a(c.g(), 3, 3, j.e());
      paramString1 = aal.a(parameaw.d(), null, true, 62, parameaw.q(), SystemClock.elapsedRealtime());
      paramString1.putExtra("from_notification", true);
      paramString1 = PendingIntent.getActivity(paramString2, i1, paramString1, 134217728);
      paramString3 = h;
      paramString4 = new Intent("com.google.android.apps.hangouts.hangout.ignore").setClass(aal.oJ, IncomingRing.NotificationActionReceiver.class);
      paramString4.putExtra("hangout_incoming_notification_tag", paramString3);
      paramString3 = PendingIntent.getBroadcast(paramString2, i1 + 1, paramString4, 134217728);
      paramString2 = PendingIntent.getActivity(paramString2, i1 + 2, aal.j(), 134217728);
      paramString4 = new cy(i).a(System.currentTimeMillis());
      if ((!g) && (!parameaw.g())) {
        break label507;
      }
      i1 = R.drawable.cn;
      label286:
      s = paramString4.a(i1).c(4).a(false).d(2).a(paramString2).a(R.drawable.aH, paramcgs.getString(StressMode.eB), paramString3).a(R.drawable.aK, paramcgs.getString(StressMode.eA), paramString1).a(new dl().c());
      if (((ekq)ilh.a(aal.oJ, ekq.class)).d(c.g())) {
        s.a(a);
      }
      s.c(paramString2);
      parameaw.r();
      f = false;
      ezi.a("Babel_IncomingRing", "playRingtone", new Object[0]);
      if (((AudioManager)i.getSystemService("audio")).getRingerMode() != 0) {
        break label515;
      }
    }
    label507:
    label515:
    for (boolean bool = true;; bool = false)
    {
      new chl(parameaw, bool).a(new Void[0]);
      a(c, parameaw);
      B.postDelayed(F, 35000L);
      return;
      ehd.a(czb.a(k), c, parameaw);
      break;
      i1 = R.drawable.cj;
      break label286;
    }
  }
  
  static void a(String paramString)
  {
    h = paramString;
  }
  
  static void b(String paramString)
  {
    paramString = String.valueOf(paramString);
    String str = String.valueOf(":hangouts_ring_notification");
    if (str.length() != 0) {}
    for (paramString = paramString.concat(str);; paramString = new String(paramString))
    {
      h = paramString;
      return;
    }
  }
  
  static void o()
  {
    hbs.a("Expected null", b);
    ((NotificationManager)aal.oJ.getSystemService("notification")).cancel(h, 3);
  }
  
  private boolean p()
  {
    return (TextUtils.isEmpty(q)) && (TextUtils.isEmpty(o)) && (!g());
  }
  
  private int q()
  {
    if (g()) {
      return 1;
    }
    return 2;
  }
  
  private void r()
  {
    Object localObject2 = i.getResources();
    Object localObject1;
    int i1;
    if (!TextUtils.isEmpty(q))
    {
      localObject1 = q;
      s.a((CharSequence)localObject1).c((CharSequence)localObject1);
      localObject2 = s;
      localObject1 = i.getResources();
      if (!g()) {
        break label212;
      }
      i1 = StressMode.sQ;
    }
    for (;;)
    {
      localObject1 = ((Resources)localObject1).getString(i1);
      ((cy)localObject2).b((CharSequence)localObject1);
      localObject1 = A.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((chn)((Iterator)localObject1).next()).b();
      }
      if (TextUtils.isEmpty(o))
      {
        if (g())
        {
          localObject1 = ezm.p(C);
          break;
        }
        if (p())
        {
          localObject1 = ((Resources)localObject2).getString(StressMode.cx);
          break;
        }
      }
      localObject1 = new StringBuilder(o);
      localObject2 = ((Resources)localObject2).getString(StressMode.bV);
      i1 = 0;
      while (i1 < w)
      {
        ((StringBuilder)localObject1).append((String)localObject2).append(u[i1]);
        i1 += 1;
      }
      localObject1 = ((StringBuilder)localObject1).toString();
      break;
      label212:
      if ((!TextUtils.isEmpty(q)) && (!TextUtils.isEmpty(o)))
      {
        if (g) {}
        for (i1 = StressMode.ta;; i1 = StressMode.eh)
        {
          localObject1 = ((Resources)localObject1).getString(i1, new Object[] { o });
          break;
        }
      }
      if (g) {
        i1 = StressMode.sZ;
      } else {
        i1 = StressMode.dv;
      }
    }
    s();
  }
  
  private void s()
  {
    Notification localNotification = s.g();
    flags |= 0x4;
    r.notify(h, 3, localNotification);
  }
  
  private void t()
  {
    ezi.a("Babel_IncomingRing", "hangoutAccepted", new Object[0]);
    if (!TextUtils.isEmpty(p)) {
      ((cyh)ilh.a(aal.oJ, cyh.class)).b(c.g(), p);
    }
    ilh.a(aal.oJ, cjv.class);
    a(1, 0);
  }
  
  String a()
  {
    if ((g()) && (o != null)) {
      return ezm.p(C);
    }
    return null;
  }
  
  String a(Resources paramResources)
  {
    if (g())
    {
      i1 = StressMode.ds;
      if (o == null) {}
      for (String str = ezm.p(C);; str = o) {
        return paramResources.getString(i1, new Object[] { str });
      }
    }
    if (!TextUtils.isEmpty(q))
    {
      if (o == null)
      {
        if (g) {}
        for (i1 = StressMode.sV;; i1 = StressMode.dq) {
          return paramResources.getString(i1, new Object[] { q });
        }
      }
      if (g) {}
      for (i1 = StressMode.sU;; i1 = StressMode.dp) {
        return paramResources.getString(i1, new Object[] { q, o });
      }
    }
    if (o == null)
    {
      if (g) {}
      for (i1 = StressMode.sW;; i1 = StressMode.dr) {
        return paramResources.getString(i1);
      }
    }
    if (t == null)
    {
      i1 = 0;
      if (i1 != 0) {
        break label237;
      }
      if (!g) {
        break label230;
      }
    }
    label230:
    for (int i1 = StressMode.sX;; i1 = StressMode.dt)
    {
      return paramResources.getString(i1, new Object[] { o });
      i1 = t.size();
      break;
    }
    label237:
    int i2;
    if (w < i1)
    {
      if (g) {}
      for (i2 = aal.hC;; i2 = aal.hn) {
        return paramResources.getQuantityString(i2, i1, new Object[] { Integer.valueOf(i1), o });
      }
    }
    if (i1 > 2)
    {
      if (g) {}
      for (i2 = aal.hB;; i2 = aal.hm) {
        return paramResources.getQuantityString(i2, i1 - 1, new Object[] { Integer.valueOf(i1 - 1), o, u[0] });
      }
    }
    if (i1 == 1)
    {
      if (g) {}
      for (i1 = StressMode.sT;; i1 = StressMode.do) {
        return paramResources.getString(i1, new Object[] { o, u[0] });
      }
    }
    if (g) {}
    for (i1 = StressMode.sY;; i1 = StressMode.du) {
      return paramResources.getString(i1, new Object[] { o, u[0], u[1] });
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    boolean bool1;
    if (paramInt1 == 1)
    {
      bool1 = true;
      ezi.a("Babel_IncomingRing", "stop", new Object[0]);
      aal.w();
      if (!f) {
        break label86;
      }
      if (b != this) {
        break label64;
      }
      localObject1 = "same";
    }
    for (;;)
    {
      ezi.d("Babel_IncomingRing", "Stop called twice. ActiveRing %s", new Object[] { localObject1 });
      return;
      bool1 = false;
      break;
      label64:
      if (b == null) {
        localObject1 = "null";
      } else {
        localObject1 = "different";
      }
    }
    label86:
    f = true;
    ezi.a("Babel_IncomingRing", "sendRingTermination", new Object[0]);
    hbs.a(paramInt1, 0, 3);
    hbs.a(paramInt2, 0, 9);
    Object localObject1 = new kkp();
    a = Long.valueOf(l);
    b = d().g();
    c = Long.valueOf(m * 1000L);
    d = Long.valueOf(SystemClock.elapsedRealtime() - n);
    e = Integer.valueOf(paramInt2);
    f = Integer.valueOf(paramInt1);
    RealTimeChatService.a(c, (kkp)localObject1);
    boolean bool2;
    label301:
    Object localObject2;
    label331:
    Object localObject3;
    if ((g()) || (p()))
    {
      if (!bool1) {
        break label603;
      }
      paramInt1 = 0;
      localObject1 = new dvv(2, C, null, 0, null, null, null, 62);
      RealTimeChatService.a(c.g(), paramInt1, (dvv)localObject1);
      if ((!bool1) && (paramInt2 != 0))
      {
        ezi.a("Babel_IncomingRing", "notifyMissedPstnCall", new Object[0]);
        if ((!g()) && (!p())) {
          break label608;
        }
        bool2 = true;
        hbs.a("Expected condition to be true", bool2);
        localObject2 = i.getResources();
        if (E == null) {
          break label614;
        }
        localObject1 = E;
        paramInt1 = eyr.a(c.g(), 1, 2, null);
        localObject3 = PendingIntent.getActivity(aal.oJ, paramInt1, aal.f(c), 134217728);
        localObject2 = new cy(i).a(System.currentTimeMillis()).a(true).c(((Resources)localObject2).getString(StressMode.sR)).a(R.drawable.cl).c(4).d(2).a((Bitmap)localObject1).a((PendingIntent)localObject3).a(((Resources)localObject2).getString(StressMode.sR));
        if (!TextUtils.isEmpty(o)) {
          break label622;
        }
      }
    }
    label603:
    label608:
    label614:
    label622:
    for (localObject1 = ezm.p(C);; localObject1 = o)
    {
      localObject1 = ((cy)localObject2).b((CharSequence)localObject1).g();
      localObject2 = r;
      localObject3 = String.valueOf(i.getPackageName());
      paramInt1 = c.g();
      ((NotificationManager)localObject2).notify(String.valueOf(localObject3).length() + 37 + (String)localObject3 + ":missed_pstn_notification:" + paramInt1, 2, (Notification)localObject1);
      E = null;
      r.cancel(h, 3);
      B.removeCallbacks(F);
      a(bool1);
      localObject1 = A.iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((chn)((Iterator)localObject1).next()).a();
      }
      paramInt1 = 2;
      break;
      bool2 = false;
      break label301;
      localObject1 = bfq.l();
      break label331;
    }
    a(c, null);
    i.d();
  }
  
  public void a(bet parambet)
  {
    ezi.d("Babel_IncomingRing", "Get contact info failed for %s", new Object[] { parambet.c() });
  }
  
  public void a(bez parambez)
  {
    ezi.d("Babel_IncomingRing", "Conversation load failed for id=%s", new Object[] { parambez.c() });
  }
  
  public void a(bgd parambgd)
  {
    ezi.a("Babel_IncomingRing", "setConversationInfo", new Object[0]);
    czb localczb1 = c.b();
    t = new ArrayList(h.size());
    Iterator localIterator = h.iterator();
    while (localIterator.hasNext())
    {
      czb localczb2 = nextb;
      if ((!localczb1.a(localczb2)) && (!k.equals(a)))
      {
        if (v < 3)
        {
          ehd.a(localczb2, c, this);
          v += 1;
        }
        t.add(localczb2);
      }
    }
    q = d;
    r();
  }
  
  void a(chn paramchn)
  {
    A.add(paramchn);
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    hbs.a("Expected null", paramexs);
    if (!paramBoolean1) {}
    do
    {
      return;
      parameys = parameys.d();
      s.a(parameys);
      s();
    } while (!g());
    E = parameys;
  }
  
  public void a(String paramString1, String paramString2, int paramInt, bip parambip, bfd parambfd)
  {
    a(paramString1, paramString2, parambip, null, parambfd);
  }
  
  public void a(String paramString1, String paramString2, bet parambet, String paramString3, bfd parambfd)
  {
    label55:
    int i1;
    if (g())
    {
      bool = C.equals(dd);
      if (!bool) {
        break label239;
      }
      if ((paramString1 != null) && (!TextUtils.isEmpty(paramString1))) {
        o = paramString1;
      }
      x.add(0, paramString2);
      if (x.size() != z)
      {
        i1 = v;
        if ((x.size() <= 1) || (x.size() == i1 + 1))
        {
          paramString1 = bem.a(x, 0, Collections.emptyList(), c.a(), bfq.a(), p, this, null, y, false, beo.a, true);
          if (paramString1 != null) {
            if ((x.size() <= 1) && (Build.VERSION.SDK_INT <= 20)) {
              break label286;
            }
          }
        }
      }
    }
    label239:
    label286:
    for (boolean bool = true;; bool = false)
    {
      paramString1.a(bool);
      y = paramString1.c();
      ((eit)ilh.a(aal.oJ, eit.class)).a(paramString1);
      z = x.size();
      r();
      return;
      bool = k.equals(da);
      break;
      if (w >= 3) {
        break label55;
      }
      paramString1 = u;
      i1 = w;
      w = (i1 + 1);
      paramString1[i1] = paramString3;
      x.add(paramString2);
      break label55;
    }
  }
  
  void a(boolean paramBoolean)
  {
    ezi.a("Babel_IncomingRing", "silence", new Object[0]);
    e.a(paramBoolean);
    if (d != null)
    {
      ezi.a("Babel_IncomingRing", "cancel vibration", new Object[0]);
      d.cancel();
    }
  }
  
  public bfd b()
  {
    return c;
  }
  
  String b(Resources paramResources)
  {
    return paramResources.getString(StressMode.dn, new Object[] { c.a() });
  }
  
  void b(chn paramchn)
  {
    A.remove(paramchn);
  }
  
  List<czb> c()
  {
    return t;
  }
  
  public cgs d()
  {
    return j;
  }
  
  String e()
  {
    return k;
  }
  
  String f()
  {
    return o;
  }
  
  public boolean g()
  {
    return C != null;
  }
  
  public boolean h()
  {
    return g;
  }
  
  String i()
  {
    hbs.a("Expected condition to be true", g());
    return C;
  }
  
  public String j()
  {
    localObject4 = null;
    if (p == null)
    {
      localObject1 = null;
      label11:
      return (String)localObject1;
    }
    Object localObject1 = p;
    localObject5 = EsProvider.a(EsProvider.h, c.g());
    try
    {
      localObject5 = aal.oJ.getContentResolver().query((Uri)localObject5, chm.a, "conversation_id=?", new String[] { localObject1 }, null);
      if (localObject5 == null) {}
    }
    finally
    {
      try
      {
        if (((Cursor)localObject5).moveToFirst())
        {
          localObject4 = ((Cursor)localObject5).getString(0);
          localObject1 = localObject4;
          if (localObject5 == null) {
            break label11;
          }
          ((Cursor)localObject5).close();
          return (String)localObject4;
        }
        if (localObject5 != null) {
          ((Cursor)localObject5).close();
        }
        return null;
      }
      finally
      {
        localObject4 = localObject5;
      }
      localObject2 = finally;
    }
    if (localObject4 != null) {
      ((Cursor)localObject4).close();
    }
    throw ((Throwable)localObject2);
  }
  
  public void k()
  {
    t();
    Intent localIntent = aal.a(d(), D, true, 62, q(), SystemClock.elapsedRealtime());
    aal.oJ.startActivity(localIntent.addFlags(268435456));
  }
  
  public void l()
  {
    ezi.a("Babel_IncomingRing", "ignoreHangout", new Object[0]);
    if (!TextUtils.isEmpty(p)) {
      ((cyh)ilh.a(aal.oJ, cyh.class)).b(c.g(), p);
    }
    a(2, 0);
  }
  
  void m()
  {
    ezi.a("Babel_IncomingRing", "cancelForServer ", new Object[0]);
    a(0, 5);
  }
  
  public void n()
  {
    ezi.a("Babel_IncomingRing", "cancelForPhoneCall", new Object[0]);
    a(0, 1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.IncomingRing
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */