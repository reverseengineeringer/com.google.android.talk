import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class fjc
  extends fjh
{
  private final Map<fia, fig> c;
  
  public fjc(Map<fia, fig> paramMap)
  {
    super(paramMap);
    Map localMap;
    c = localMap;
  }
  
  public void a()
  {
    int i = fho.a(a.c);
    Object localObject;
    if (i != 0)
    {
      localObject = new ConnectionResult(i, null);
      a.a.a(new fjd(this, a, (ConnectionResult)localObject));
    }
    for (;;)
    {
      return;
      if (a.e) {
        a.d.p();
      }
      localObject = c.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        fia localfia = (fia)((Iterator)localObject).next();
        localfia.a((fig)c.get(localfia));
      }
    }
  }
}

/* Location:
 * Qualified Name:     fjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */