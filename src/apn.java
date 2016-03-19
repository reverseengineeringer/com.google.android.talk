import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class apn<Data>
  implements ajf<Data>, ajg<Data>
{
  private final List<ajf<Data>> a;
  private final ic<List<Exception>> b;
  private int c;
  private ahs d;
  private ajg<? super Data> e;
  private List<Exception> f;
  
  apn(List<ajf<Data>> paramList, ic<List<Exception>> paramic)
  {
    b = paramic;
    aal.a(paramList);
    a = paramList;
    c = 0;
  }
  
  private void e()
  {
    if (c < a.size() - 1)
    {
      c += 1;
      a(d, e);
      return;
    }
    e.a(new alm("Fetch failed", new ArrayList(f)));
  }
  
  public void a()
  {
    b.a(f);
    f = null;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ajf)localIterator.next()).a();
    }
  }
  
  public void a(ahs paramahs, ajg<? super Data> paramajg)
  {
    d = paramahs;
    e = paramajg;
    f = ((List)b.a());
    ((ajf)a.get(c)).a(paramahs, this);
  }
  
  public void a(Exception paramException)
  {
    f.add(paramException);
    e();
  }
  
  public void a(Data paramData)
  {
    if (paramData != null)
    {
      e.a(paramData);
      return;
    }
    e();
  }
  
  public void b()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((ajf)localIterator.next()).b();
    }
  }
  
  public air c()
  {
    return ((ajf)a.get(0)).c();
  }
  
  public Class<Data> d()
  {
    return ((ajf)a.get(0)).d();
  }
}

/* Location:
 * Qualified Name:     apn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */