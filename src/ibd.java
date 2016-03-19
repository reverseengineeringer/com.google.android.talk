import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public class ibd
{
  Context a;
  
  public ibd(Context paramContext)
  {
    a = paramContext;
  }
  
  String a()
  {
    try
    {
      String str = a.getPackageManager().getPackageInfo(a.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new AssertionError();
    }
  }
}

/* Location:
 * Qualified Name:     ibd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */