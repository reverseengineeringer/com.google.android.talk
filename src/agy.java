import android.os.Handler;
import java.util.concurrent.Executor;

public final class agy
{
  final Executor a;
  
  public agy(Handler paramHandler)
  {
    a = new agm(this, paramHandler);
  }
  
  public void a(agr<?> paramagr, agv<?> paramagv)
  {
    a(paramagr, paramagv, null);
  }
  
  public void a(agr<?> paramagr, agv<?> paramagv, Runnable paramRunnable)
  {
    paramagr.n();
    paramagr.a("post-response");
    a.execute(new agn(this, paramagr, paramagv, paramRunnable));
  }
  
  public void a(agr<?> paramagr, aha paramaha)
  {
    paramagr.a("post-error");
    paramaha = agv.a(paramaha);
    a.execute(new agn(this, paramagr, paramaha, null));
  }
}

/* Location:
 * Qualified Name:     agy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */