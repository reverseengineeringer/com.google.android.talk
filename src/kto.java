import java.util.Arrays;
import java.util.Comparator;
import java.util.Map.Entry;
import java.util.NavigableMap;

public final class kto<K, V>
  extends ktt<K, V>
  implements NavigableMap<K, V>
{
  private static final Comparator<Comparable> d = kxf.a;
  private static final kto<Comparable, Object> e = new kto(ktu.a(kxf.a), kxr.a);
  private static final long serialVersionUID = 0L;
  final transient kxu<K> b;
  final transient ksf<V> c;
  private transient kto<K, V> f;
  
  private kto(kxu<K> paramkxu, ksf<V> paramksf)
  {
    this(paramkxu, paramksf, null);
  }
  
  private kto(kxu<K> paramkxu, ksf<V> paramksf, kto<K, V> paramkto)
  {
    b = paramkxu;
    c = paramksf;
    f = paramkto;
  }
  
  private kto<K, V> a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 0) && (paramInt2 == size())) {
      return this;
    }
    if (paramInt1 == paramInt2) {
      return a(comparator());
    }
    return new kto(b.a(paramInt1, paramInt2), c.a(paramInt1, paramInt2));
  }
  
  private kto<K, V> a(K paramK, boolean paramBoolean)
  {
    return a(0, b.e(fii.a(paramK), paramBoolean));
  }
  
  private kto<K, V> a(K paramK1, boolean paramBoolean1, K paramK2, boolean paramBoolean2)
  {
    fii.a(paramK1);
    fii.a(paramK2);
    if (comparator().compare(paramK1, paramK2) <= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "expected fromKey <= toKey but %s > %s", new Object[] { paramK1, paramK2 });
      return a(paramK2, paramBoolean2).b(paramK1, paramBoolean1);
    }
  }
  
  static <K, V> kto<K, V> a(Comparator<? super K> paramComparator)
  {
    if (kxf.a.equals(paramComparator)) {
      return e;
    }
    return new kto(ktu.a(paramComparator), kxr.a);
  }
  
  static <K, V> kto<K, V> a(Comparator<? super K> paramComparator, K paramK, V paramV)
  {
    return new kto(new kxu(ksf.a(paramK), (Comparator)fii.a(paramComparator)), ksf.a(paramV));
  }
  
  static <K, V> kto<K, V> a(Comparator<? super K> paramComparator, boolean paramBoolean, Map.Entry<K, V>[] paramArrayOfEntry, int paramInt)
  {
    Object[] arrayOfObject1;
    Object[] arrayOfObject2;
    Object localObject1;
    int i;
    Object localObject2;
    switch (paramInt)
    {
    default: 
      arrayOfObject1 = new Object[paramInt];
      arrayOfObject2 = new Object[paramInt];
      Arrays.sort(paramArrayOfEntry, 0, paramInt, kxj.a(paramComparator).d());
      localObject1 = paramArrayOfEntry[0].getKey();
      arrayOfObject1[0] = localObject1;
      arrayOfObject2[0] = paramArrayOfEntry[0].getValue();
      i = 1;
      if (i >= paramInt) {
        break label204;
      }
      localObject2 = paramArrayOfEntry[i].getKey();
      Object localObject3 = paramArrayOfEntry[i].getValue();
      aal.e(localObject2, localObject3);
      arrayOfObject1[i] = localObject2;
      arrayOfObject2[i] = localObject3;
      if (paramComparator.compare(localObject1, localObject2) == 0) {
        break;
      }
    }
    for (paramBoolean = true;; paramBoolean = false)
    {
      a(paramBoolean, "key", paramArrayOfEntry[(i - 1)], paramArrayOfEntry[i]);
      i += 1;
      localObject1 = localObject2;
      break;
      return a(paramComparator);
      return a(paramComparator, paramArrayOfEntry[0].getKey(), paramArrayOfEntry[0].getValue());
    }
    label204:
    return new kto(new kxu(new kxr(arrayOfObject1), paramComparator), new kxr(arrayOfObject2));
  }
  
  private kto<K, V> b(K paramK, boolean paramBoolean)
  {
    return a(b.f(fii.a(paramK), paramBoolean), size());
  }
  
  public krz<V> c()
  {
    return c;
  }
  
  public Map.Entry<K, V> ceilingEntry(K paramK)
  {
    return b(paramK, true).firstEntry();
  }
  
  public K ceilingKey(K paramK)
  {
    return (K)kwj.b(ceilingEntry(paramK));
  }
  
  public Comparator<? super K> comparator()
  {
    return b.comparator();
  }
  
  boolean d()
  {
    return (b.e()) || (c.e());
  }
  
  public kth<Map.Entry<K, V>> e()
  {
    return super.e();
  }
  
  kth<Map.Entry<K, V>> f()
  {
    if (isEmpty()) {
      return kxt.a;
    }
    return new ktp(this);
  }
  
  public Map.Entry<K, V> firstEntry()
  {
    if (isEmpty()) {
      return null;
    }
    return (Map.Entry)e().f().get(0);
  }
  
  public K firstKey()
  {
    return (K)b.first();
  }
  
  public Map.Entry<K, V> floorEntry(K paramK)
  {
    return a(paramK, true).lastEntry();
  }
  
  public K floorKey(K paramK)
  {
    return (K)kwj.b(floorEntry(paramK));
  }
  
  public V get(Object paramObject)
  {
    int i = b.a(paramObject);
    if (i == -1) {
      return null;
    }
    return (V)c.get(i);
  }
  
  public Map.Entry<K, V> higherEntry(K paramK)
  {
    return b(paramK, false).firstEntry();
  }
  
  public K higherKey(K paramK)
  {
    return (K)kwj.b(higherEntry(paramK));
  }
  
  public Map.Entry<K, V> lastEntry()
  {
    if (isEmpty()) {
      return null;
    }
    return (Map.Entry)e().f().get(size() - 1);
  }
  
  public K lastKey()
  {
    return (K)b.last();
  }
  
  public Map.Entry<K, V> lowerEntry(K paramK)
  {
    return a(paramK, false).lastEntry();
  }
  
  public K lowerKey(K paramK)
  {
    return (K)kwj.b(lowerEntry(paramK));
  }
  
  @Deprecated
  public final Map.Entry<K, V> pollFirstEntry()
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final Map.Entry<K, V> pollLastEntry()
  {
    throw new UnsupportedOperationException();
  }
  
  public int size()
  {
    return c.size();
  }
  
  Object writeReplace()
  {
    return new kts(this);
  }
}

/* Location:
 * Qualified Name:     kto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */