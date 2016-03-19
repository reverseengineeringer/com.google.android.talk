import java.util.Iterator;
import java.util.List;

final class eil
  implements Runnable
{
  boolean a;
  final List<a> b;
  final fkg c;
  final gpx d;
  final fkg e;
  final gpx f;
  
  public eil(List<a> paramList, fkg paramfkg1, gpx paramgpx1, fkg paramfkg2, gpx paramgpx2)
  {
    b = paramList;
    c = paramfkg1;
    d = paramgpx1;
    e = paramfkg2;
    f = paramgpx2;
  }
  
  public void run()
  {
    hbs.a();
    long l1 = System.currentTimeMillis();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
    if (eie.a)
    {
      long l2 = System.currentTimeMillis();
      new StringBuilder(57).append("GmsPeopleCache: onDataBufferReady ").append(l2 - l1).append(" ms");
    }
    if (e != null) {
      e.b();
    }
    if (f != null) {
      f.b();
    }
    a = true;
  }
}

/* Location:
 * Qualified Name:     eil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */