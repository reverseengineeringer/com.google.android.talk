import java.util.Iterator;
import java.util.List;

final class hdt
  implements hcu
{
  hdt() {}
  
  hdt(hgd paramhgd)
  {
    this();
  }
  
  private List<hcu> a()
  {
    return a.a;
  }
  
  public void a(hcs paramhcs)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((hcu)localIterator.next()).a(paramhcs);
    }
  }
  
  public void a(hil paramhil, atn paramatn)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((hcu)localIterator.next()).a(paramhil, paramatn);
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((hcu)localIterator.next()).a(paramString, paramInt);
    }
  }
  
  public void a(kjs paramkjs) {}
  
  public void b(hcs paramhcs)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext()) {
      ((hcu)localIterator.next()).b(paramhcs);
    }
  }
}

/* Location:
 * Qualified Name:     hdt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */