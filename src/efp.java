import android.content.Intent;
import java.util.ArrayList;
import java.util.List;

public final class efp
  implements egs
{
  private static final long serialVersionUID = 1L;
  private final List<efq> a = new ArrayList();
  
  public efp(jxa paramjxa)
  {
    paramjxa = a;
    int j = paramjxa.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramjxa[i];
      String str = a.b;
      int k = aal.a(b, 0);
      a.add(new efq(str, k));
      i += 1;
    }
  }
  
  public List<efq> a()
  {
    return a;
  }
  
  public void a(int paramInt, knq<Intent> paramknq)
  {
    new dyy();
    paramknq = new bfz(aal.oJ, paramInt);
    new dvu(this).a(paramknq);
  }
}

/* Location:
 * Qualified Name:     efp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */