import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.SparseArray;

final class huq
{
  private static huq a;
  private final Context b;
  private final SparseArray<PowerManager.WakeLock> c = new SparseArray();
  private int d;
  
  private huq(Context paramContext)
  {
    b = paramContext;
  }
  
  static huq a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new huq(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  int a()
  {
    synchronized (c)
    {
      int i = d + 1;
      d = i;
      if (i <= 0) {
        d = 1;
      }
      PowerManager.WakeLock localWakeLock = ((PowerManager)b.getSystemService("power")).newWakeLock(1, "BackgroundTaskService");
      localWakeLock.setReferenceCounted(false);
      localWakeLock.acquire(60000L);
      c.put(d, localWakeLock);
      return d;
    }
  }
  
  void a(int paramInt)
  {
    synchronized (c)
    {
      PowerManager.WakeLock localWakeLock = (PowerManager.WakeLock)c.get(paramInt);
      if (localWakeLock != null)
      {
        localWakeLock.release();
        c.remove(paramInt);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     huq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */