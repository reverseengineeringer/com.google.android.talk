import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;

final class hmm
  implements hna
{
  private final Context a;
  
  hmm(Context paramContext)
  {
    a = paramContext;
  }
  
  public hnb a()
  {
    return hnb.b;
  }
  
  public mik b()
  {
    mik localmik = null;
    Object localObject = a;
    aal.x();
    int i;
    if ((((Context)localObject).getPackageManager().checkPermission("android.permission.GET_PACKAGE_SIZE", ((Context)localObject).getPackageName()) == 0) || (((Context)localObject).checkCallingOrSelfPermission("android.permission.GET_PACKAGE_SIZE") == 0))
    {
      i = 1;
      if (i == 0) {
        break label201;
      }
    }
    label201:
    for (localObject = aal.y((Context)localObject);; localObject = null)
    {
      if (localObject != null)
      {
        localmik = new mik();
        mif localmif = new mif();
        a = Long.valueOf(cacheSize);
        b = Long.valueOf(codeSize);
        c = Long.valueOf(dataSize);
        d = Long.valueOf(externalCacheSize);
        e = Long.valueOf(externalCodeSize);
        f = Long.valueOf(externalDataSize);
        g = Long.valueOf(externalMediaSize);
        h = Long.valueOf(externalObbSize);
        i = localmif;
        localObject = String.valueOf(i.toString());
        if (((String)localObject).length() == 0) {
          break label206;
        }
        "pkgMetric: ".concat((String)localObject);
      }
      return localmik;
      i = 0;
      break;
    }
    label206:
    new String("pkgMetric: ");
    return localmik;
  }
}

/* Location:
 * Qualified Name:     hmm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */