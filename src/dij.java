import android.content.ComponentCallbacks2;
import android.content.res.Configuration;

final class dij
  implements ComponentCallbacks2
{
  dij(dih paramdih) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory()
  {
    hbu.a.a();
  }
  
  public void onTrimMemory(int paramInt)
  {
    hbu.a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     dij
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */