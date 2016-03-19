import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Handler;
import android.os.Looper;

public final class ahm
  extends ContextWrapper
  implements ComponentCallbacks2
{
  private final Handler a;
  private final aht b;
  private final aut c;
  private final auk d;
  private final alh e;
  private final ComponentCallbacks2 f;
  private final int g;
  
  public ahm(Context paramContext, aht paramaht, aut paramaut, auk paramauk, alh paramalh, ComponentCallbacks2 paramComponentCallbacks2, int paramInt)
  {
    super(paramContext.getApplicationContext());
    b = paramaht;
    c = paramaut;
    d = paramauk;
    e = paramalh;
    f = paramComponentCallbacks2;
    g = paramInt;
    a = new Handler(Looper.getMainLooper());
  }
  
  public auk a()
  {
    return d;
  }
  
  public alh b()
  {
    return e;
  }
  
  public aht c()
  {
    return b;
  }
  
  public int d()
  {
    return g;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    f.onConfigurationChanged(paramConfiguration);
  }
  
  public void onLowMemory()
  {
    f.onLowMemory();
  }
  
  public void onTrimMemory(int paramInt)
  {
    f.onTrimMemory(paramInt);
  }
}

/* Location:
 * Qualified Name:     ahm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */