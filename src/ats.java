import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class ats
{
  private final Set<auh> a = Collections.newSetFromMap(new WeakHashMap());
  private final List<auh> b = new ArrayList();
  private boolean c;
  
  public void a()
  {
    c = true;
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext())
    {
      auh localauh = (auh)localIterator.next();
      if (localauh.e())
      {
        localauh.b();
        b.add(localauh);
      }
    }
  }
  
  public void a(auh paramauh)
  {
    a.add(paramauh);
    if (!c)
    {
      paramauh.a();
      return;
    }
    b.add(paramauh);
  }
  
  public void b()
  {
    c = false;
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext())
    {
      auh localauh = (auh)localIterator.next();
      if ((!localauh.f()) && (!localauh.h()) && (!localauh.e())) {
        localauh.a();
      }
    }
    b.clear();
  }
  
  public boolean b(auh paramauh)
  {
    if ((paramauh != null) && ((a.remove(paramauh)) || (b.remove(paramauh)))) {}
    for (boolean bool = true;; bool = false)
    {
      if (bool)
      {
        paramauh.c();
        paramauh.i();
      }
      return bool;
    }
  }
  
  public void c()
  {
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext()) {
      b((auh)localIterator.next());
    }
    b.clear();
  }
  
  public void d()
  {
    Iterator localIterator = avq.a(a).iterator();
    while (localIterator.hasNext())
    {
      auh localauh = (auh)localIterator.next();
      if ((!localauh.f()) && (!localauh.h()))
      {
        localauh.b();
        if (!c) {
          localauh.a();
        } else {
          b.add(localauh);
        }
      }
    }
  }
  
  public String toString()
  {
    String str = String.valueOf(super.toString());
    int i = a.size();
    boolean bool = c;
    return String.valueOf(str).length() + 41 + str + "{numRequests=" + i + ", isPaused=" + bool + "}";
  }
}

/* Location:
 * Qualified Name:     ats
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */