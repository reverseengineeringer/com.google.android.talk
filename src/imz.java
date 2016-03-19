import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Process;
import android.util.Log;
import com.google.android.libraries.stitch.incompat.PlatformBugActivity;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public final class imz
  implements Thread.UncaughtExceptionHandler
{
  private final Thread.UncaughtExceptionHandler a;
  private final Context b;
  private final ina c;
  
  public imz(Context paramContext, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, ina paramina)
  {
    a = paramUncaughtExceptionHandler;
    b = ((Context)aen.a(paramContext, "context"));
    c = paramina;
  }
  
  public static boolean a(Context paramContext)
  {
    Object localObject = ilh.c(paramContext, imy.class).iterator();
    imy localimy;
    do
    {
      if (!((Iterator)localObject).hasNext()) {
        break;
      }
      localimy = (imy)((Iterator)localObject).next();
    } while (!localimy.a(paramContext).exists());
    for (;;)
    {
      try
      {
        ActivityInfo localActivityInfo = paramContext.getPackageManager().getActivityInfo(new ComponentName(paramContext, PlatformBugActivity.class), 0);
        int i = Process.myPid();
        localObject = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
        if (!((Iterator)localObject).hasNext()) {
          break label198;
        }
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
        if (pid != i) {
          continue;
        }
        localObject = processName;
        if ((localObject == null) || (((String)localObject).equals(processName))) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.wtf("PlatformBugHandler", "Cannot find PlatformBugActivity", paramContext);
        return true;
      }
      localObject = new Intent(paramContext, PlatformBugActivity.class);
      ((Intent)localObject).addFlags(884998144);
      ((Intent)localObject).putExtra("extra_error_type", (String)localimy.a());
      paramContext.startActivity((Intent)localObject);
      System.exit(0);
      return true;
      return false;
      label198:
      localObject = null;
    }
  }
  
  public static boolean b(Context paramContext)
  {
    Iterator localIterator = ilh.c(paramContext, imy.class).iterator();
    while (localIterator.hasNext()) {
      if (((imy)localIterator.next()).a(paramContext).exists()) {
        return true;
      }
    }
    return false;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    for (Throwable localThrowable = paramThrowable; localThrowable != null; localThrowable = localThrowable.getCause())
    {
      Iterator localIterator = ilh.c(b, imy.class).iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          imy localimy = (imy)localIterator.next();
          if (!localimy.a(localThrowable)) {
            continue;
          }
          try
          {
            localimy.a(b).createNewFile();
            if (c != null) {
              c.a(paramThread, localThrowable, (String)localimy.a());
            }
            System.exit(0);
          }
          catch (IOException localIOException)
          {
            for (;;)
            {
              Log.wtf("PlatformBugHandler", "Cannot create marker for platform bug file", localIOException);
            }
          }
        }
      }
    }
    if (a != null)
    {
      a.uncaughtException(paramThread, paramThrowable);
      return;
    }
    paramThrowable.printStackTrace();
  }
}

/* Location:
 * Qualified Name:     imz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */