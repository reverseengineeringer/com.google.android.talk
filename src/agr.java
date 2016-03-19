import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Map;

public abstract class agr<T>
  implements Comparable<agr<T>>
{
  final ahc a;
  Integer b;
  boolean c;
  public agz d;
  private final int e;
  private final String f;
  private final int g;
  private final agw h;
  private agu i;
  private boolean j;
  private boolean k;
  private long l;
  private agj m;
  
  @Deprecated
  public agr(String paramString, agw paramagw)
  {
    this(paramString, paramagw, (byte)0);
  }
  
  private agr(String paramString, agw paramagw, byte paramByte)
  {
    ahc localahc;
    if (ahc.a)
    {
      localahc = new ahc();
      a = localahc;
      c = true;
      j = false;
      k = false;
      l = 0L;
      m = null;
      e = -1;
      f = paramString;
      h = paramagw;
      a(new agz());
      if (TextUtils.isEmpty(paramString)) {
        break label119;
      }
      paramString = Uri.parse(paramString);
      if (paramString == null) {
        break label119;
      }
      paramString = paramString.getHost();
      if (paramString == null) {
        break label119;
      }
    }
    label119:
    for (paramByte = paramString.hashCode();; paramByte = 0)
    {
      g = paramByte;
      return;
      localahc = null;
      break;
    }
  }
  
  public int a()
  {
    return e;
  }
  
  public int a(agr<T> paramagr)
  {
    agt localagt1 = l();
    agt localagt2 = paramagr.l();
    if (localagt1 == localagt2) {
      return b.intValue() - b.intValue();
    }
    return localagt2.ordinal() - localagt1.ordinal();
  }
  
  public agr<?> a(agj paramagj)
  {
    m = paramagj;
    return this;
  }
  
  public agr<?> a(agu paramagu)
  {
    i = paramagu;
    return this;
  }
  
  public agr<?> a(agz paramagz)
  {
    d = paramagz;
    return this;
  }
  
  public abstract agv<T> a(agq paramagq);
  
  protected aha a(aha paramaha)
  {
    return paramaha;
  }
  
  public abstract void a(T paramT);
  
  public void a(String paramString)
  {
    if (ahc.a) {
      a.a(paramString, Thread.currentThread().getId());
    }
    while (l != 0L) {
      return;
    }
    l = SystemClock.elapsedRealtime();
  }
  
  public int b()
  {
    return g;
  }
  
  public void b(aha paramaha)
  {
    if (h != null) {
      h.a(paramaha);
    }
  }
  
  void b(String paramString)
  {
    if (i != null) {
      i.b(this);
    }
    long l1;
    if (ahc.a)
    {
      l1 = Thread.currentThread().getId();
      if (Looper.myLooper() != Looper.getMainLooper()) {
        new Handler(Looper.getMainLooper()).post(new ags(this, paramString, l1));
      }
    }
    do
    {
      return;
      a.a(paramString, l1);
      a.a(toString());
      return;
      l1 = SystemClock.elapsedRealtime() - l;
    } while (l1 < 3000L);
    ahb.d("%d ms: %s", new Object[] { Long.valueOf(l1), toString() });
  }
  
  public String c()
  {
    return f;
  }
  
  public String d()
  {
    return c();
  }
  
  public agj e()
  {
    return m;
  }
  
  public boolean f()
  {
    return j;
  }
  
  public Map<String, String> g()
  {
    return Collections.emptyMap();
  }
  
  @Deprecated
  public String h()
  {
    return k();
  }
  
  @Deprecated
  public byte[] i()
  {
    return null;
  }
  
  protected String j()
  {
    return "UTF-8";
  }
  
  public String k()
  {
    return "application/x-www-form-urlencoded; charset=" + j();
  }
  
  public agt l()
  {
    return agt.b;
  }
  
  public agz m()
  {
    return d;
  }
  
  public void n()
  {
    k = true;
  }
  
  public boolean o()
  {
    return k;
  }
  
  public String toString()
  {
    String str2 = "0x" + Integer.toHexString(b());
    StringBuilder localStringBuilder = new StringBuilder();
    if (j) {}
    for (String str1 = "[X] ";; str1 = "[ ] ") {
      return str1 + c() + " " + str2 + " " + l() + " " + b;
    }
  }
}

/* Location:
 * Qualified Name:     agr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */