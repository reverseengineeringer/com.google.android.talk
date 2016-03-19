import java.util.List;
import java.util.ListIterator;

final class kqy
  extends kqw
  implements ListIterator<V>
{
  kqy(kqx paramkqx)
  {
    super(paramkqx);
  }
  
  public kqy(kqx paramkqx, int paramInt)
  {
    super(paramkqx, paramkqx.g().listIterator(paramInt));
  }
  
  public void add(V paramV)
  {
    boolean bool = d.isEmpty();
    ((ListIterator)b()).add(paramV);
    kqm.b(d.g);
    if (bool) {
      d.d();
    }
  }
  
  public boolean hasPrevious()
  {
    return ((ListIterator)b()).hasPrevious();
  }
  
  public int nextIndex()
  {
    return ((ListIterator)b()).nextIndex();
  }
  
  public V previous()
  {
    return (V)((ListIterator)b()).previous();
  }
  
  public int previousIndex()
  {
    return ((ListIterator)b()).previousIndex();
  }
  
  public void set(V paramV)
  {
    ((ListIterator)b()).set(paramV);
  }
}

/* Location:
 * Qualified Name:     kqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */