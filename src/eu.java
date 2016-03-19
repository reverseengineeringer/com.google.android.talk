import java.util.concurrent.CountDownLatch;
import java.util.concurrent.FutureTask;

final class eu
  extends fm<Void, Void, D>
  implements Runnable
{
  boolean a;
  private final CountDownLatch h = new CountDownLatch(1);
  
  eu(et paramet) {}
  
  private D c()
  {
    try
    {
      Object localObject = b.e();
      return (D)localObject;
    }
    catch (gs localgs)
    {
      if (!e.isCancelled()) {
        throw localgs;
      }
    }
    return null;
  }
  
  protected void a(D paramD)
  {
    try
    {
      b.b(this, paramD);
      return;
    }
    finally
    {
      h.countDown();
    }
  }
  
  protected void b(D paramD)
  {
    try
    {
      b.a(this, paramD);
      return;
    }
    finally
    {
      h.countDown();
    }
  }
  
  public void run()
  {
    a = false;
    b.c();
  }
}

/* Location:
 * Qualified Name:     eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */