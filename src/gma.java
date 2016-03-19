import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public final class gma
{
  Context a;
  List<gpt> b;
  ArrayList<gpt> c;
  HashMap<String, gpt> d;
  gmb e;
  private gmc f;
  
  public gma(Context paramContext, gmb paramgmb)
  {
    a = paramContext;
    d = new HashMap();
    c = new ArrayList();
    b = new ArrayList();
    e = paramgmb;
  }
  
  void a()
  {
    d.clear();
    c.clear();
    b.clear();
  }
  
  public void a(List<gpt> paramList)
  {
    if (e == null) {
      return;
    }
    if ((paramList == null) || (paramList.isEmpty()))
    {
      e.a(null);
      return;
    }
    b = paramList;
    if (f != null) {
      f.cancel(true);
    }
    f = new gmc(this);
    f.execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     gma
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */