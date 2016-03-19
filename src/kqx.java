import java.util.Collection;
import java.util.List;
import java.util.ListIterator;

class kqx
  extends kqv
  implements List<V>
{
  kqx(K paramK, List<V> paramList, kqv paramkqv)
  {
    super(paramK, paramList, paramkqv, localkqv);
  }
  
  public void add(int paramInt, V paramV)
  {
    a();
    boolean bool = e().isEmpty();
    g().add(paramInt, paramV);
    kqm.b(g);
    if (bool) {
      d();
    }
  }
  
  public boolean addAll(int paramInt, Collection<? extends V> paramCollection)
  {
    boolean bool1;
    if (paramCollection.isEmpty()) {
      bool1 = false;
    }
    int i;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        i = size();
        bool2 = g().addAll(paramInt, paramCollection);
        bool1 = bool2;
      } while (!bool2);
      paramInt = e().size();
      g.b = (paramInt - i + g.b);
      bool1 = bool2;
    } while (i != 0);
    d();
    return bool2;
  }
  
  List<V> g()
  {
    return (List)e();
  }
  
  public V get(int paramInt)
  {
    a();
    return (V)g().get(paramInt);
  }
  
  public int indexOf(Object paramObject)
  {
    a();
    return g().indexOf(paramObject);
  }
  
  public int lastIndexOf(Object paramObject)
  {
    a();
    return g().lastIndexOf(paramObject);
  }
  
  public ListIterator<V> listIterator()
  {
    a();
    return new kqy(this);
  }
  
  public ListIterator<V> listIterator(int paramInt)
  {
    a();
    return new kqy(this, paramInt);
  }
  
  public V remove(int paramInt)
  {
    a();
    Object localObject = g().remove(paramInt);
    kqm.a(g);
    b();
    return (V)localObject;
  }
  
  public V set(int paramInt, V paramV)
  {
    a();
    return (V)g().set(paramInt, paramV);
  }
  
  public List<V> subList(int paramInt1, int paramInt2)
  {
    a();
    kqm localkqm = g;
    Object localObject2 = c();
    List localList = g().subList(paramInt1, paramInt2);
    if (f() == null) {}
    for (Object localObject1 = this;; localObject1 = f()) {
      return localkqm.a(localObject2, localList, (kqv)localObject1);
    }
  }
}

/* Location:
 * Qualified Name:     kqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */