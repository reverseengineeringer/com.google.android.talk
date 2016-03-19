import android.util.Log;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

public final class anm
  extends ThreadPoolExecutor
{
  private final boolean a = false;
  
  public anm(int paramInt, String paramString, anq paramanq, boolean paramBoolean)
  {
    super(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ano(paramString, paramanq, paramBoolean));
  }
  
  public static int a()
  {
    try
    {
      File[] arrayOfFile = new File("/sys/devices/system/cpu/").listFiles(new ann(Pattern.compile("cpu[0-9]+")));
      if (arrayOfFile != null)
      {
        i = arrayOfFile.length;
        return Math.min(4, Math.max(Math.max(1, Runtime.getRuntime().availableProcessors()), i));
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        if (Log.isLoggable("GlideExecutor", 6)) {
          Log.e("GlideExecutor", "Failed to calculate accurate cpu count", localThrowable);
        }
        Object localObject = null;
        continue;
        int i = 0;
      }
    }
  }
  
  private <T> Future<T> a(Future<T> paramFuture)
  {
    if (a) {}
    try
    {
      paramFuture.get();
      return paramFuture;
    }
    catch (InterruptedException paramFuture)
    {
      throw new RuntimeException(paramFuture);
    }
    catch (ExecutionException paramFuture)
    {
      for (;;) {}
    }
  }
  
  public void execute(Runnable paramRunnable)
  {
    if (a)
    {
      paramRunnable.run();
      return;
    }
    super.execute(paramRunnable);
  }
  
  public Future<?> submit(Runnable paramRunnable)
  {
    return a(super.submit(paramRunnable));
  }
  
  public <T> Future<T> submit(Runnable paramRunnable, T paramT)
  {
    return a(super.submit(paramRunnable, paramT));
  }
  
  public <T> Future<T> submit(Callable<T> paramCallable)
  {
    return a(super.submit(paramCallable));
  }
}

/* Location:
 * Qualified Name:     anm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */