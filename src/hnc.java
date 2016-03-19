import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

final class hnc
{
  final AtomicBoolean a = new AtomicBoolean(false);
  private final hnj b;
  private final List<hna> c = new ArrayList();
  private final List<hna> d = new ArrayList();
  
  hnc(hnj paramhnj, List<hna> paramList)
  {
    b = paramhnj;
    aen.a(paramList);
    paramhnj = paramList.iterator();
    while (paramhnj.hasNext())
    {
      paramList = (hna)paramhnj.next();
      switch (hne.a[paramList.a().ordinal()])
      {
      default: 
        paramList = String.valueOf(paramList.a());
        new StringBuilder(String.valueOf(paramList).length() + 34).append("unknown startup type - sendFrom = ").append(paramList);
        break;
      case 1: 
        c.add(paramList);
        break;
      case 2: 
        d.add(paramList);
      }
    }
  }
  
  void a()
  {
    if (a.getAndSet(true)) {}
    for (;;)
    {
      return;
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        hna localhna = (hna)localIterator.next();
        hms.a.submit(new hnd(this, localhna));
      }
      localIterator = c.iterator();
      while (localIterator.hasNext()) {
        a(((hna)localIterator.next()).b());
      }
    }
  }
  
  void a(mik parammik)
  {
    if (parammik == null) {
      return;
    }
    hml.a(parammik);
    b.a(parammik);
  }
}

/* Location:
 * Qualified Name:     hnc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */