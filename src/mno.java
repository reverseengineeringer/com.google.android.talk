import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import org.chromium.base.MemoryPressureListener;

public final class mno
  implements ComponentCallbacks2
{
  public void onConfigurationChanged(Configuration paramConfiguration) {}
  
  public void onLowMemory() {}
  
  public void onTrimMemory(int paramInt)
  {
    MemoryPressureListener.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     mno
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */