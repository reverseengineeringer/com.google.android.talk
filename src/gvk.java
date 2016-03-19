import android.content.ContentResolver;
import android.os.Handler;
import android.os.Looper;

final class gvk
  extends Thread
{
  gvk(String paramString, ContentResolver paramContentResolver)
  {
    super(paramString);
  }
  
  public void run()
  {
    Looper.prepare();
    a.registerContentObserver(gvj.a, true, new gvl(this, new Handler(Looper.myLooper())));
    Looper.loop();
  }
}

/* Location:
 * Qualified Name:     gvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */