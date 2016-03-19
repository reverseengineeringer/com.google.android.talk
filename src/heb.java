import android.os.Looper;
import android.os.MessageQueue.IdleHandler;

final class heb
  implements MessageQueue.IdleHandler
{
  heb(hea paramhea) {}
  
  public boolean queueIdle()
  {
    Looper.myLooper().quit();
    return true;
  }
}

/* Location:
 * Qualified Name:     heb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */