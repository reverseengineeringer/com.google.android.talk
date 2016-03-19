import android.app.Application;
import java.util.concurrent.ScheduledExecutorService;

final class hmb
{
  private static hmb b;
  final hmf<mic> a;
  private final hlx c;
  private final hlw d;
  
  private hmb(hnj paramhnj, Application paramApplication, hmd paramhmd)
  {
    aen.a(paramhnj);
    aen.a(paramApplication);
    d = new hlw();
    a = new hmf(paramhnj, new hma(), paramhmd, hmk.b);
    c = new hlx(new hme(this), paramApplication);
  }
  
  static hmb a(hnj paramhnj, Application paramApplication, hmd paramhmd)
  {
    try
    {
      if (b == null) {
        b = new hmb(paramhnj, paramApplication, paramhmd);
      }
      paramhnj = b;
      return paramhnj;
    }
    finally {}
  }
  
  public void a()
  {
    c.a();
  }
  
  void a(int paramInt)
  {
    if (a.a()) {
      hms.a.submit(new hmc(this, paramInt, null));
    }
  }
}

/* Location:
 * Qualified Name:     hmb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */