import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.UserHandle;
import android.os.UserManager;
import java.util.Iterator;
import java.util.List;

public final class cww
{
  public static volatile boolean a = false;
  public static volatile boolean b = false;
  private static volatile boolean c = false;
  private static volatile boolean d = false;
  
  public static boolean a(Context paramContext)
  {
    if (!a)
    {
      c = a(paramContext, "com.google.android.wearable.app");
      a = true;
    }
    return c;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 21)
    {
      Object localObject = (UserManager)paramContext.getSystemService("user");
      paramContext = (LauncherApps)paramContext.getSystemService("launcherapps");
      localObject = ((UserManager)localObject).getUserProfiles().iterator();
      while (((Iterator)localObject).hasNext()) {
        if (paramContext.isPackageEnabled(paramString, (UserHandle)((Iterator)localObject).next())) {
          bool = true;
        }
      }
    }
    for (;;)
    {
      if (cyb.n) {
        new StringBuilder(String.valueOf(paramString).length() + 39).append("isCompanionAppInstalled ").append(paramString).append(" returned ").append(bool);
      }
      return bool;
      bool = false;
      continue;
      bool = b(paramContext, paramString);
    }
  }
  
  static boolean b(Context paramContext)
  {
    if (!b)
    {
      d = a(paramContext, "com.google.android.projection.gearhead");
      b = true;
    }
    return d;
  }
  
  private static boolean b(Context paramContext, String paramString)
  {
    try
    {
      paramContext.getPackageManager().getPackageInfo(paramString, 0);
      return true;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  static boolean c(Context paramContext)
  {
    return (a(paramContext)) || (b(paramContext));
  }
}

/* Location:
 * Qualified Name:     cww
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */