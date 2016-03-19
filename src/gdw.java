import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

public class gdw
  extends flc<geb>
{
  public final gen<geb> e = new gen(this);
  private final String f;
  
  public gdw(Context paramContext, Looper paramLooper, fif paramfif, fih paramfih, String paramString, fkq paramfkq)
  {
    super(paramContext, paramLooper, 23, paramfkq, paramfif, paramfih);
    f = paramString;
  }
  
  protected String a()
  {
    return "com.google.android.location.internal.GoogleLocationManagerService.START";
  }
  
  protected geb b(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
    if ((localIInterface != null) && ((localIInterface instanceof geb))) {
      return (geb)localIInterface;
    }
    return new ged(paramIBinder);
  }
  
  protected String b()
  {
    return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
  }
  
  protected Bundle j()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("client_name", f);
    return localBundle;
  }
}

/* Location:
 * Qualified Name:     gdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */