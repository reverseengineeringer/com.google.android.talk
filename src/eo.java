import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public final class eo
  implements Iterable<Intent>
{
  private static final eq a = new er();
  private final ArrayList<Intent> b = new ArrayList();
  private final Context c;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new es();
      return;
    }
  }
  
  private eo(Context paramContext)
  {
    c = paramContext;
  }
  
  private eo a(ComponentName paramComponentName)
  {
    int i = b.size();
    try
    {
      for (paramComponentName = cn.a(c, paramComponentName); paramComponentName != null; paramComponentName = cn.a(c, paramComponentName.getComponent())) {
        b.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  public static eo a(Context paramContext)
  {
    return new eo(paramContext);
  }
  
  public int a()
  {
    return b.size();
  }
  
  public PendingIntent a(int paramInt1, int paramInt2)
  {
    if (b.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
    }
    Intent[] arrayOfIntent = (Intent[])b.toArray(new Intent[b.size()]);
    arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
    return a.a(c, arrayOfIntent, paramInt1, paramInt2);
  }
  
  public Intent a(int paramInt)
  {
    return (Intent)b.get(paramInt);
  }
  
  public eo a(Activity paramActivity)
  {
    Object localObject = null;
    if ((paramActivity instanceof ep)) {
      localObject = ((ep)paramActivity).A_();
    }
    if (localObject == null) {}
    for (paramActivity = cn.a.a(paramActivity);; paramActivity = (Activity)localObject)
    {
      if (paramActivity != null)
      {
        ComponentName localComponentName = paramActivity.getComponent();
        localObject = localComponentName;
        if (localComponentName == null) {
          localObject = paramActivity.resolveActivity(c.getPackageManager());
        }
        a((ComponentName)localObject);
        a(paramActivity);
      }
      return this;
    }
  }
  
  public eo a(Intent paramIntent)
  {
    b.add(paramIntent);
    return this;
  }
  
  public eo b(Intent paramIntent)
  {
    ComponentName localComponentName2 = paramIntent.getComponent();
    ComponentName localComponentName1 = localComponentName2;
    if (localComponentName2 == null) {
      localComponentName1 = paramIntent.resolveActivity(c.getPackageManager());
    }
    if (localComponentName1 != null) {
      a(localComponentName1);
    }
    a(paramIntent);
    return this;
  }
  
  public void b()
  {
    int i = 1;
    if (b.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
    Object localObject = (Intent[])b.toArray(new Intent[b.size()]);
    localObject[0] = new Intent(localObject[0]).addFlags(268484608);
    Context localContext = c;
    int j = Build.VERSION.SDK_INT;
    if (j >= 16) {
      localContext.startActivities((Intent[])localObject, null);
    }
    for (;;)
    {
      if (i == 0)
      {
        localObject = new Intent(localObject[(localObject.length - 1)]);
        ((Intent)localObject).addFlags(268435456);
        c.startActivity((Intent)localObject);
      }
      return;
      if (j >= 11) {
        localContext.startActivities((Intent[])localObject);
      } else {
        i = 0;
      }
    }
  }
  
  public Iterator<Intent> iterator()
  {
    return b.iterator();
  }
}

/* Location:
 * Qualified Name:     eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */