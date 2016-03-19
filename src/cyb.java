import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings.System;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TextAppearanceSpan;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.BabelHomeActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public abstract class cyb
{
  private static final String a = BabelHomeActivity.class.getName();
  private static final Map<String, Long> b = new hq();
  private static int c;
  private static Bitmap d;
  public static final boolean n;
  public static final Set<cyb> o;
  private boolean e;
  private boolean f;
  private boolean g;
  private List<String> h = new ArrayList();
  private List<beu> i = new LinkedList();
  private int j;
  public final Context p;
  public final int q;
  public final exn r;
  public final HashSet<String> s = new HashSet();
  public dk t;
  public cy u;
  public dl v = new dl();
  public cy w;
  public final Set<cyd> x = new HashSet();
  
  static
  {
    imx localimx = ezi.o;
    n = false;
    o = new HashSet();
  }
  
  public cyb(Context paramContext, int paramInt, exn arg3)
  {
    p = paramContext;
    q = paramInt;
    r = ???;
    synchronized (o)
    {
      a(j(), e());
      o.add(this);
      u = new cy(paramContext);
      w = new cy(paramContext);
      w.a(d());
      w.a(paramContext.getString(StressMode.q));
      w.b(paramContext.getString(StressMode.iS));
      return;
    }
  }
  
  protected static ee a(Context paramContext)
  {
    String[] arrayOfString1 = paramContext.getResources().getStringArray(aal.cH);
    String[] arrayOfString2 = new String[arrayOfString1.length + 3];
    System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, arrayOfString1.length);
    if (Build.VERSION.SDK_INT >= 19)
    {
      arrayOfString2[arrayOfString1.length] = "😃";
      arrayOfString2[(arrayOfString1.length + 1)] = "😞";
      arrayOfString2[(arrayOfString1.length + 2)] = "💜";
    }
    for (;;)
    {
      return new ef("android.intent.extra.TEXT").a(paramContext.getString(StressMode.gJ)).a(arrayOfString2).b();
      arrayOfString2[arrayOfString1.length] = ":-)";
      arrayOfString2[(arrayOfString1.length + 1)] = ":-(";
      arrayOfString2[(arrayOfString1.length + 2)] = "❤";
    }
  }
  
  private CharSequence a(String paramString1, CharSequence paramCharSequence, String paramString2, int paramInt1, int paramInt2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if (!TextUtils.isEmpty(paramString1))
    {
      localSpannableStringBuilder.append(paramString1);
      localSpannableStringBuilder.setSpan(new StyleSpan(1), 0, paramString1.length(), 33);
    }
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (localSpannableStringBuilder.length() > 0) {
        localSpannableStringBuilder.append(p.getString(paramInt2));
      }
      localSpannableStringBuilder.append(paramCharSequence);
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      if (localSpannableStringBuilder.length() > 0) {
        localSpannableStringBuilder.append(p.getString(StressMode.gQ));
      }
      localSpannableStringBuilder.append(a(paramInt1));
    }
    return localSpannableStringBuilder;
  }
  
  protected static String a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = String.valueOf(paramContext.getPackageName());
    return String.valueOf(paramContext).length() + 12 + String.valueOf(paramString).length() + paramContext + paramInt + ":" + paramString;
  }
  
  private void a(String paramString)
  {
    Object localObject = i.iterator();
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
    } while (!TextUtils.equals(paramString, ((beu)((Iterator)localObject).next()).a()));
    for (;;)
    {
      return;
      paramString = new bfz(p, q).ad(paramString);
      i.clear();
      paramString = paramString.iterator();
      while (paramString.hasNext())
      {
        localObject = (bgd)paramString.next();
        beu localbeu = beu.c(dvd.e(q), s);
        if (aal.g(c)) {
          i.add(0, localbeu);
        } else {
          i.add(localbeu);
        }
      }
    }
  }
  
  protected static void a(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (o)
    {
      Iterator localIterator = o.iterator();
      while (localIterator.hasNext())
      {
        cyb localcyb = (cyb)localIterator.next();
        if ((paramString.equals(localcyb.j())) && (localcyb.e() == paramInt)) {
          localArrayList.add(localcyb);
        }
      }
    }
    paramString = localArrayList.iterator();
    while (paramString.hasNext()) {
      ((cyb)paramString.next()).n();
    }
  }
  
  protected static String c(Context paramContext, int paramInt)
  {
    paramContext = String.valueOf(paramContext.getPackageName());
    return String.valueOf(paramContext).length() + 11 + paramContext + paramInt;
  }
  
  protected CharSequence a(int paramInt)
  {
    TextAppearanceSpan localTextAppearanceSpan = new TextAppearanceSpan(p, aal.hQ);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    int m = StressMode.gI;
    int k = m;
    switch (paramInt)
    {
    default: 
      k = m;
    }
    for (;;)
    {
      localSpannableStringBuilder.append(p.getText(k));
      localSpannableStringBuilder.setSpan(localTextAppearanceSpan, 0, localSpannableStringBuilder.length(), 0);
      return localSpannableStringBuilder;
      k = StressMode.gE;
      continue;
      k = StressMode.gU;
      continue;
      k = StressMode.gG;
      continue;
      k = StressMode.gT;
      continue;
      k = StressMode.kh;
    }
  }
  
  protected CharSequence a(String paramString, CharSequence paramCharSequence)
  {
    return a(paramString, paramCharSequence, null, 0, StressMode.gS);
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject1 = ((ekq)ilh.a(p, ekq.class)).b(q, o());
    Object localObject2 = eyt.a(Settings.System.DEFAULT_NOTIFICATION_URI, new String[] { l(), localObject1, ezc.b(aal.hM) });
    int k = q;
    int m = q();
    int i1 = e();
    label151:
    Object localObject3;
    if (c())
    {
      localObject1 = null;
      j = eyr.a(k, m, i1, (String)localObject1);
      localObject1 = b();
      if (localObject1 != null) {
        u.b(PendingIntent.getService(p, j + 1, (Intent)localObject1, 134217728));
      }
      if (r == null) {
        break label602;
      }
      localObject1 = r.a();
      if (!paramBoolean)
      {
        if (!ezc.a(p))
        {
          localObject3 = (Long)b.get(localObject1);
          if (c == 0) {
            c = aal.a(p, "babel_notification_time_between_rings", 10) * 1000;
          }
          long l1 = SystemClock.elapsedRealtime();
          long l2 = aal.a((Long)localObject3, 0L);
          if ((localObject3 != null) && (l1 - l2 <= c)) {
            break label608;
          }
          b.put(localObject1, Long.valueOf(l1));
        }
        label252:
        u.a((Uri)localObject2);
        k = 4;
        if (a()) {
          k = 6;
        }
        u.c(k);
      }
      u.a(b(0));
      u.d(f());
      if (dvd.e().length > 1)
      {
        localObject1 = ((awo)ilh.a(p, awo.class)).c(q);
        if (!(t instanceof cx)) {
          break label619;
        }
        ((cx)t).a((CharSequence)localObject1);
      }
    }
    for (;;)
    {
      if (!s.isEmpty())
      {
        localObject1 = new Bundle();
        ((Bundle)localObject1).putStringArray("android.people", (String[])s.toArray(new String[s.size()]));
        u.a((Bundle)localObject1);
      }
      if (cww.a(p))
      {
        if (d == null) {
          d = BitmapFactory.decodeResource(p.getResources(), R.drawable.cr);
        }
        v.a(d);
      }
      if (((h.isEmpty()) && (r.size() != 1)) || (i.isEmpty())) {
        break label949;
      }
      localObject2 = (beu)i.get(0);
      if (((beu)localObject2).d()) {
        break label949;
      }
      localObject1 = ((beu)localObject2).f();
      localObject3 = new LinkedList();
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject4 = (cyx)((Iterator)localObject1).next();
        if (h == null) {
          ((List)localObject3).add(e);
        }
      }
      localObject1 = r.a();
      break;
      label602:
      localObject1 = null;
      break label151;
      label608:
      u.d();
      break label252;
      label619:
      if ((t instanceof db)) {
        ((db)t).a((CharSequence)localObject1);
      }
    }
    k = ((beu)localObject2).e() - h.size();
    Object localObject4 = h;
    String str = ((hpz)ilh.a(p, hpz.class)).a(q).b("account_name");
    m = bfq.a();
    cye localcye = new cye(this);
    if (!((eot)ilh.a(p, eot.class)).d()) {
      if (s())
      {
        localObject1 = beo.c;
        localObject4 = bem.a((List)localObject4, k, (List)localObject3, str, m, null, localcye, this, null, true, (beo)localObject1, false);
        if (localObject4 != null)
        {
          if ((((beu)localObject2).e() <= 1) && (Build.VERSION.SDK_INT <= 20)) {
            break label1004;
          }
          paramBoolean = true;
          label792:
          ((bhs)localObject4).a(paramBoolean);
        }
        localObject1 = (eit)ilh.a(p, eit.class);
        ((eit)localObject1).c((ehx)localObject4);
        if (cww.a(p))
        {
          localObject4 = h;
          str = ((hpz)ilh.a(p, hpz.class)).a(q).b("account_name");
          if (bfq.c == 0) {
            bfq.c = aal.oJ.getResources().getDimensionPixelSize(aal.eH);
          }
          localObject3 = bem.a((List)localObject4, k, (List)localObject3, str, bfq.c, null, new cyf(this), this, null, true, beo.a, false);
          if (localObject3 != null) {
            if (((beu)localObject2).e() <= 1) {
              break label1009;
            }
          }
        }
      }
    }
    label949:
    label1004:
    label1009:
    for (paramBoolean = true;; paramBoolean = false)
    {
      ((bhs)localObject3).a(paramBoolean);
      ((eit)localObject1).c((ehx)localObject3);
      e = true;
      u();
      new Handler().postDelayed(new cyc(this), 2000L);
      return;
      if (r())
      {
        localObject1 = beo.b;
        break;
      }
      localObject1 = beo.a;
      break;
      paramBoolean = false;
      break label792;
    }
  }
  
  public abstract boolean a();
  
  protected final PendingIntent b(int paramInt)
  {
    Intent localIntent1 = g();
    if (paramInt > 0) {
      localIntent1.putExtra("opened_from_impression", paramInt);
    }
    localIntent1.addFlags(67108864);
    ewz.a("prepareNotification notification", localIntent1);
    eo localeo = eo.a(p).b(localIntent1);
    paramInt = localeo.a() - 2;
    for (;;)
    {
      if (paramInt >= 0)
      {
        Intent localIntent2 = localeo.a(paramInt);
        if (a.equals(localIntent2.getComponent().getClassName())) {
          localIntent2.setAction("com.google.android.apps.hangouts.phone.conversationlist");
        }
      }
      else
      {
        if (!localIntent1.hasExtra("account_id")) {
          break;
        }
        k = localIntent1.getIntExtra("account_id", -1);
        paramInt = 0;
        while (paramInt < localeo.a())
        {
          localeo.a(paramInt).putExtra("account_id", k);
          paramInt += 1;
        }
      }
      paramInt -= 1;
    }
    int k = j;
    if (Build.VERSION.SDK_INT < 19) {}
    for (paramInt = 268435456;; paramInt = 134217728) {
      return localeo.a(k, paramInt);
    }
  }
  
  public abstract Intent b();
  
  public CharSequence b(String paramString1, CharSequence paramCharSequence, String paramString2, int paramInt)
  {
    return a(paramString1, paramCharSequence, paramString2, paramInt, StressMode.gR);
  }
  
  protected void b(String paramString)
  {
    a(paramString);
    if (!i.isEmpty())
    {
      paramString = ((beu)i.get(0)).b().iterator();
      while (paramString.hasNext())
      {
        cyx localcyx = (cyx)paramString.next();
        if (!TextUtils.isEmpty(h)) {
          h.add(h);
        }
      }
    }
  }
  
  protected void c(String paramString)
  {
    a(paramString);
    Iterator localIterator1 = i.iterator();
    Iterator localIterator2;
    if (localIterator1.hasNext()) {
      localIterator2 = ((beu)localIterator1.next()).b().iterator();
    }
    label42:
    label218:
    label221:
    for (;;)
    {
      Object localObject;
      if (localIterator2.hasNext())
      {
        paramString = (cyx)localIterator2.next();
        if (!TextUtils.isEmpty(c))
        {
          s.add(Uri.fromParts("tel", c, null).toString());
          continue;
        }
        if (TextUtils.isEmpty(paramString.b())) {
          continue;
        }
        localObject = (dcj)ilh.a(p, dcj.class);
        if ((!((dcj)localObject).a("android.permission.READ_CONTACTS")) && (!((dcj)localObject).a("android.permission.WRITE_CONTACTS"))) {
          break label218;
        }
        localObject = p;
      }
      for (paramString = gng.a((Context)localObject, gng.a((Context)localObject, ((hpz)ilh.a(p, hpz.class)).a(q).b("account_name"), paramString.b()));; paramString = null)
      {
        if (paramString == null) {
          break label221;
        }
        s.add(paramString.toString());
        break label42;
        break;
        return;
      }
    }
  }
  
  public abstract boolean c();
  
  public abstract int d();
  
  public abstract int e();
  
  public abstract int f();
  
  public abstract Intent g();
  
  protected void h()
  {
    aen.b(Thread.holdsLock(o));
    u.a(d());
    u.a(t);
    u.a(v);
    u.a(true);
    u.a(w.g());
    u.e(p.getResources().getColor(aal.dg));
    Notification localNotification = u.g();
    du localdu = du.a(p);
    defaults |= 0x4;
    if (n)
    {
      String str1 = String.valueOf(localNotification);
      String str2 = String.valueOf(j());
      int k = e();
      new StringBuilder(String.valueOf(str1).length() + 51 + String.valueOf(str2).length()).append("Notifier.postNotification: ").append(str1).append(" [tag=]").append(str2).append(" [id=]").append(k);
    }
    localdu.a(j(), e(), localNotification);
    i();
    g = true;
    o.remove(this);
  }
  
  protected void i() {}
  
  protected String j()
  {
    if (c()) {
      return c(p, q);
    }
    return a(p, q, r.a());
  }
  
  protected void k() {}
  
  protected String l()
  {
    return null;
  }
  
  protected void n()
  {
    synchronized (o)
    {
      if (!f) {
        o.remove(this);
      }
      f = true;
      return;
    }
  }
  
  protected eku o()
  {
    return eku.b;
  }
  
  protected int q()
  {
    return 3;
  }
  
  protected boolean r()
  {
    return o() == eku.a;
  }
  
  protected boolean s()
  {
    return o() == eku.c;
  }
  
  protected final PendingIntent t()
  {
    return b(0);
  }
  
  void u()
  {
    synchronized (x)
    {
      if (x.isEmpty()) {
        v();
      }
      return;
    }
  }
  
  void v()
  {
    synchronized (o)
    {
      if ((e) && (!f) && (!g))
      {
        h();
        return;
      }
      k();
    }
  }
  
  protected int w()
  {
    return j + 3;
  }
  
  protected int x()
  {
    return j + 2;
  }
}

/* Location:
 * Qualified Name:     cyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */