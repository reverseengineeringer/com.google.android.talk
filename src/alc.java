import android.os.MessageQueue.IdleHandler;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;

final class alc
  implements MessageQueue.IdleHandler
{
  private final Map<aiw, WeakReference<alk<?>>> a;
  private final ReferenceQueue<alk<?>> b;
  
  public alc(Map<aiw, WeakReference<alk<?>>> paramMap, ReferenceQueue<alk<?>> paramReferenceQueue)
  {
    a = paramMap;
    b = paramReferenceQueue;
  }
  
  public boolean queueIdle()
  {
    ald localald = (ald)b.poll();
    if (localald != null) {
      a.remove(a);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     alc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */