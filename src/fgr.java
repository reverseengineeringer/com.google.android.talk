import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import java.util.concurrent.TimeUnit;

public final class fgr
{
  public static final fib<fgx> a = new fib();
  public static final fhx<fgx, fhz> b = new fgs();
  public static final fhw<fhz> c = new fhw("ClearcutLogger.API", b, a);
  public static final fgv d = new fhe();
  private final Context e;
  private final String f;
  private final int g;
  private String h;
  private int i = -1;
  private String j;
  private String k;
  private final boolean l;
  private int m = 0;
  private final fgv n;
  private final fmr o;
  private fgu p;
  
  public fgr(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, null, d, fmt.c());
  }
  
  @Deprecated
  public fgr(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this(paramContext, paramString1, paramString2, paramString3, d, fmt.c());
  }
  
  private fgr(Context paramContext, String paramString1, String paramString2, String paramString3, fgv paramfgv, fmr paramfmr)
  {
    e = paramContext;
    f = paramContext.getPackageName();
    g = a(paramContext);
    i = -1;
    h = paramString1;
    j = paramString2;
    k = paramString3;
    l = false;
    n = paramfgv;
    o = paramfmr;
    p = new fgu();
    m = 0;
    if (l)
    {
      if (j == null) {
        bool = true;
      }
      aal.b(bool, "can't be anonymous with an upload account");
    }
  }
  
  private static int a(Context paramContext)
  {
    try
    {
      int i1 = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("ClearcutLogger", "This can't happen.");
    }
    return 0;
  }
  
  public fgt a(byte[] paramArrayOfByte)
  {
    return new fgt(this, paramArrayOfByte);
  }
  
  public void a(fic paramfic)
  {
    n.a(paramfic);
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit)
  {
    return n.a(5000L, paramTimeUnit);
  }
}

/* Location:
 * Qualified Name:     fgr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */