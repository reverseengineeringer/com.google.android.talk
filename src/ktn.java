import java.util.Comparator;

final class ktn<E>
  extends kxl<E>
  implements kyc<E>
{
  ktn(ktu<E> paramktu, ksf<E> paramksf)
  {
    super(paramktu, paramksf);
  }
  
  ksf<E> b(int paramInt1, int paramInt2)
  {
    return new kxu(super.b(paramInt1, paramInt2), comparator()).f();
  }
  
  public Comparator<? super E> comparator()
  {
    return ((ktu)super.b()).comparator();
  }
  
  public boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public int indexOf(Object paramObject)
  {
    int i = ((ktu)super.b()).a(paramObject);
    if ((i >= 0) && (get(i).equals(paramObject))) {
      return i;
    }
    return -1;
  }
  
  public int lastIndexOf(Object paramObject)
  {
    return indexOf(paramObject);
  }
}

/* Location:
 * Qualified Name:     ktn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */