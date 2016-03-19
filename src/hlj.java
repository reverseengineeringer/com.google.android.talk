import android.content.Intent;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class hlj
  extends hku
{
  private final List<hku> a = new CopyOnWriteArrayList();
  
  public void a(int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramInt);
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramInt, paramString);
    }
  }
  
  public void a(Intent paramIntent)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramIntent);
    }
  }
  
  public void a(hku paramhku)
  {
    a.add(paramhku);
  }
  
  public void a(hkw paramhkw)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramhkw);
    }
  }
  
  public void a(hkx paramhkx)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramhkx);
    }
  }
  
  public void a(hky paramhky)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramhky);
    }
  }
  
  public void a(juk paramjuk)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramjuk);
    }
  }
  
  public void a(kju paramkju)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).a(paramkju);
    }
  }
  
  public void b(hku paramhku)
  {
    a.remove(paramhku);
  }
  
  public void b(hkx paramhkx)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).b(paramhkx);
    }
  }
  
  public void c(hkx paramhkx)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).c(paramhkx);
    }
  }
  
  public void d(hkx paramhkx)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((hku)localIterator.next()).d(paramhkx);
    }
  }
}

/* Location:
 * Qualified Name:     hlj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */