import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.SystemClock;
import android.text.Html;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.text.style.URLSpan;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cxt
  extends cyb
{
  static final boolean b = false;
  static cxx m = new cxx();
  public String c = null;
  public CharSequence d = null;
  public String e = null;
  public CharSequence f = null;
  public Intent g = null;
  public String h = null;
  public int i = 0;
  public final bfz j;
  final List<cxt> k = new ArrayList();
  final cwx l;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  cxt(Context paramContext, int paramInt, cwx paramcwx)
  {
    super(paramContext, paramInt, paramcwx.a());
    l = paramcwx;
    j = new bfz(paramContext, paramInt);
  }
  
  static CharSequence a(String paramString)
  {
    int n = 0;
    paramString = Html.fromHtml(paramString);
    if ((paramString instanceof Spannable))
    {
      Spannable localSpannable = (Spannable)paramString;
      URLSpan[] arrayOfURLSpan = (URLSpan[])localSpannable.getSpans(0, localSpannable.length(), URLSpan.class);
      int i1 = arrayOfURLSpan.length;
      while (n < i1)
      {
        localSpannable.removeSpan(arrayOfURLSpan[n]);
        n += 1;
      }
    }
    return paramString;
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    cxz.b(paramContext, paramInt);
    cyk.a(paramContext, paramInt, null);
  }
  
  static void a(Context paramContext, int paramInt, cwx paramcwx, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    Object localObject = null;
    if (b.size() > 0)
    {
      if (!((cya)b.get(0)).h.get(0) instanceof cxo)) {
        break label173;
      }
      localObject = new cwy(paramContext, paramInt, paramcwx);
      if (b.size() <= 1) {
        break label192;
      }
      localObject = new cxz(paramContext, paramInt, paramcwx, (cxt)localObject, paramBoolean2, paramBoolean3);
    }
    for (;;)
    {
      if ((b) && (localObject != null))
      {
        paramcwx = e;
        String str = String.valueOf(f);
        new StringBuilder(String.valueOf(paramcwx).length() + 17 + String.valueOf(str).length()).append("title: ").append(paramcwx).append(" content: ").append(str);
      }
      if (localObject != null) {
        break label200;
      }
      a(paramContext, paramInt);
      return;
      label173:
      localObject = new cyk(paramContext, paramInt, paramcwx, paramBoolean2, paramBoolean3);
      break;
      label192:
      cxz.b(paramContext, paramInt);
    }
    label200:
    cyk.a(paramContext, paramInt, r);
    ((cxt)localObject).a(paramBoolean1);
  }
  
  protected CharSequence a(String paramString1, CharSequence paramCharSequence, String paramString2, int paramInt)
  {
    TextAppearanceSpan localTextAppearanceSpan2 = new TextAppearanceSpan(p, aal.hP);
    TextAppearanceSpan localTextAppearanceSpan1 = new TextAppearanceSpan(p, aal.hQ);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
    if (!TextUtils.isEmpty(paramString1))
    {
      localSpannableStringBuilder.append(paramString1);
      localSpannableStringBuilder.setSpan(localTextAppearanceSpan2, 0, paramString1.length(), 0);
    }
    paramString1 = p.getString(StressMode.gQ);
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      if (localSpannableStringBuilder.length() > 0) {
        localSpannableStringBuilder.append(paramString1);
      }
      int n = localSpannableStringBuilder.length();
      localSpannableStringBuilder.append(paramCharSequence);
      localSpannableStringBuilder.setSpan(localTextAppearanceSpan1, n, paramCharSequence.length() + n, 0);
    }
    if (!TextUtils.isEmpty(paramString2))
    {
      if (localSpannableStringBuilder.length() > 0) {
        localSpannableStringBuilder.append(paramString1);
      }
      localSpannableStringBuilder.append(a(paramInt));
    }
    return localSpannableStringBuilder;
  }
  
  protected void a(boolean paramBoolean)
  {
    Object localObject = k.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((cyb)((Iterator)localObject).next()).a(true);
    }
    localObject = p.getResources();
    w.a(((Resources)localObject).getQuantityString(aal.hz, l.a, new Object[] { Integer.valueOf(l.a) }));
    if (l.a > 1) {
      w.b(((Resources)localObject).getQuantityString(aal.hA, l.b.size(), new Object[] { Integer.valueOf(l.b.size()) }));
    }
    super.a(paramBoolean);
  }
  
  protected boolean a()
  {
    eku localeku = o();
    String str;
    hpz localhpz;
    switch (cxu.a[localeku.ordinal()])
    {
    default: 
      str = "chat_notification_vibrate_bool_key";
      localhpz = (hpz)ilh.a(p, hpz.class);
      if (localeku != eku.a) {
        break;
      }
    }
    for (int n = localhpz.b("SMS");; n = q)
    {
      if (n != -1) {
        break label158;
      }
      str = String.valueOf(localeku);
      ezi.d("Babel", String.valueOf(str).length() + 44 + "Invalid account in shouldVibrate; notType = " + str, new Object[0]);
      return false;
      str = "sms_notification_vibrate_bool_key";
      break;
      str = "gv_sms_vibrate_boolean_key";
      break;
      str = "gv_voicemail_vibrate_boolean_key";
      break;
    }
    label158:
    return localhpz.a(n).a(str, true);
  }
  
  protected Intent b()
  {
    return new cxv().a(p, q, r.b());
  }
  
  protected boolean c()
  {
    return true;
  }
  
  protected int d()
  {
    return R.drawable.bV;
  }
  
  protected int e()
  {
    return 0;
  }
  
  protected int f()
  {
    return aal.a(p, "babel_notify_chat_priority_level", 1);
  }
  
  protected Intent g()
  {
    return g;
  }
  
  protected void h()
  {
    u.a("msg");
    super.h();
  }
  
  protected void i()
  {
    if (cww.a(p)) {
      aal.a(dvd.e(q), 1930);
    }
  }
  
  protected String l()
  {
    if (l.b.size() > 0) {
      return l.b.get(0)).k;
    }
    return null;
  }
  
  protected CharSequence m()
  {
    String str;
    if (c != null)
    {
      str = c;
      if (d == null) {
        break label39;
      }
    }
    label39:
    for (CharSequence localCharSequence = d;; localCharSequence = f)
    {
      return a(str, localCharSequence);
      str = e;
      break;
    }
  }
  
  protected void n()
  {
    Iterator localIterator = k.iterator();
    while (localIterator.hasNext()) {
      ((cyb)localIterator.next()).n();
    }
    super.n();
  }
  
  protected eku o()
  {
    if (l.b.size() > 0) {
      return ((cwz)l.b.get(0)).a();
    }
    return eku.b;
  }
  
  protected final void p()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = l.b.iterator();
    while (localIterator.hasNext())
    {
      cwz localcwz = (cwz)localIterator.next();
      if ((h.get(0) instanceof cxq)) {
        localArrayList.add(String.valueOf(h.get(0)).j));
      }
    }
    long l1 = SystemClock.elapsedRealtime();
    j.a(l1, localArrayList);
  }
}

/* Location:
 * Qualified Name:     cxt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */