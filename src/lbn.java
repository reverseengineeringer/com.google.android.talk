import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class lbn
  implements ThreadFactory
{
  lbn(ThreadFactory paramThreadFactory, String paramString, AtomicLong paramAtomicLong, Boolean paramBoolean, Integer paramInteger, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = a.newThread(paramRunnable);
    if (b != null) {
      paramRunnable.setName(lbm.a(b, new Object[] { Long.valueOf(c.getAndIncrement()) }));
    }
    if (d != null) {
      paramRunnable.setDaemon(d.booleanValue());
    }
    if (e != null) {
      paramRunnable.setPriority(e.intValue());
    }
    if (f != null) {
      paramRunnable.setUncaughtExceptionHandler(f);
    }
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     lbn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */