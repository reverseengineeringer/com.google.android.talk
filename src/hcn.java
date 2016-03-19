import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

final class hcn
  implements hbp<khs>, Runnable
{
  private final hbh a;
  private final String b;
  private CountDownLatch c;
  
  hcn(hbh paramhbh, String paramString)
  {
    a = paramhbh;
    b = paramString;
  }
  
  public void run()
  {
    hlk.a(3, "vclib", "LeaveHandler starting");
    c = new CountDownLatch(1);
    khr localkhr = new khr();
    a = b;
    hlk.a(3, "vclib", String.format("Sending leave RPC: %s", new Object[] { b }));
    a.c(localkhr, this);
    try
    {
      if (!c.await(1L, TimeUnit.MINUTES)) {
        hlk.a(5, "vclib", "LeaveRPC not complete yet! Not waiting any further");
      }
      hlk.a(3, "vclib", "LeaveHandler terminating");
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        hlk.a(6, "vclib", "LeaveHandler was interrupted!");
      }
    }
  }
}

/* Location:
 * Qualified Name:     hcn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */