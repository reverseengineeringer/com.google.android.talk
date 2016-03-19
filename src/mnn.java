import android.os.HandlerThread;
import org.chromium.base.JavaHandlerThread;

public final class mnn
  implements Runnable
{
  public mnn(JavaHandlerThread paramJavaHandlerThread, long paramLong1, long paramLong2, boolean paramBoolean) {}
  
  public void run()
  {
    JavaHandlerThread.b(d, a, b);
    if (!c) {
      d.a.quit();
    }
  }
}

/* Location:
 * Qualified Name:     mnn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */