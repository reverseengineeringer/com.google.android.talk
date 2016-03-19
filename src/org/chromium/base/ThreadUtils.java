package org.chromium.base;

import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import org.chromium.base.annotations.CalledByNative;

public class ThreadUtils
{
  private static final Object a = new Object();
  private static boolean b = false;
  private static Handler c = null;
  
  public static Handler a()
  {
    synchronized (a)
    {
      if (c != null) {
        break label46;
      }
      if (b) {
        throw new RuntimeException("Did not yet override the UI thread");
      }
    }
    c = new Handler(Looper.getMainLooper());
    label46:
    Handler localHandler = c;
    return localHandler;
  }
  
  public static void a(Runnable paramRunnable)
  {
    a().post(paramRunnable);
  }
  
  public static void b() {}
  
  @CalledByNative
  private static boolean isThreadPriorityAudio(int paramInt)
  {
    return Process.getThreadPriority(paramInt) == -16;
  }
  
  @CalledByNative
  public static void setThreadPriorityAudio(int paramInt)
  {
    Process.setThreadPriority(paramInt, -16);
  }
}

/* Location:
 * Qualified Name:     org.chromium.base.ThreadUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */