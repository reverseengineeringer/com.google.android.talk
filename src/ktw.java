import java.io.Serializable;
import java.util.Comparator;

final class ktw<E>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final Comparator<? super E> a;
  final Object[] b;
  
  public ktw(Comparator<? super E> paramComparator, Object[] paramArrayOfObject)
  {
    a = paramComparator;
    b = paramArrayOfObject;
  }
  
  Object readResolve()
  {
    return new ktv(a).c(b).b();
  }
}

/* Location:
 * Qualified Name:     ktw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */