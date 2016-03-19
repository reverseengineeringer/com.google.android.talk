import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

public final class kvo<K, V>
  extends ReentrantLock
{
  final MapMakerInternalMap<K, V> a;
  public volatile int b;
  public int c;
  int d;
  public volatile AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> e;
  final int f;
  final ReferenceQueue<K> g;
  final ReferenceQueue<V> h;
  final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> i;
  final AtomicInteger j = new AtomicInteger();
  final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> k;
  final Queue<MapMakerInternalMap.ReferenceEntry<K, V>> l;
  
  public kvo(MapMakerInternalMap<K, V> paramMapMakerInternalMap, int paramInt1, int paramInt2)
  {
    a = paramMapMakerInternalMap;
    f = paramInt2;
    Object localObject1 = a(paramInt1);
    d = (((AtomicReferenceArray)localObject1).length() * 3 / 4);
    if (d == f) {
      d += 1;
    }
    e = ((AtomicReferenceArray)localObject1);
    if (paramMapMakerInternalMap.e())
    {
      localObject1 = new ReferenceQueue();
      g = ((ReferenceQueue)localObject1);
      localObject1 = localObject2;
      if (paramMapMakerInternalMap.f()) {
        localObject1 = new ReferenceQueue();
      }
      h = ((ReferenceQueue)localObject1);
      if ((!paramMapMakerInternalMap.a()) && (!paramMapMakerInternalMap.d())) {
        break label200;
      }
      localObject1 = new ConcurrentLinkedQueue();
      label145:
      i = ((Queue)localObject1);
      if (!paramMapMakerInternalMap.a()) {
        break label208;
      }
      localObject1 = new kvd();
      label167:
      k = ((Queue)localObject1);
      if (!paramMapMakerInternalMap.b()) {
        break label216;
      }
    }
    label200:
    label208:
    label216:
    for (paramMapMakerInternalMap = new kvg();; paramMapMakerInternalMap = MapMakerInternalMap.q)
    {
      l = paramMapMakerInternalMap;
      return;
      localObject1 = null;
      break;
      localObject1 = MapMakerInternalMap.q;
      break label145;
      localObject1 = MapMakerInternalMap.q;
      break label167;
    }
  }
  
  private MapMakerInternalMap.ReferenceEntry<K, V> a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    if (paramReferenceEntry1.getKey() == null) {}
    kwb localkwb;
    Object localObject;
    do
    {
      return null;
      localkwb = paramReferenceEntry1.getValueReference();
      localObject = localkwb.get();
    } while (localObject == null);
    paramReferenceEntry1 = a.n.a(this, paramReferenceEntry1, paramReferenceEntry2);
    paramReferenceEntry1.setValueReference(localkwb.a(h, localObject, paramReferenceEntry1));
    return paramReferenceEntry1;
  }
  
  private static AtomicReferenceArray<MapMakerInternalMap.ReferenceEntry<K, V>> a(int paramInt)
  {
    return new AtomicReferenceArray(paramInt);
  }
  
  private void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    paramReferenceEntry.setExpirationTime(a.o.a() + paramLong);
  }
  
  private void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, V paramV)
  {
    paramReferenceEntry.setValueReference(a.h.a(this, paramReferenceEntry, paramV));
    e();
    k.add(paramReferenceEntry);
    if (a.b()) {
      if (!a.d()) {
        break label80;
      }
    }
    label80:
    for (long l1 = a.j;; l1 = a.k)
    {
      a(paramReferenceEntry, l1);
      l.add(paramReferenceEntry);
      return;
    }
  }
  
  private void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, kuh paramkuh)
  {
    Object localObject = paramReferenceEntry.getKey();
    paramReferenceEntry.getHash();
    a(localObject, paramReferenceEntry.getValueReference().get(), paramkuh);
  }
  
  private void a(V paramV)
  {
    if (a.l != MapMakerInternalMap.q)
    {
      Object localObject;
      kuh localkuh;
      paramV = new kun(paramV, localObject, localkuh);
      a.l.offer(paramV);
    }
  }
  
  private boolean a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt, kuh paramkuh)
  {
    int m = b;
    AtomicReferenceArray localAtomicReferenceArray = e;
    paramInt &= localAtomicReferenceArray.length() - 1;
    MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(paramInt);
    for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext()) {
      if (localReferenceEntry1 == paramReferenceEntry)
      {
        c += 1;
        a(localReferenceEntry1.getKey(), localReferenceEntry1.getValueReference().get(), paramkuh);
        paramReferenceEntry = b(localReferenceEntry2, localReferenceEntry1);
        m = b;
        localAtomicReferenceArray.set(paramInt, paramReferenceEntry);
        b = (m - 1);
        return true;
      }
    }
    return false;
  }
  
  private static boolean a(kwb<K, V> paramkwb)
  {
    return paramkwb.get() == null;
  }
  
  private MapMakerInternalMap.ReferenceEntry<K, V> b(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    k.remove(paramReferenceEntry2);
    l.remove(paramReferenceEntry2);
    int m = b;
    MapMakerInternalMap.ReferenceEntry localReferenceEntry = paramReferenceEntry2.getNext();
    Object localObject = paramReferenceEntry1;
    paramReferenceEntry1 = localReferenceEntry;
    if (localObject != paramReferenceEntry2)
    {
      localReferenceEntry = a((MapMakerInternalMap.ReferenceEntry)localObject, paramReferenceEntry1);
      if (localReferenceEntry != null) {
        paramReferenceEntry1 = localReferenceEntry;
      }
      for (;;)
      {
        localObject = ((MapMakerInternalMap.ReferenceEntry)localObject).getNext();
        break;
        c((MapMakerInternalMap.ReferenceEntry)localObject);
        m -= 1;
      }
    }
    b = m;
    return paramReferenceEntry1;
  }
  
  private void b(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    k.add(paramReferenceEntry);
    if (a.d())
    {
      a(paramReferenceEntry, a.j);
      l.add(paramReferenceEntry);
    }
  }
  
  private void c()
  {
    if (tryLock()) {}
    try
    {
      d();
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  private void c(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    a(paramReferenceEntry, kuh.c);
    k.remove(paramReferenceEntry);
    l.remove(paramReferenceEntry);
  }
  
  private MapMakerInternalMap.ReferenceEntry<K, V> d(Object paramObject, int paramInt)
  {
    if (b != 0)
    {
      Object localObject1 = e;
      localObject1 = (MapMakerInternalMap.ReferenceEntry)((AtomicReferenceArray)localObject1).get(((AtomicReferenceArray)localObject1).length() - 1 & paramInt);
      if (localObject1 != null)
      {
        Object localObject2;
        if (((MapMakerInternalMap.ReferenceEntry)localObject1).getHash() == paramInt)
        {
          localObject2 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getKey();
          if (localObject2 != null) {
            break label69;
          }
          c();
        }
        label69:
        while (!a.e.a(paramObject, localObject2))
        {
          localObject1 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getNext();
          break;
        }
        return (MapMakerInternalMap.ReferenceEntry<K, V>)localObject1;
      }
    }
    return null;
  }
  
  private void d()
  {
    int n = 0;
    int m;
    if (a.e()) {
      m = 0;
    }
    for (;;)
    {
      Object localObject = g.poll();
      if (localObject != null)
      {
        localObject = (MapMakerInternalMap.ReferenceEntry)localObject;
        a.a((MapMakerInternalMap.ReferenceEntry)localObject);
        m += 1;
        if (m != 16) {}
      }
      else
      {
        if (a.f())
        {
          m = n;
          do
          {
            localObject = h.poll();
            if (localObject == null) {
              break;
            }
            localObject = (kwb)localObject;
            a.a((kwb)localObject);
            n = m + 1;
            m = n;
          } while (n != 16);
        }
        return;
      }
    }
  }
  
  private MapMakerInternalMap.ReferenceEntry<K, V> e(Object paramObject, int paramInt)
  {
    paramObject = d(paramObject, paramInt);
    if (paramObject == null) {
      return null;
    }
    if ((a.b()) && (a.c((MapMakerInternalMap.ReferenceEntry)paramObject)))
    {
      f();
      return null;
    }
    return (MapMakerInternalMap.ReferenceEntry<K, V>)paramObject;
  }
  
  private void e()
  {
    for (;;)
    {
      MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)i.poll();
      if (localReferenceEntry == null) {
        break;
      }
      if (k.contains(localReferenceEntry)) {
        k.add(localReferenceEntry);
      }
      if ((a.d()) && (l.contains(localReferenceEntry))) {
        l.add(localReferenceEntry);
      }
    }
  }
  
  private void f()
  {
    if (tryLock()) {}
    try
    {
      g();
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  private void g()
  {
    e();
    if (l.isEmpty()) {
      return;
    }
    long l1 = a.o.a();
    MapMakerInternalMap.ReferenceEntry localReferenceEntry;
    do
    {
      localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)l.peek();
      if ((localReferenceEntry == null) || (!a.a(localReferenceEntry, l1))) {
        break;
      }
    } while (a(localReferenceEntry, localReferenceEntry.getHash(), kuh.d));
    throw new AssertionError();
  }
  
  private void h()
  {
    if (tryLock()) {}
    try
    {
      d();
      g();
      j.set(0);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  private void i()
  {
    if (!isHeldByCurrentThread()) {
      a.h();
    }
  }
  
  public V a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    if (paramReferenceEntry.getKey() == null)
    {
      c();
      return null;
    }
    Object localObject = paramReferenceEntry.getValueReference().get();
    if (localObject == null)
    {
      c();
      return null;
    }
    if ((a.b()) && (a.c(paramReferenceEntry)))
    {
      f();
      return null;
    }
    return (V)localObject;
  }
  
  /* Error */
  public V a(Object paramObject, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: iload_2
    //   3: invokespecial 297	kvo:e	(Ljava/lang/Object;I)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnonnull +9 -> 17
    //   11: aload_0
    //   12: invokevirtual 299	kvo:b	()V
    //   15: aconst_null
    //   16: areturn
    //   17: aload_1
    //   18: invokeinterface 107 1 0
    //   23: invokeinterface 112 1 0
    //   28: astore_3
    //   29: aload_3
    //   30: ifnull +42 -> 72
    //   33: aload_0
    //   34: getfield 40	kvo:a	Lcom/google/common/collect/MapMakerInternalMap;
    //   37: invokevirtual 73	com/google/common/collect/MapMakerInternalMap:d	()Z
    //   40: ifeq +15 -> 55
    //   43: aload_0
    //   44: aload_1
    //   45: aload_0
    //   46: getfield 40	kvo:a	Lcom/google/common/collect/MapMakerInternalMap;
    //   49: getfield 168	com/google/common/collect/MapMakerInternalMap:j	J
    //   52: invokespecial 170	kvo:a	(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;J)V
    //   55: aload_0
    //   56: getfield 78	kvo:i	Ljava/util/Queue;
    //   59: aload_1
    //   60: invokeinterface 165 2 0
    //   65: pop
    //   66: aload_0
    //   67: invokevirtual 299	kvo:b	()V
    //   70: aload_3
    //   71: areturn
    //   72: aload_0
    //   73: invokespecial 238	kvo:c	()V
    //   76: goto -10 -> 66
    //   79: astore_1
    //   80: aload_0
    //   81: invokevirtual 299	kvo:b	()V
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	kvo
    //   0	86	1	paramObject	Object
    //   0	86	2	paramInt	int
    //   28	43	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	7	79	finally
    //   17	29	79	finally
    //   33	55	79	finally
    //   55	66	79	finally
    //   72	76	79	finally
  }
  
  public V a(K paramK, int paramInt, V paramV)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = e;
      int m = paramInt & localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramK, localObject1)))
        {
          kwb localkwb = localReferenceEntry1.getValueReference();
          Object localObject2 = localkwb.get();
          if (localObject2 == null)
          {
            if (a(localkwb))
            {
              paramInt = b;
              c += 1;
              a(localObject1, localObject2, kuh.c);
              paramK = b(localReferenceEntry2, localReferenceEntry1);
              paramInt = b;
              localAtomicReferenceArray.set(m, paramK);
              b = (paramInt - 1);
            }
            return null;
          }
          c += 1;
          a(paramK, localObject2, kuh.b);
          a(localReferenceEntry1, paramV);
          return (V)localObject2;
        }
      }
      return null;
    }
    finally
    {
      unlock();
      i();
    }
  }
  
  public V a(K paramK, int paramInt, V paramV, boolean paramBoolean)
  {
    lock();
    for (;;)
    {
      int n;
      int i1;
      Object localObject3;
      try
      {
        h();
        n = b + 1;
        m = n;
        Object localObject4;
        if (n > d)
        {
          localObject4 = e;
          int i3 = ((AtomicReferenceArray)localObject4).length();
          if (i3 < 1073741824)
          {
            m = b;
            AtomicReferenceArray localAtomicReferenceArray = a(i3 << 1);
            d = (localAtomicReferenceArray.length() * 3 / 4);
            int i4 = localAtomicReferenceArray.length() - 1;
            i1 = 0;
            if (i1 < i3)
            {
              localObject3 = (MapMakerInternalMap.ReferenceEntry)((AtomicReferenceArray)localObject4).get(i1);
              n = m;
              if (localObject3 == null) {
                break label683;
              }
              localObject1 = ((MapMakerInternalMap.ReferenceEntry)localObject3).getNext();
              n = ((MapMakerInternalMap.ReferenceEntry)localObject3).getHash() & i4;
              if (localObject1 != null) {
                break label702;
              }
              localAtomicReferenceArray.set(n, localObject3);
              break label693;
              if (localObject1 != null)
              {
                int i2 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getHash() & i4;
                if (i2 == n) {
                  break label690;
                }
                localObject2 = localObject1;
                n = i2;
                localObject1 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getNext();
                continue;
              }
              localAtomicReferenceArray.set(n, localObject2);
              localObject1 = localObject3;
              n = m;
              if (localObject1 == localObject2) {
                break label683;
              }
              n = ((MapMakerInternalMap.ReferenceEntry)localObject1).getHash() & i4;
              localObject3 = a((MapMakerInternalMap.ReferenceEntry)localObject1, (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(n));
              if (localObject3 != null)
              {
                localAtomicReferenceArray.set(n, localObject3);
                localObject1 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getNext();
                continue;
              }
              c((MapMakerInternalMap.ReferenceEntry)localObject1);
              m -= 1;
              continue;
            }
            e = localAtomicReferenceArray;
            b = m;
          }
          m = b + 1;
        }
        localObject3 = e;
        n = paramInt & ((AtomicReferenceArray)localObject3).length() - 1;
        localObject2 = (MapMakerInternalMap.ReferenceEntry)((AtomicReferenceArray)localObject3).get(n);
        Object localObject1 = localObject2;
        if (localObject1 != null)
        {
          localObject4 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getKey();
          if ((((MapMakerInternalMap.ReferenceEntry)localObject1).getHash() == paramInt) && (localObject4 != null) && (a.e.a(paramK, localObject4)))
          {
            localObject2 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getValueReference().get();
            if (localObject2 == null)
            {
              c += 1;
              a((MapMakerInternalMap.ReferenceEntry)localObject1, paramV);
              a(paramK, localObject2, kuh.c);
              b = b;
              return null;
            }
            if (paramBoolean)
            {
              b((MapMakerInternalMap.ReferenceEntry)localObject1);
              return (V)localObject2;
            }
            c += 1;
            a(paramK, localObject2, kuh.b);
            a((MapMakerInternalMap.ReferenceEntry)localObject1, paramV);
            return (V)localObject2;
          }
          localObject1 = ((MapMakerInternalMap.ReferenceEntry)localObject1).getNext();
          continue;
        }
        c += 1;
        paramK = a.n.a(this, paramK, paramInt, (MapMakerInternalMap.ReferenceEntry)localObject2);
        a(paramK, paramV);
        ((AtomicReferenceArray)localObject3).set(n, paramK);
        if ((!a.a()) || (b < f)) {
          break label672;
        }
        e();
        paramK = (MapMakerInternalMap.ReferenceEntry)k.remove();
        if (!a(paramK, paramK.getHash(), kuh.e)) {
          throw new AssertionError();
        }
      }
      finally
      {
        unlock();
        i();
      }
      paramInt = 1;
      if (paramInt != 0) {}
      for (paramInt = b + 1;; paramInt = m)
      {
        b = paramInt;
        unlock();
        i();
        return null;
        label672:
        paramInt = 0;
        break;
      }
      label683:
      int m = n;
      break label693;
      label690:
      continue;
      label693:
      i1 += 1;
      continue;
      label702:
      Object localObject2 = localObject3;
    }
  }
  
  public void a()
  {
    if (b != 0) {
      lock();
    }
    for (;;)
    {
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = e;
        if (a.l == MapMakerInternalMap.q) {
          break label206;
        }
        m = 0;
        if (m >= localAtomicReferenceArray.length()) {
          break label206;
        }
        MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
        if (localReferenceEntry != null)
        {
          localReferenceEntry.getValueReference();
          a(localReferenceEntry, kuh.a);
          localReferenceEntry = localReferenceEntry.getNext();
          continue;
          if (m < localAtomicReferenceArray.length())
          {
            localAtomicReferenceArray.set(m, null);
            m += 1;
            continue;
          }
          if ((a.e()) && (g.poll() != null)) {
            continue;
          }
          if ((a.f()) && (h.poll() != null)) {
            continue;
          }
          k.clear();
          l.clear();
          j.set(0);
          c += 1;
          b = 0;
          return;
        }
      }
      finally
      {
        unlock();
        i();
      }
      m += 1;
      continue;
      label206:
      int m = 0;
    }
  }
  
  public boolean a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
  {
    lock();
    try
    {
      int m = b;
      AtomicReferenceArray localAtomicReferenceArray = e;
      paramInt &= localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(paramInt);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext()) {
        if (localReferenceEntry1 == paramReferenceEntry)
        {
          c += 1;
          a(localReferenceEntry1.getKey(), localReferenceEntry1.getValueReference().get(), kuh.c);
          paramReferenceEntry = b(localReferenceEntry2, localReferenceEntry1);
          m = b;
          localAtomicReferenceArray.set(paramInt, paramReferenceEntry);
          b = (m - 1);
          return true;
        }
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }
  
  public boolean a(K paramK, int paramInt, V paramV1, V paramV2)
  {
    lock();
    try
    {
      h();
      AtomicReferenceArray localAtomicReferenceArray = e;
      int m = paramInt & localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramK, localObject1)))
        {
          kwb localkwb = localReferenceEntry1.getValueReference();
          Object localObject2 = localkwb.get();
          if (localObject2 == null)
          {
            if (a(localkwb))
            {
              paramInt = b;
              c += 1;
              a(localObject1, localObject2, kuh.c);
              paramK = b(localReferenceEntry2, localReferenceEntry1);
              paramInt = b;
              localAtomicReferenceArray.set(m, paramK);
              b = (paramInt - 1);
            }
            return false;
          }
          if (a.f.a(paramV1, localObject2))
          {
            c += 1;
            a(paramK, localObject2, kuh.b);
            a(localReferenceEntry1, paramV2);
            return true;
          }
          b(localReferenceEntry1);
          return false;
        }
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }
  
  public boolean a(K paramK, int paramInt, kwb<K, V> paramkwb)
  {
    lock();
    try
    {
      int m = b;
      AtomicReferenceArray localAtomicReferenceArray = e;
      m = paramInt & localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject != null) && (a.e.a(paramK, localObject)))
        {
          if (localReferenceEntry1.getValueReference() == paramkwb)
          {
            c += 1;
            a(paramK, paramkwb.get(), kuh.c);
            paramK = b(localReferenceEntry2, localReferenceEntry1);
            paramInt = b;
            localAtomicReferenceArray.set(m, paramK);
            b = (paramInt - 1);
            return true;
          }
          return false;
        }
      }
      return false;
    }
    finally
    {
      unlock();
      if (!isHeldByCurrentThread()) {
        i();
      }
    }
  }
  
  void b()
  {
    if ((j.incrementAndGet() & 0x3F) == 0)
    {
      h();
      i();
    }
  }
  
  public boolean b(Object paramObject, int paramInt)
  {
    boolean bool = false;
    try
    {
      if (b != 0)
      {
        paramObject = e(paramObject, paramInt);
        if (paramObject == null) {
          return false;
        }
        paramObject = ((MapMakerInternalMap.ReferenceEntry)paramObject).getValueReference().get();
        if (paramObject != null) {
          bool = true;
        }
        return bool;
      }
      return false;
    }
    finally
    {
      b();
    }
  }
  
  public boolean b(Object paramObject1, int paramInt, Object paramObject2)
  {
    lock();
    try
    {
      h();
      int m = b;
      AtomicReferenceArray localAtomicReferenceArray = e;
      m = paramInt & localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramObject1, localObject1)))
        {
          paramObject1 = localReferenceEntry1.getValueReference();
          Object localObject2 = ((kwb)paramObject1).get();
          if (a.f.a(paramObject2, localObject2))
          {
            paramObject1 = kuh.a;
            c += 1;
            a(localObject1, localObject2, (kuh)paramObject1);
            paramObject2 = b(localReferenceEntry2, localReferenceEntry1);
            paramInt = b;
            localAtomicReferenceArray.set(m, paramObject2);
            b = (paramInt - 1);
            paramObject2 = kuh.a;
            if (paramObject1 != paramObject2) {
              break label224;
            }
          }
          label224:
          for (boolean bool = true;; bool = false)
          {
            return bool;
            if (a((kwb)paramObject1))
            {
              paramObject1 = kuh.c;
              break;
            }
            return false;
          }
        }
      }
      return false;
    }
    finally
    {
      unlock();
      i();
    }
  }
  
  public V c(Object paramObject, int paramInt)
  {
    lock();
    try
    {
      h();
      int m = b;
      AtomicReferenceArray localAtomicReferenceArray = e;
      m = paramInt & localAtomicReferenceArray.length() - 1;
      MapMakerInternalMap.ReferenceEntry localReferenceEntry2 = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(m);
      for (MapMakerInternalMap.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramObject, localObject1)))
        {
          paramObject = localReferenceEntry1.getValueReference();
          Object localObject2 = ((kwb)paramObject).get();
          if (localObject2 != null) {}
          for (paramObject = kuh.a;; paramObject = kuh.c)
          {
            c += 1;
            a(localObject1, localObject2, (kuh)paramObject);
            paramObject = b(localReferenceEntry2, localReferenceEntry1);
            paramInt = b;
            localAtomicReferenceArray.set(m, paramObject);
            b = (paramInt - 1);
            return (V)localObject2;
            if (!a((kwb)paramObject)) {
              break;
            }
          }
          return null;
        }
      }
      return null;
    }
    finally
    {
      unlock();
      i();
    }
  }
}

/* Location:
 * Qualified Name:     kvo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */