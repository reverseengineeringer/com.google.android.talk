import java.util.Arrays;
import java.util.Comparator;

public final class ktv<E>
  extends kti<E>
{
  private final Comparator<? super E> c;
  
  public ktv(Comparator<? super E> paramComparator)
  {
    c = ((Comparator)fii.a(paramComparator));
  }
  
  public ktu<E> b()
  {
    Object localObject1 = a;
    Comparator localComparator = c;
    int m = b;
    if (m == 0)
    {
      localObject1 = ktu.a(localComparator);
      b = ((ktu)localObject1).size();
      return (ktu<E>)localObject1;
    }
    kxi.b((Object[])localObject1, m);
    Arrays.sort((Object[])localObject1, 0, m, localComparator);
    int j = 1;
    int i = 1;
    label64:
    if (j < m)
    {
      Object localObject2 = localObject1[j];
      if (localComparator.compare(localObject2, localObject1[(i - 1)]) == 0) {
        break label142;
      }
      int k = i + 1;
      localObject1[i] = localObject2;
      i = k;
    }
    label142:
    for (;;)
    {
      j += 1;
      break label64;
      Arrays.fill((Object[])localObject1, i, m, null);
      localObject1 = new kxu(ksf.b((Object[])localObject1, i), localComparator);
      break;
    }
  }
  
  public ktv<E> c(E... paramVarArgs)
  {
    super.b(paramVarArgs);
    return this;
  }
}

/* Location:
 * Qualified Name:     ktv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */