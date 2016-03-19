import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

final class ayw
  implements ebb
{
  private final ayx a;
  private final Context b;
  
  ayw(Context paramContext)
  {
    a = ((ayx)ilh.a(paramContext, ayx.class));
    b = paramContext;
  }
  
  public void a(hqe paramhqe, drz paramdrz)
  {
    int j = 0;
    int k = 1;
    if (paramdrz.n() == 2) {}
    for (int i = 1;; i = 0)
    {
      if (paramdrz.n() == 1) {
        j = 1;
      }
      PackageManager localPackageManager;
      if ((i != 0) || (j != 0))
      {
        paramdrz = paramdrz.o();
        localPackageManager = b.getPackageManager();
      }
      try
      {
        int m = getPackageInfob.getPackageName(), 0).versionCode;
        j = k;
        if (i != 0) {
          j = 2;
        }
        paramhqe.c("app_upgrade_type", j);
        paramhqe.c("app_upgrade_url", paramdrz);
        paramhqe.c("app_upgrade_version_code", m);
        return;
      }
      catch (PackageManager.NameNotFoundException paramhqe)
      {
        throw new AssertionError(paramhqe);
      }
    }
  }
}

/* Location:
 * Qualified Name:     ayw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */