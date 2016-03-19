import android.text.TextUtils;
import java.util.concurrent.TimeUnit;

public class dpz
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final int a;
  public final long b;
  public final int[] c;
  public final boolean d;
  private final String j;
  
  public dpz(int paramInt, String paramString)
  {
    this(-1L, paramInt, false, paramString);
  }
  
  public dpz(long paramLong, int paramInt)
  {
    this(paramLong, paramInt, true, null);
  }
  
  private dpz(long paramLong, int paramInt, boolean paramBoolean, String paramString)
  {
    b = paramLong;
    j = paramString;
    a = paramInt;
    d = paramBoolean;
    c = new int[2];
    switch (paramInt)
    {
    default: 
      throw new IllegalStateException(32 + "illegal filter mode: " + paramInt);
    case 1: 
      c[0] = 1;
      c[1] = 3;
      return;
    case 2: 
      c[0] = 2;
      c[1] = 3;
      return;
    case 3: 
      c[0] = 1;
      c[1] = 4;
      return;
    case 4: 
      c[0] = 1;
      c[1] = 5;
      return;
    case 5: 
      c[0] = 1;
      c[1] = 3;
      return;
    }
    c[0] = 1;
    c[1] = 4;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kfm localkfm = new kfm();
    if (b >= 0L) {
      a = Long.valueOf(b);
    }
    if (a == 6) {}
    for (int i = 100;; i = aal.a(aal.oJ, "babel_smaxconv", 30))
    {
      b = Integer.valueOf(i);
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      c = Integer.valueOf(aal.a(aal.oJ, "babel_smaxevperconv", 20));
      if (c != null) {
        d = c;
      }
      e = Integer.valueOf(1);
      return localkfm;
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    paramdvn = parambfd.a();
    if (doo.e)
    {
      paramdvn = String.valueOf(paramdvn);
      if (paramdvn.length() == 0) {
        break label112;
      }
      "SyncRecentConversations.onFailed ".concat(paramdvn);
    }
    for (;;)
    {
      if (exo.b)
      {
        paramdvn = new exr().a("src_expired").a(parambfd);
        int i = a;
        paramdvn.b(22 + "filterMode=" + i).b();
      }
      if (!TextUtils.isEmpty(j)) {
        ebo.b(parambfd.g()).d(j);
      }
      return;
      label112:
      new String("SyncRecentConversations.onFailed ");
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    paramcwi = (dpz)paramcwi;
    return (b == b) && (a == a) && (d == d);
  }
  
  public long b()
  {
    if (p()) {
      return TimeUnit.SECONDS.toMillis(60L);
    }
    return aal.a(aal.oJ, "babel_src_timeout", eea.f);
  }
  
  public String f()
  {
    return "conversations/syncrecentconversations";
  }
  
  public int o()
  {
    return a;
  }
  
  public boolean p()
  {
    return b >= 0L;
  }
  
  public String q()
  {
    return j;
  }
}

/* Location:
 * Qualified Name:     dpz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */