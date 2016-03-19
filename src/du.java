import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import java.util.HashSet;
import java.util.Set;

public final class du
{
  static final int a;
  private static final Object b = new Object();
  private static String c;
  private static Set<String> d = new HashSet();
  private static final Object g = new Object();
  private static eb h;
  private static final dw i;
  private final Context e;
  private final NotificationManager f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14) {
      i = new dy();
    }
    for (;;)
    {
      a = i.a();
      return;
      if (Build.VERSION.SDK_INT >= 5) {
        i = new dx();
      } else {
        i = new dw();
      }
    }
  }
  
  private du(Context paramContext)
  {
    e = paramContext;
    f = ((NotificationManager)e.getSystemService("notification"));
  }
  
  public static du a(Context paramContext)
  {
    return new du(paramContext);
  }
  
  private void a(ed paramed)
  {
    synchronized (g)
    {
      if (h == null) {
        h = new eb(e.getApplicationContext());
      }
      h.a(paramed);
      return;
    }
  }
  
  public static Set<String> b(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "enabled_notification_listeners");
    HashSet localHashSet;
    if ((paramContext != null) && (!paramContext.equals(c)))
    {
      ??? = paramContext.split(":");
      localHashSet = new HashSet(???.length);
      int k = ???.length;
      int j = 0;
      while (j < k)
      {
        ComponentName localComponentName = ComponentName.unflattenFromString(???[j]);
        if (localComponentName != null) {
          localHashSet.add(localComponentName.getPackageName());
        }
        j += 1;
      }
    }
    synchronized (b)
    {
      d = localHashSet;
      c = paramContext;
      return d;
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    i.a(f, paramString, paramInt);
    if (Build.VERSION.SDK_INT <= 19) {
      a(new dv(e.getPackageName(), paramInt, paramString));
    }
  }
  
  public void a(String paramString, int paramInt, Notification paramNotification)
  {
    Bundle localBundle = ct.a.a(paramNotification);
    if ((localBundle != null) && (localBundle.getBoolean("android.support.useSideChannel"))) {}
    for (int j = 1; j != 0; j = 0)
    {
      a(new dz(e.getPackageName(), paramInt, paramString, paramNotification));
      i.a(f, paramString, paramInt);
      return;
    }
    i.a(f, paramString, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */