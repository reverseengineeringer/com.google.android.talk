import java.util.ArrayList;
import java.util.List;

public final class lwu<E>
  extends lvj<E>
{
  public static final lwu<Object> b;
  private final List<E> c;
  
  static
  {
    lwu locallwu = new lwu();
    b = locallwu;
    a = false;
  }
  
  public lwu()
  {
    c = new ArrayList();
  }
  
  lwu(List<E> paramList)
  {
    c = new ArrayList(paramList);
  }
  
  public void add(int paramInt, E paramE)
  {
    c();
    c.add(paramInt, paramE);
    modCount += 1;
  }
  
  public E get(int paramInt)
  {
    return (E)c.get(paramInt);
  }
  
  public E remove(int paramInt)
  {
    c();
    Object localObject = c.remove(paramInt);
    modCount += 1;
    return (E)localObject;
  }
  
  public E set(int paramInt, E paramE)
  {
    c();
    paramE = c.set(paramInt, paramE);
    modCount += 1;
    return paramE;
  }
  
  public int size()
  {
    return c.size();
  }
}

/* Location:
 * Qualified Name:     lwu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */