import android.database.ContentObserver;
import android.os.Handler;
import java.util.HashMap;

final class gvl
  extends ContentObserver
{
  gvl(gvk paramgvk, Handler paramHandler)
  {
    super(paramHandler);
  }
  
  public void onChange(boolean paramBoolean)
  {
    try
    {
      gvj.e.clear();
      gvj.f = new Object();
      if (gvj.g.length > 0) {
        gvj.b(a.a, gvj.g);
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     gvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */