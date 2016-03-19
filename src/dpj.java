import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Locale;

public class dpj
  extends dpf
{
  private static final long serialVersionUID = 2L;
  public final int a;
  public final String b;
  public final long c;
  public final String d;
  public final boolean j;
  public final boolean k;
  public final String l;
  public final String m;
  public final boolean n;
  public final int o;
  public final boolean p;
  public final boolean q;
  public final int r;
  public final int s;
  public final boolean t;
  public String u;
  private final String v;
  
  public dpj(int paramInt1, long paramLong, String paramString1, boolean paramBoolean1, String paramString2, String paramString3, boolean paramBoolean2, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, String paramString4)
  {
    a = paramInt1;
    b = Locale.getDefault().toString();
    c = paramLong;
    d = paramString1;
    j = paramBoolean1;
    l = paramString2;
    m = paramString3;
    n = paramBoolean2;
    o = paramInt2;
    p = paramBoolean3;
    q = paramBoolean4;
    k = paramBoolean5;
    r = paramInt3;
    s = paramInt4;
    t = paramBoolean6;
    v = paramString4;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kdf localkdf = new kdf();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    a = Integer.valueOf(1);
    t = l;
    b = Integer.valueOf(a);
    r = d;
    q = Long.valueOf(c);
    c = b;
    E = Boolean.valueOf(t);
    paramString = new ArrayList();
    paramString.add("com.google.chat.MESSAGING");
    if ((a == 1) && (j))
    {
      paramString.add("com.google.hangout.RING");
      paramString.add("com.google.hangout.VOICEONLY");
      if (k) {
        paramString.add("com.google.hangout.PSTN_RING");
      }
    }
    s = ((String[])paramString.toArray(new String[paramString.size()]));
    if (!TextUtils.isEmpty(m))
    {
      if (ezi.a("Babel_RequestWriter", 3))
      {
        paramString = String.valueOf(m);
        if (paramString.length() != 0)
        {
          paramString = "Unregistering removed account:".concat(paramString);
          ezi.b("Babel_RequestWriter", paramString, new Object[0]);
        }
      }
      else
      {
        D = m;
      }
    }
    else
    {
      if (o > 0) {
        v = Integer.valueOf(o);
      }
      if ((!p) || (!q)) {
        break label378;
      }
      z = new String[2];
      z[0] = "com.google.chat.DEVICE_SMS_ENABLED";
      z[1] = "com.google.chat.SMS_ACCOUNT";
    }
    for (;;)
    {
      A = Integer.valueOf(r);
      B = Integer.valueOf(s);
      if (v != null)
      {
        paramString = new lcf();
        a = v;
        keu localkeu = new keu();
        a = paramString;
        F = localkeu;
      }
      return localkdf;
      paramString = new String("Unregistering removed account:");
      break;
      label378:
      if (p)
      {
        z = new String[1];
        z[0] = "com.google.chat.DEVICE_SMS_ENABLED";
      }
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    if (a == 1)
    {
      ((awm)ilh.a(aal.oJ, awm.class)).f(parambfd.g());
      return;
    }
    parambfd = String.valueOf(ezi.b(parambfd.a()));
    if (parambfd.length() != 0) {}
    for (parambfd = "Unregistering account failed: ".concat(parambfd);; parambfd = new String("Unregistering account failed: "))
    {
      ezi.d("Babel_RequestWriter", parambfd, new Object[0]);
      return;
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    boolean bool2 = false;
    boolean bool1 = true;
    hbs.a(getClass(), paramcwi.getClass());
    paramcwi = (dpj)paramcwi;
    if (!TextUtils.equals(m, m)) {
      return bool2;
    }
    if (a != a)
    {
      if (doo.e)
      {
        int i = a;
        new StringBuilder(69).append("Replacing a DeviceRegistrationRequest with different type:").append(i);
      }
      return true;
    }
    if (n != n) {
      if (n) {}
    }
    for (;;)
    {
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      bool2 = bool1;
      if (!doo.e) {
        break;
      }
      bool2 = n;
      boolean bool3 = n;
      new StringBuilder(79).append("Replacing a DeviceRegistrationRequest. Old withRetry=").append(bool2).append(". New withRetry=").append(bool3);
      return bool1;
      bool1 = false;
      continue;
      bool1 = true;
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return (n) && (super.a(paramcwk, paramdvn));
  }
  
  public long b()
  {
    if (n) {
      return dvd.b();
    }
    return 0L;
  }
  
  public String f()
  {
    return "devices/registerdevice";
  }
  
  public boolean j()
  {
    return !n;
  }
}

/* Location:
 * Qualified Name:     dpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */