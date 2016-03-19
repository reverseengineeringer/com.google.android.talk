import android.content.Context;
import java.util.Iterator;
import java.util.List;

final class brh
{
  private final Context a;
  private final bri b;
  private dur c;
  private bjb d;
  private List<String> e;
  
  public brh(Context paramContext, bri parambri)
  {
    a = paramContext;
    b = parambri;
  }
  
  private boolean a()
  {
    return (d != null) && (e != null);
  }
  
  private void b()
  {
    aen.b(a());
    int i = ((hpu)ilh.a(a, hpu.class)).a();
    bkw localbkw;
    if (aal.f(d.b))
    {
      localbkw = bkw.b;
      if (localbkw != bkw.a) {
        break label102;
      }
      c = dur.a(a, i, localbkw, d.b, d.c);
      label75:
      break label112;
    }
    for (;;)
    {
      if (b != null) {
        b.a(c);
      }
      return;
      localbkw = bkw.a;
      break;
      label102:
      Iterator localIterator = e.iterator();
      label112:
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        c = dur.a(a, i, localbkw, d.b, str);
        if (c.a) {
          break label75;
        }
      }
    }
  }
  
  public void a(bjb parambjb)
  {
    d = parambjb;
    if (a()) {
      b();
    }
  }
  
  public void a(List<String> paramList)
  {
    e = paramList;
    if (a()) {
      b();
    }
  }
}

/* Location:
 * Qualified Name:     brh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */