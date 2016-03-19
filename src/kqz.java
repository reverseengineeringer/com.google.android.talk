import java.util.Collection;
import java.util.Set;

final class kqz
  extends kqv
  implements Set<V>
{
  kqz(K paramK, Set<V> paramSet)
  {
    super(paramK, paramSet, localCollection, null);
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    boolean bool1;
    if (paramCollection.isEmpty()) {
      bool1 = false;
    }
    int i;
    boolean bool2;
    do
    {
      return bool1;
      i = size();
      bool2 = aen.a((Set)c, paramCollection);
      bool1 = bool2;
    } while (!bool2);
    int j = c.size();
    a.b = (j - i + a.b);
    b();
    return bool2;
  }
}

/* Location:
 * Qualified Name:     kqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */