import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import org.chromium.net.UrlRequestException;

final class mqb
  implements Executor
{
  mqb(mqa parammqa, mpe parammpe, Executor paramExecutor) {}
  
  public void execute(Runnable paramRunnable)
  {
    try
    {
      b.execute(paramRunnable);
      return;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      c.j.a(mqh.b, new UrlRequestException("Exception received from UploadDataProvider", paramRunnable));
    }
  }
}

/* Location:
 * Qualified Name:     mqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */