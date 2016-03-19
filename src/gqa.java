import android.content.Context;
import android.os.AsyncTask;
import android.util.Log;
import java.lang.reflect.Method;

public final class gqa
{
  private static final Object a = new Object();
  private static Method b = null;
  
  public static void a(Context arg0)
  {
    aal.b(???, "Context must not be null");
    fhr.b(???);
    Context localContext = fhr.d(???);
    if (localContext == null)
    {
      Log.e("ProviderInstaller", "Failed to get remote context");
      throw new fhp(8);
    }
    synchronized (a)
    {
      try
      {
        if (b == null) {
          b = localContext.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[] { Context.class });
        }
        b.invoke(null, new Object[] { localContext });
        return;
      }
      catch (Exception localException)
      {
        Log.e("ProviderInstaller", "Failed to install provider: " + localException.getMessage());
        throw new fhp(8);
      }
    }
  }
  
  public static void a(Context paramContext, gqc paramgqc)
  {
    aal.b(paramContext, "Context must not be null");
    aal.b(paramgqc, "Listener must not be null");
    aal.w("Must be called on the UI thread");
    new gqb(paramContext, paramgqc).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     gqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */