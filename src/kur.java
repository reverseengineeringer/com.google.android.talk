import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;

public class kur<K, V>
  extends krn<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 3L;
  final kvr a;
  final kvr b;
  final kng<Object> c;
  final kng<Object> d;
  final long e;
  final long f;
  final int g;
  final int h;
  final avb i;
  transient ConcurrentMap<K, V> j;
  
  kur(kvr paramkvr1, kvr paramkvr2, kng<Object> paramkng1, kng<Object> paramkng2, long paramLong1, long paramLong2, int paramInt1, int paramInt2, avb paramavb, ConcurrentMap<K, V> paramConcurrentMap)
  {
    a = paramkvr1;
    b = paramkvr2;
    c = paramkng1;
    d = paramkng2;
    e = paramLong1;
    f = paramLong2;
    g = paramInt1;
    h = paramInt2;
    i = paramavb;
    j = paramConcurrentMap;
  }
  
  protected ConcurrentMap<K, V> a()
  {
    return j;
  }
  
  kuf a(ObjectInputStream paramObjectInputStream)
  {
    int k = paramObjectInputStream.readInt();
    paramObjectInputStream = new kuf().a(k).a(a).b(b).a(c).c(h);
    paramObjectInputStream.a(i);
    if (e > 0L) {
      paramObjectInputStream.a(e, TimeUnit.NANOSECONDS);
    }
    if (f > 0L) {
      paramObjectInputStream.b(f, TimeUnit.NANOSECONDS);
    }
    if (g != -1) {
      paramObjectInputStream.b(g);
    }
    return paramObjectInputStream;
  }
  
  void a(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeInt(j.size());
    Iterator localIterator = j.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramObjectOutputStream.writeObject(localEntry.getKey());
      paramObjectOutputStream.writeObject(localEntry.getValue());
    }
    paramObjectOutputStream.writeObject(null);
  }
  
  void b(ObjectInputStream paramObjectInputStream)
  {
    for (;;)
    {
      Object localObject1 = paramObjectInputStream.readObject();
      if (localObject1 == null) {
        break;
      }
      Object localObject2 = paramObjectInputStream.readObject();
      j.put(localObject1, localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     kur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */