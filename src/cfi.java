import java.util.Iterator;
import java.util.List;

final class cfi
  implements Runnable
{
  cfi(cfc paramcfc) {}
  
  public void run()
  {
    a.f = true;
    Iterator localIterator = a.a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).g();
    }
    hgd.a().a(new cfm(a));
  }
}

/* Location:
 * Qualified Name:     cfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */