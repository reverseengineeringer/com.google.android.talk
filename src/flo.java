import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;

public abstract class flo
{
  private static final Object a = new Object();
  private static flo b;
  
  public static flo a(Context paramContext)
  {
    synchronized (a)
    {
      if (b == null) {
        b = new flp(paramContext.getApplicationContext());
      }
      return b;
    }
  }
  
  public abstract boolean a(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString);
  
  public abstract boolean a(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
  
  public abstract void b(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString);
  
  public abstract void b(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
}

/* Location:
 * Qualified Name:     flo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */