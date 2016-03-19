import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import java.util.Iterator;
import java.util.List;

public class fak
{
  private static final int[] d = { 1, 2, 3, 0 };
  private final String a;
  private final long b;
  private final int c;
  
  fak(Context paramContext)
  {
    String str2 = null;
    String str1 = str2;
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
      str1 = str2;
      str2 = versionName;
      str1 = str2;
      i = versionCode;
      str1 = str2;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        String str3 = String.valueOf(localNameNotFoundException);
        hbs.a(String.valueOf(str3).length() + 26 + "couldn't get package info " + str3);
        int i = -1;
      }
    }
    c = a(paramContext);
    paramContext = str1;
    if (str1 == null) {
      paramContext = "(unk)";
    }
    a = paramContext;
    b = i;
  }
  
  private static int a(Context paramContext)
  {
    paramContext = ilh.c(paramContext, faj.class).iterator();
    int i = 3;
    label84:
    while (paramContext.hasNext())
    {
      int k = ((faj)paramContext.next()).a();
      int[] arrayOfInt = d;
      int m = arrayOfInt.length;
      int j = 0;
      for (;;)
      {
        if (j >= m) {
          break label84;
        }
        int n = arrayOfInt[j];
        if (n == k)
        {
          i = k;
          break;
        }
        if (n == i) {
          break;
        }
        j += 1;
      }
    }
    return i;
  }
  
  public boolean a()
  {
    return c == 1;
  }
  
  public boolean b()
  {
    return c == 2;
  }
  
  public String c()
  {
    return a;
  }
  
  public long d()
  {
    return b;
  }
  
  public jxm e()
  {
    jxm localjxm = new jxm();
    a = Integer.valueOf(1);
    b = Integer.valueOf(c);
    c = a;
    d = Long.valueOf(b);
    e = Build.FINGERPRINT;
    f = Build.HARDWARE;
    return localjxm;
  }
}

/* Location:
 * Qualified Name:     fak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */