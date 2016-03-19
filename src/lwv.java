import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

class lwv<K extends Comparable<K>, V>
  extends AbstractMap<K, V>
{
  List<lxa> a;
  Map<K, V> b;
  private final int c;
  private boolean d;
  private volatile lxc e;
  
  private lwv(int paramInt)
  {
    c = paramInt;
    a = Collections.emptyList();
    b = Collections.emptyMap();
  }
  
  private int a(K paramK)
  {
    int i = a.size() - 1;
    int j;
    if (i >= 0)
    {
      j = paramK.compareTo(((lxa)a.get(i)).a());
      if (j > 0) {
        return -(i + 2);
      }
      if (j == 0) {
        return i;
      }
    }
    for (;;)
    {
      if (j <= i)
      {
        int k = (j + i) / 2;
        int m = paramK.compareTo(((lxa)a.get(k)).a());
        if (m < 0) {
          i = k - 1;
        } else if (m > 0) {
          j = k + 1;
        } else {
          return k;
        }
      }
      else
      {
        return -(j + 1);
        j = 0;
      }
    }
  }
  
  static <FieldDescriptorType extends lvx<FieldDescriptorType>> lwv<FieldDescriptorType, Object> a(int paramInt)
  {
    return new lww(paramInt);
  }
  
  private SortedMap<K, V> f()
  {
    e();
    if ((b.isEmpty()) && (!(b instanceof TreeMap))) {
      b = new TreeMap();
    }
    return (SortedMap)b;
  }
  
  public V a(K paramK, V paramV)
  {
    e();
    int i = a(paramK);
    if (i >= 0) {
      return (V)((lxa)a.get(i)).setValue(paramV);
    }
    e();
    if ((a.isEmpty()) && (!(a instanceof ArrayList))) {
      a = new ArrayList(c);
    }
    i = -(i + 1);
    if (i >= c) {
      return (V)f().put(paramK, paramV);
    }
    if (a.size() == c)
    {
      lxa locallxa = (lxa)a.remove(c - 1);
      f().put(locallxa.a(), locallxa.getValue());
    }
    a.add(i, new lxa(this, paramK, paramV));
    return null;
  }
  
  public void a()
  {
    if (!d) {
      if (!b.isEmpty()) {
        break label34;
      }
    }
    label34:
    for (Map localMap = Collections.emptyMap();; localMap = Collections.unmodifiableMap(b))
    {
      b = localMap;
      d = true;
      return;
    }
  }
  
  public Map.Entry<K, V> b(int paramInt)
  {
    return (Map.Entry)a.get(paramInt);
  }
  
  public boolean b()
  {
    return d;
  }
  
  public int c()
  {
    return a.size();
  }
  
  V c(int paramInt)
  {
    e();
    Object localObject = ((lxa)a.remove(paramInt)).getValue();
    if (!b.isEmpty())
    {
      Iterator localIterator = f().entrySet().iterator();
      a.add(new lxa(this, (Map.Entry)localIterator.next()));
      localIterator.remove();
    }
    return (V)localObject;
  }
  
  public void clear()
  {
    e();
    if (!a.isEmpty()) {
      a.clear();
    }
    if (!b.isEmpty()) {
      b.clear();
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    paramObject = (Comparable)paramObject;
    return (a((Comparable)paramObject) >= 0) || (b.containsKey(paramObject));
  }
  
  public Iterable<Map.Entry<K, V>> d()
  {
    if (b.isEmpty()) {
      return lwx.b;
    }
    return b.entrySet();
  }
  
  void e()
  {
    if (d) {
      throw new UnsupportedOperationException();
    }
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    if (e == null) {
      e = new lxc(this);
    }
    return e;
  }
  
  public V get(Object paramObject)
  {
    paramObject = (Comparable)paramObject;
    int i = a((Comparable)paramObject);
    if (i >= 0) {
      return (V)((lxa)a.get(i)).getValue();
    }
    return (V)b.get(paramObject);
  }
  
  public V remove(Object paramObject)
  {
    e();
    paramObject = (Comparable)paramObject;
    int i = a((Comparable)paramObject);
    if (i >= 0) {
      return (V)c(i);
    }
    if (b.isEmpty()) {
      return null;
    }
    return (V)b.remove(paramObject);
  }
  
  public int size()
  {
    return a.size() + b.size();
  }
}

/* Location:
 * Qualified Name:     lwv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */