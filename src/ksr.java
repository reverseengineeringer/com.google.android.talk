import java.io.Serializable;
import java.util.Iterator;
import java.util.Map.Entry;

class ksr
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  private final Object[] a;
  private final Object[] b;
  
  ksr(ksm<?, ?> paramksm)
  {
    a = new Object[paramksm.size()];
    b = new Object[paramksm.size()];
    paramksm = paramksm.e().a();
    int i = 0;
    while (paramksm.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramksm.next();
      a[i] = localEntry.getKey();
      b[i] = localEntry.getValue();
      i += 1;
    }
  }
  
  Object a(kso<Object, Object> paramkso)
  {
    int i = 0;
    while (i < a.length)
    {
      paramkso.a(a[i], b[i]);
      i += 1;
    }
    return paramkso.a();
  }
  
  Object readResolve()
  {
    return a(new kso(a.length));
  }
}

/* Location:
 * Qualified Name:     ksr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */