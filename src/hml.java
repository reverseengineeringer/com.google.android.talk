import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

final class hml
{
  static hml a;
  private final Application b;
  private String c;
  private String d;
  
  hml(Application paramApplication)
  {
    b = paramApplication;
  }
  
  static mik a(mik parammik)
  {
    mik localmik;
    if (parammik == null) {
      localmik = null;
    }
    for (;;)
    {
      return localmik;
      localmik = parammik;
      if (a == null) {
        continue;
      }
      if (ac == null) {
        ac = ab.getPackageName();
      }
      try
      {
        ad = ab.getPackageManager().getPackageInfo(ac, 0).versionName;
        e = new mht();
        e.a = ac;
        localmik = parammik;
        if (ad == null) {
          continue;
        }
        e.b = ad;
        return parammik;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          String.format("Failed to get Package info for: %s, %s", new Object[] { ac, localNameNotFoundException });
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hml
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */