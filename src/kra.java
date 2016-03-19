import java.util.Comparator;
import java.util.SortedSet;

final class kra
  extends kqv
  implements SortedSet<V>
{
  kra(K paramK, SortedSet<V> paramSortedSet, kqv paramkqv)
  {
    super(paramK, paramSortedSet, paramkqv, localkqv);
  }
  
  public Comparator<? super V> comparator()
  {
    return ((SortedSet)e()).comparator();
  }
  
  public V first()
  {
    a();
    return (V)((SortedSet)e()).first();
  }
  
  public SortedSet<V> headSet(V paramV)
  {
    a();
    kqm localkqm = a;
    Object localObject = c();
    SortedSet localSortedSet = ((SortedSet)e()).headSet(paramV);
    if (f() == null) {}
    for (paramV = this;; paramV = f()) {
      return new kra(localkqm, localObject, localSortedSet, paramV);
    }
  }
  
  public V last()
  {
    a();
    return (V)((SortedSet)e()).last();
  }
  
  public SortedSet<V> subSet(V paramV1, V paramV2)
  {
    a();
    kqm localkqm = a;
    Object localObject = c();
    paramV2 = ((SortedSet)e()).subSet(paramV1, paramV2);
    if (f() == null) {}
    for (paramV1 = this;; paramV1 = f()) {
      return new kra(localkqm, localObject, paramV2, paramV1);
    }
  }
  
  public SortedSet<V> tailSet(V paramV)
  {
    a();
    kqm localkqm = a;
    Object localObject = c();
    SortedSet localSortedSet = ((SortedSet)e()).tailSet(paramV);
    if (f() == null) {}
    for (paramV = this;; paramV = f()) {
      return new kra(localkqm, localObject, localSortedSet, paramV);
    }
  }
}

/* Location:
 * Qualified Name:     kra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */