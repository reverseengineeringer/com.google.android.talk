import com.google.android.gms.common.api.Scope;
import java.util.List;
import java.util.concurrent.ExecutorService;

final class gqs
  extends gqj
{
  final gqd a;
  private final ExecutorService b;
  
  public gqs(gqd paramgqd, ExecutorService paramExecutorService)
  {
    a = paramgqd;
    b = paramExecutorService;
  }
  
  public void a(String paramString1, String paramString2, gqn paramgqn)
  {
    b.submit(new gqu(this, paramString1, paramString2, paramgqn));
  }
  
  public void a(String paramString, List<Scope> paramList, gqn paramgqn)
  {
    b.submit(new gqt(this, paramList, paramString, paramgqn));
  }
}

/* Location:
 * Qualified Name:     gqs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */