import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

final class atf
  implements atm
{
  private final Set<atn> a = Collections.newSetFromMap(new WeakHashMap());
  private boolean b;
  private boolean c;
  
  void a()
  {
    b = true;
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((atn)localIterator.next()).s_();
    }
  }
  
  public void a(atn paramatn)
  {
    a.add(paramatn);
    if (c)
    {
      paramatn.h_();
      return;
    }
    if (b)
    {
      paramatn.s_();
      return;
    }
    paramatn.e();
  }
  
  void b()
  {
    b = false;
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((atn)localIterator.next()).e();
    }
  }
  
  public void b(atn paramatn)
  {
    a.remove(paramatn);
  }
  
  void c()
  {
    c = true;
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      ((atn)localIterator.next()).h_();
    }
  }
}

/* Location:
 * Qualified Name:     atf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */