import android.accounts.Account;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class afn
  implements afq
{
  private static String a = "vCard";
  private final List<aeu> b = new ArrayList();
  private aeu c;
  private final int d;
  private final Account e;
  private final List<afp> f = new ArrayList();
  
  public afn()
  {
    this(-1073741824, null);
  }
  
  public afn(int paramInt)
  {
    this(paramInt, null);
  }
  
  @Deprecated
  private afn(int paramInt, Account paramAccount)
  {
    d = paramInt;
    e = null;
  }
  
  public void a()
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext()) {
      ((afp)localIterator.next()).a();
    }
  }
  
  public void a(afp paramafp)
  {
    f.add(paramafp);
  }
  
  public void a(afx paramafx)
  {
    c.a(paramafx);
  }
  
  public void b()
  {
    Iterator localIterator = f.iterator();
    while (localIterator.hasNext()) {
      ((afp)localIterator.next()).b();
    }
  }
  
  public void c()
  {
    c = null;
    b.clear();
  }
  
  public void d()
  {
    c = new aeu(d, e);
    b.add(c);
  }
  
  public void e()
  {
    c.a();
    Object localObject = f.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((afp)((Iterator)localObject).next()).a(c);
    }
    int i = b.size();
    if (i > 1)
    {
      localObject = (aeu)b.get(i - 2);
      ((aeu)localObject).a(c);
    }
    for (c = ((aeu)localObject);; c = null)
    {
      b.remove(i - 1);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     afn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */