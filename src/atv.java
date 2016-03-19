import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class atv
  implements atn
{
  private final Set<auw<?>> a = Collections.newSetFromMap(new WeakHashMap());
  
  public List<auw<?>> a()
  {
    return new ArrayList(a);
  }
  
  public void a(auw<?> paramauw)
  {
    a.add(paramauw);
  }
  
  public void b()
  {
    a.clear();
  }
  
  public void b(auw<?> paramauw)
  {
    a.remove(paramauw);
  }
  
  public void e()
  {
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((auw)localIterator.next()).e();
    }
  }
  
  public void h_()
  {
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((auw)localIterator.next()).h_();
    }
  }
  
  public void s_()
  {
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((auw)localIterator.next()).s_();
    }
  }
}

/* Location:
 * Qualified Name:     atv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */