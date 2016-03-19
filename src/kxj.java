import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map.Entry;

public abstract class kxj<T>
  implements Comparator<T>
{
  public static <T> kxj<T> a(Comparator<T> paramComparator)
  {
    if ((paramComparator instanceof kxj)) {
      return (kxj)paramComparator;
    }
    return new krh(paramComparator);
  }
  
  public <E extends T> ksf<E> a(Iterable<E> paramIterable)
  {
    paramIterable = aal.b(paramIterable).toArray();
    int j = paramIterable.length;
    int i = 0;
    while (i < j)
    {
      fii.a(paramIterable[i]);
      i += 1;
    }
    Arrays.sort(paramIterable, this);
    return ksf.b(paramIterable, paramIterable.length);
  }
  
  public <S extends T> kxj<S> a()
  {
    return new kxg(this);
  }
  
  public <F> kxj<F> a(knj<F, ? extends T> paramknj)
  {
    return new krf(paramknj, this);
  }
  
  public <S extends T> kxj<S> b()
  {
    return new kxh(this);
  }
  
  public <S extends T> kxj<S> c()
  {
    return new kxw(this);
  }
  
  public abstract int compare(T paramT1, T paramT2);
  
  <T2 extends T> kxj<Map.Entry<T2, ?>> d()
  {
    return a(kwj.a());
  }
}

/* Location:
 * Qualified Name:     kxj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */