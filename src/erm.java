import android.os.Handler;
import java.util.ArrayList;
import java.util.List;

public final class erm
  implements ebb
{
  final List<ebb> a = new ArrayList();
  private final Handler b = new Handler();
  
  public void a(ebb paramebb)
  {
    aal.w();
    a.add(paramebb);
  }
  
  public void a(hqe paramhqe, drz paramdrz)
  {
    b.post(new ern(this, paramhqe, paramdrz));
  }
  
  public void b(ebb paramebb)
  {
    aal.w();
    a.remove(paramebb);
  }
}

/* Location:
 * Qualified Name:     erm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */