import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

public final class kpf<K, V>
  extends ReentrantLock
{
  final LocalCache<K, V> a;
  public volatile int b;
  long c;
  public int d;
  int e;
  public volatile AtomicReferenceArray<LocalCache.ReferenceEntry<K, V>> f;
  final long g;
  final ReferenceQueue<K> h;
  final ReferenceQueue<V> i;
  final Queue<LocalCache.ReferenceEntry<K, V>> j;
  final AtomicInteger k;
  final Queue<LocalCache.ReferenceEntry<K, V>> l;
  final Queue<LocalCache.ReferenceEntry<K, V>> m;
  
  private LocalCache.ReferenceEntry<K, V> a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    if (paramReferenceEntry1.getKey() == null) {}
    kps localkps;
    Object localObject;
    do
    {
      return null;
      localkps = paramReferenceEntry1.getValueReference();
      localObject = localkps.get();
    } while ((localObject == null) && (localkps.d()));
    paramReferenceEntry1 = a.p.a(this, paramReferenceEntry1, paramReferenceEntry2);
    paramReferenceEntry1.setValueReference(localkps.a(i, localObject, paramReferenceEntry1));
    return paramReferenceEntry1;
  }
  
  private LocalCache.ReferenceEntry<K, V> a(V paramV)
  {
    Object localObject2;
    Object localObject3;
    Object localObject4;
    kqd localkqd;
    a(localObject2, localObject3, ((kps)localObject4).a(), localkqd);
    Object localObject1;
    l.remove(localObject1);
    m.remove(localObject1);
    if (((kps)localObject4).c())
    {
      ((kps)localObject4).a(null);
      return paramV;
    }
    return b(paramV, (LocalCache.ReferenceEntry)localObject1);
  }
  
  private LocalCache.ReferenceEntry<K, V> a(Object paramObject, int paramInt, long paramLong)
  {
    paramObject = d(paramObject, paramInt);
    if (paramObject == null) {
      return null;
    }
    if (a.b((LocalCache.ReferenceEntry)paramObject, paramLong))
    {
      a(paramLong);
      return null;
    }
    return (LocalCache.ReferenceEntry<K, V>)paramObject;
  }
  
  private LocalCache.ReferenceEntry<K, V> a(K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return a.p.a(this, fii.a(paramK), paramInt, paramReferenceEntry);
  }
  
  private V a()
  {
    Object localObject1;
    int n;
    kpc localkpc = a(localObject1, n, true);
    if (localkpc == null) {
      return null;
    }
    Object localObject2 = localkpc.a(localObject1, (aak)localObject2);
    ((lbb)localObject2).a(new kpg(this, localObject1, n, localkpc, (lbb)localObject2), lbh.a);
    if (((lbb)localObject2).isDone()) {
      try
      {
        localObject1 = aal.a((Future)localObject2);
        return (V)localObject1;
      }
      catch (Throwable localThrowable) {}
    }
    return null;
  }
  
  private kpc<K, V> a(K paramK, int paramInt, boolean paramBoolean)
  {
    lock();
    try
    {
      long l1 = a.o.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = f;
      int n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (Object localObject1 = localReferenceEntry; localObject1 != null; localObject1 = ((LocalCache.ReferenceEntry)localObject1).getNext())
      {
        Object localObject2 = ((LocalCache.ReferenceEntry)localObject1).getKey();
        if ((((LocalCache.ReferenceEntry)localObject1).getHash() == paramInt) && (localObject2 != null) && (a.e.a(paramK, localObject2)))
        {
          paramK = ((LocalCache.ReferenceEntry)localObject1).getValueReference();
          if (!paramK.c())
          {
            long l2 = ((LocalCache.ReferenceEntry)localObject1).getWriteTime();
            long l3 = a.m;
            if (l1 - l2 >= l3) {}
          }
          else
          {
            return null;
          }
          d += 1;
          paramK = new kpc(paramK);
          ((LocalCache.ReferenceEntry)localObject1).setValueReference(paramK);
          return paramK;
        }
      }
      d += 1;
      localObject1 = new kpc();
      paramK = a(paramK, paramInt, localReferenceEntry);
      paramK.setValueReference((kps)localObject1);
      localAtomicReferenceArray.set(n, paramK);
      return (kpc<K, V>)localObject1;
    }
    finally
    {
      unlock();
      h();
    }
  }
  
  private void a(long paramLong)
  {
    if (tryLock()) {}
    try
    {
      b(paramLong);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  private void a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    if (!a.a()) {}
    do
    {
      return;
      while (c <= g)
      {
        e();
        if ((paramReferenceEntry.getValueReference().a() > g) && (!a(paramReferenceEntry, paramReferenceEntry.getHash(), kqd.e))) {
          throw new AssertionError();
        }
      }
      paramReferenceEntry = f();
    } while (a(paramReferenceEntry, paramReferenceEntry.getHash(), kqd.e));
    throw new AssertionError();
  }
  
  private void a(V paramV)
  {
    kps localkps = paramV.getValueReference();
    int n = a.j.x();
    if (n >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Weights must be non-negative");
      Object localObject1;
      paramV.setValueReference(a.h.a(this, paramV, localObject1, n));
      e();
      long l1 = c;
      c = (n + l1);
      Object localObject2;
      if (a.f()) {
        paramV.setAccessTime(localObject2);
      }
      if (a.e()) {
        paramV.setWriteTime(localObject2);
      }
      m.add(paramV);
      l.add(paramV);
      localkps.a(localObject1);
      return;
    }
  }
  
  private void a(V paramV)
  {
    int n;
    c -= n;
    kqd localkqd;
    localkqd.a();
    if (a.n != LocalCache.s)
    {
      Object localObject;
      paramV = new kqj(paramV, localObject, localkqd);
      a.n.offer(paramV);
    }
  }
  
  private boolean a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt, kqd paramkqd)
  {
    int n = b;
    AtomicReferenceArray localAtomicReferenceArray = f;
    paramInt &= localAtomicReferenceArray.length() - 1;
    LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(paramInt);
    for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext()) {
      if (localReferenceEntry1 == paramReferenceEntry)
      {
        d += 1;
        paramReferenceEntry = a(localReferenceEntry2, localReferenceEntry1, localReferenceEntry1.getKey(), localReferenceEntry1.getValueReference().get(), localReferenceEntry1.getValueReference(), paramkqd);
        n = b;
        localAtomicReferenceArray.set(paramInt, paramReferenceEntry);
        b = (n - 1);
        return true;
      }
    }
    return false;
  }
  
  private boolean a(K paramK, int paramInt, kpc<K, V> paramkpc)
  {
    lock();
    for (;;)
    {
      try
      {
        AtomicReferenceArray localAtomicReferenceArray = f;
        int n = paramInt & localAtomicReferenceArray.length() - 1;
        LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
        localReferenceEntry1 = localReferenceEntry2;
        if (localReferenceEntry1 == null) {
          break;
        }
        Object localObject = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() != paramInt) || (localObject == null) || (!a.e.a(paramK, localObject))) {
          break label161;
        }
        if (localReferenceEntry1.getValueReference() == paramkpc)
        {
          if (paramkpc.d())
          {
            localReferenceEntry1.setValueReference(paramkpc.f());
            return true;
          }
          localAtomicReferenceArray.set(n, b(localReferenceEntry2, localReferenceEntry1));
          continue;
        }
        unlock();
      }
      finally
      {
        unlock();
        h();
      }
      h();
      return false;
      label161:
      LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry1.getNext();
    }
    unlock();
    h();
    return false;
  }
  
  private boolean a(K paramK, int paramInt, kpc<K, V> paramkpc, V paramV)
  {
    lock();
    for (;;)
    {
      int n;
      try
      {
        long l1 = a.o.a();
        c(l1);
        int i1 = b + 1;
        n = i1;
        if (i1 > e)
        {
          g();
          n = b + 1;
        }
        Object localObject3 = f;
        i1 = paramInt & ((AtomicReferenceArray)localObject3).length() - 1;
        Object localObject2 = (LocalCache.ReferenceEntry)((AtomicReferenceArray)localObject3).get(i1);
        Object localObject1 = localObject2;
        if (localObject1 != null)
        {
          Object localObject4 = ((LocalCache.ReferenceEntry)localObject1).getKey();
          if ((((LocalCache.ReferenceEntry)localObject1).getHash() == paramInt) && (localObject4 != null) && (a.e.a(paramK, localObject4)))
          {
            localObject2 = ((LocalCache.ReferenceEntry)localObject1).getValueReference();
            localObject3 = ((kps)localObject2).get();
            if ((paramkpc == localObject2) || ((localObject3 == null) && (localObject2 != LocalCache.r)))
            {
              d += 1;
              if (paramkpc.d())
              {
                if (localObject3 == null)
                {
                  localObject2 = kqd.c;
                  a(paramK, localObject3, paramkpc.a(), (kqd)localObject2);
                  paramInt = n - 1;
                  a((LocalCache.ReferenceEntry)localObject1, paramV, l1);
                  b = paramInt;
                  a((LocalCache.ReferenceEntry)localObject1);
                  return true;
                }
                localObject2 = kqd.b;
                continue;
              }
            }
            else
            {
              a(paramK, paramV, 0, kqd.b);
              return false;
            }
          }
          else
          {
            localObject1 = ((LocalCache.ReferenceEntry)localObject1).getNext();
          }
        }
        else
        {
          d += 1;
          paramK = a(paramK, paramInt, (LocalCache.ReferenceEntry)localObject2);
          a(paramK, paramV, l1);
          ((AtomicReferenceArray)localObject3).set(i1, paramK);
          b = n;
          a(paramK);
          return true;
        }
      }
      finally
      {
        unlock();
        h();
      }
      paramInt = n;
    }
  }
  
  private LocalCache.ReferenceEntry<K, V> b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    int n = b;
    LocalCache.ReferenceEntry localReferenceEntry = paramReferenceEntry2.getNext();
    Object localObject = paramReferenceEntry1;
    paramReferenceEntry1 = localReferenceEntry;
    if (localObject != paramReferenceEntry2)
    {
      localReferenceEntry = a((LocalCache.ReferenceEntry)localObject, paramReferenceEntry1);
      if (localReferenceEntry != null) {
        paramReferenceEntry1 = localReferenceEntry;
      }
      for (;;)
      {
        localObject = ((LocalCache.ReferenceEntry)localObject).getNext();
        break;
        b((LocalCache.ReferenceEntry)localObject);
        n -= 1;
      }
    }
    b = n;
    return paramReferenceEntry1;
  }
  
  private void b(long paramLong)
  {
    e();
    LocalCache.ReferenceEntry localReferenceEntry;
    do
    {
      localReferenceEntry = (LocalCache.ReferenceEntry)l.peek();
      if ((localReferenceEntry == null) || (!a.b(localReferenceEntry, paramLong))) {
        break;
      }
    } while (a(localReferenceEntry, localReferenceEntry.getHash(), kqd.d));
    throw new AssertionError();
    do
    {
      localReferenceEntry = (LocalCache.ReferenceEntry)m.peek();
      if ((localReferenceEntry == null) || (!a.b(localReferenceEntry, paramLong))) {
        break;
      }
    } while (a(localReferenceEntry, localReferenceEntry.getHash(), kqd.d));
    throw new AssertionError();
  }
  
  private void b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    Object localObject = paramReferenceEntry.getKey();
    paramReferenceEntry.getHash();
    a(localObject, paramReferenceEntry.getValueReference().get(), paramReferenceEntry.getValueReference().a(), kqd.c);
    l.remove(paramReferenceEntry);
    m.remove(paramReferenceEntry);
  }
  
  private void b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    if (a.f()) {
      paramReferenceEntry.setAccessTime(paramLong);
    }
    m.add(paramReferenceEntry);
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
  
  private void c(long paramLong)
  {
    if (tryLock()) {}
    try
    {
      d();
      b(paramLong);
      k.set(0);
      return;
    }
    finally
    {
      unlock();
    }
  }
  
  private LocalCache.ReferenceEntry<K, V> d(Object paramObject, int paramInt)
  {
    Object localObject1 = f;
    localObject1 = (LocalCache.ReferenceEntry)((AtomicReferenceArray)localObject1).get(((AtomicReferenceArray)localObject1).length() - 1 & paramInt);
    if (localObject1 != null)
    {
      Object localObject2;
      if (((LocalCache.ReferenceEntry)localObject1).getHash() == paramInt)
      {
        localObject2 = ((LocalCache.ReferenceEntry)localObject1).getKey();
        if (localObject2 != null) {
          break label62;
        }
        c();
      }
      label62:
      while (!a.e.a(paramObject, localObject2))
      {
        localObject1 = ((LocalCache.ReferenceEntry)localObject1).getNext();
        break;
      }
      return (LocalCache.ReferenceEntry<K, V>)localObject1;
    }
    return null;
  }
  
  private void d()
  {
    int i1 = 0;
    int n;
    if (a.g()) {
      n = 0;
    }
    for (;;)
    {
      Object localObject = h.poll();
      if (localObject != null)
      {
        localObject = (LocalCache.ReferenceEntry)localObject;
        a.a((LocalCache.ReferenceEntry)localObject);
        n += 1;
        if (n != 16) {}
      }
      else
      {
        if (a.h())
        {
          n = i1;
          do
          {
            localObject = i.poll();
            if (localObject == null) {
              break;
            }
            localObject = (kps)localObject;
            a.a((kps)localObject);
            i1 = n + 1;
            n = i1;
          } while (i1 != 16);
        }
        return;
      }
    }
  }
  
  private void e()
  {
    for (;;)
    {
      LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)j.poll();
      if (localReferenceEntry == null) {
        break;
      }
      if (m.contains(localReferenceEntry)) {
        m.add(localReferenceEntry);
      }
    }
  }
  
  private LocalCache.ReferenceEntry<K, V> f()
  {
    Iterator localIterator = m.iterator();
    while (localIterator.hasNext())
    {
      LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localIterator.next();
      if (localReferenceEntry.getValueReference().a() > 0) {
        return localReferenceEntry;
      }
    }
    throw new AssertionError();
  }
  
  private void g()
  {
    AtomicReferenceArray localAtomicReferenceArray1 = f;
    int i4 = localAtomicReferenceArray1.length();
    if (i4 >= 1073741824) {
      return;
    }
    int n = b;
    AtomicReferenceArray localAtomicReferenceArray2 = new AtomicReferenceArray(i4 << 1);
    e = (localAtomicReferenceArray2.length() * 3 / 4);
    int i5 = localAtomicReferenceArray2.length() - 1;
    int i2 = 0;
    LocalCache.ReferenceEntry localReferenceEntry3;
    LocalCache.ReferenceEntry localReferenceEntry2;
    int i1;
    if (i2 < i4)
    {
      localReferenceEntry3 = (LocalCache.ReferenceEntry)localAtomicReferenceArray1.get(i2);
      if (localReferenceEntry3 == null) {
        break label280;
      }
      localReferenceEntry2 = localReferenceEntry3.getNext();
      i1 = localReferenceEntry3.getHash() & i5;
      if (localReferenceEntry2 == null) {
        localAtomicReferenceArray2.set(i1, localReferenceEntry3);
      }
    }
    label130:
    label277:
    label280:
    for (;;)
    {
      i2 += 1;
      break;
      LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry3;
      if (localReferenceEntry2 != null)
      {
        int i3 = localReferenceEntry2.getHash() & i5;
        if (i3 == i1) {
          break label277;
        }
        localReferenceEntry1 = localReferenceEntry2;
        i1 = i3;
      }
      for (;;)
      {
        localReferenceEntry2 = localReferenceEntry2.getNext();
        break label130;
        localAtomicReferenceArray2.set(i1, localReferenceEntry1);
        localReferenceEntry2 = localReferenceEntry3;
        i1 = n;
        n = i1;
        if (localReferenceEntry2 == localReferenceEntry1) {
          break;
        }
        n = localReferenceEntry2.getHash() & i5;
        localReferenceEntry3 = a(localReferenceEntry2, (LocalCache.ReferenceEntry)localAtomicReferenceArray2.get(n));
        if (localReferenceEntry3 != null) {
          localAtomicReferenceArray2.set(n, localReferenceEntry3);
        }
        for (n = i1;; n = i1 - 1)
        {
          localReferenceEntry2 = localReferenceEntry2.getNext();
          i1 = n;
          break;
          b(localReferenceEntry2);
        }
        f = localAtomicReferenceArray2;
        b = n;
        return;
      }
    }
  }
  
  private void h()
  {
    if (!isHeldByCurrentThread()) {
      a.j();
    }
  }
  
  public V a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
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
    if (a.b(paramReferenceEntry, paramLong))
    {
      a(paramLong);
      return null;
    }
    return (V)localObject;
  }
  
  public V a(Object paramObject, int paramInt)
  {
    try
    {
      if (b != 0)
      {
        long l1 = a.o.a();
        paramObject = a(paramObject, paramInt, l1);
        if (paramObject == null) {
          return null;
        }
        Object localObject1 = ((LocalCache.ReferenceEntry)paramObject).getValueReference().get();
        if (localObject1 != null)
        {
          if (a.f()) {
            ((LocalCache.ReferenceEntry)paramObject).setAccessTime(l1);
          }
          j.add(paramObject);
          Object localObject2 = ((LocalCache.ReferenceEntry)paramObject).getKey();
          aak localaak = a.q;
          if ((a.d()) && (l1 - ((LocalCache.ReferenceEntry)paramObject).getWriteTime() > a.m) && (!((LocalCache.ReferenceEntry)paramObject).getValueReference().c()))
          {
            paramObject = a(localObject2, paramInt, localaak);
            if (paramObject == null) {}
          }
          for (;;)
          {
            return (V)paramObject;
            paramObject = localObject1;
          }
        }
        c();
      }
      return null;
    }
    finally
    {
      b();
    }
  }
  
  public V a(K paramK, int paramInt, V paramV)
  {
    lock();
    try
    {
      long l1 = a.o.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = f;
      int n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramK, localObject1)))
        {
          kps localkps = localReferenceEntry1.getValueReference();
          Object localObject2 = localkps.get();
          if (localObject2 == null)
          {
            if (localkps.d())
            {
              paramInt = b;
              d += 1;
              paramK = a(localReferenceEntry2, localReferenceEntry1, localObject1, localObject2, localkps, kqd.c);
              paramInt = b;
              localAtomicReferenceArray.set(n, paramK);
              b = (paramInt - 1);
            }
            return null;
          }
          d += 1;
          a(paramK, localObject2, localkps.a(), kqd.b);
          a(localReferenceEntry1, paramV, l1);
          a(localReferenceEntry1);
          return (V)localObject2;
        }
      }
      return null;
    }
    finally
    {
      unlock();
      h();
    }
  }
  
  public V a(K paramK, int paramInt, V paramV, boolean paramBoolean)
  {
    lock();
    try
    {
      long l1 = a.o.a();
      c(l1);
      if (b + 1 > e)
      {
        g();
        n = b;
      }
      Object localObject3 = f;
      int n = paramInt & ((AtomicReferenceArray)localObject3).length() - 1;
      Object localObject2 = (LocalCache.ReferenceEntry)((AtomicReferenceArray)localObject3).get(n);
      for (Object localObject1 = localObject2; localObject1 != null; localObject1 = ((LocalCache.ReferenceEntry)localObject1).getNext())
      {
        Object localObject4 = ((LocalCache.ReferenceEntry)localObject1).getKey();
        if ((((LocalCache.ReferenceEntry)localObject1).getHash() == paramInt) && (localObject4 != null) && (a.e.a(paramK, localObject4)))
        {
          localObject2 = ((LocalCache.ReferenceEntry)localObject1).getValueReference();
          localObject3 = ((kps)localObject2).get();
          if (localObject3 == null)
          {
            d += 1;
            if (((kps)localObject2).d())
            {
              a(paramK, localObject3, ((kps)localObject2).a(), kqd.c);
              a((LocalCache.ReferenceEntry)localObject1, paramV, l1);
            }
            for (paramInt = b;; paramInt = b + 1)
            {
              b = paramInt;
              a((LocalCache.ReferenceEntry)localObject1);
              return null;
              a((LocalCache.ReferenceEntry)localObject1, paramV, l1);
            }
          }
          if (paramBoolean)
          {
            b((LocalCache.ReferenceEntry)localObject1, l1);
            return (V)localObject3;
          }
          d += 1;
          a(paramK, localObject3, ((kps)localObject2).a(), kqd.b);
          a((LocalCache.ReferenceEntry)localObject1, paramV, l1);
          a((LocalCache.ReferenceEntry)localObject1);
          return (V)localObject3;
        }
      }
      d += 1;
      paramK = a(paramK, paramInt, (LocalCache.ReferenceEntry)localObject2);
      a(paramK, paramV, l1);
      ((AtomicReferenceArray)localObject3).set(n, paramK);
      b += 1;
      a(paramK);
      return null;
    }
    finally
    {
      unlock();
      h();
    }
  }
  
  V a(K paramK, int paramInt, kpc<K, V> paramkpc, lbb<V> paramlbb)
  {
    lbb<V> locallbb = null;
    try
    {
      paramlbb = aal.a(paramlbb);
      if (paramlbb == null)
      {
        locallbb = paramlbb;
        String str = String.valueOf(paramK);
        locallbb = paramlbb;
        throw new koj(String.valueOf(str).length() + 35 + "CacheLoader returned null for key " + str + ".");
      }
    }
    finally
    {
      if (locallbb == null)
      {
        paramkpc.e();
        a(paramK, paramInt, paramkpc);
      }
    }
    locallbb = paramlbb;
    paramkpc.e();
    locallbb = paramlbb;
    a(paramK, paramInt, paramkpc, paramlbb);
    if (paramlbb == null)
    {
      paramkpc.e();
      a(paramK, paramInt, paramkpc);
    }
    return paramlbb;
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
        c(a.o.a());
        AtomicReferenceArray localAtomicReferenceArray = f;
        n = 0;
        if (n >= localAtomicReferenceArray.length()) {
          break label280;
        }
        LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
        if (localReferenceEntry != null)
        {
          if (localReferenceEntry.getValueReference().d())
          {
            Object localObject2 = localReferenceEntry.getKey();
            Object localObject3 = localReferenceEntry.getValueReference().get();
            if ((localObject2 == null) || (localObject3 == null))
            {
              localkqd = kqd.c;
              localReferenceEntry.getHash();
              a(localObject2, localObject3, localReferenceEntry.getValueReference().a(), localkqd);
            }
          }
          else
          {
            localReferenceEntry = localReferenceEntry.getNext();
            continue;
          }
          kqd localkqd = kqd.a;
          continue;
          if (n < localAtomicReferenceArray.length())
          {
            localAtomicReferenceArray.set(n, null);
            n += 1;
            continue;
          }
          if ((a.g()) && (h.poll() != null)) {
            continue;
          }
          if ((a.h()) && (i.poll() != null)) {
            continue;
          }
          l.clear();
          m.clear();
          k.set(0);
          d += 1;
          b = 0;
          return;
        }
      }
      finally
      {
        unlock();
        h();
      }
      n += 1;
      continue;
      label280:
      int n = 0;
    }
  }
  
  public boolean a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, int paramInt)
  {
    lock();
    try
    {
      int n = b;
      AtomicReferenceArray localAtomicReferenceArray = f;
      paramInt &= localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(paramInt);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext()) {
        if (localReferenceEntry1 == paramReferenceEntry)
        {
          d += 1;
          paramReferenceEntry = a(localReferenceEntry2, localReferenceEntry1, localReferenceEntry1.getKey(), localReferenceEntry1.getValueReference().get(), localReferenceEntry1.getValueReference(), kqd.c);
          n = b;
          localAtomicReferenceArray.set(paramInt, paramReferenceEntry);
          b = (n - 1);
          return true;
        }
      }
      return false;
    }
    finally
    {
      unlock();
      h();
    }
  }
  
  public boolean a(K paramK, int paramInt, V paramV1, V paramV2)
  {
    lock();
    try
    {
      long l1 = a.o.a();
      c(l1);
      AtomicReferenceArray localAtomicReferenceArray = f;
      int n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramK, localObject1)))
        {
          kps localkps = localReferenceEntry1.getValueReference();
          Object localObject2 = localkps.get();
          if (localObject2 == null)
          {
            if (localkps.d())
            {
              paramInt = b;
              d += 1;
              paramK = a(localReferenceEntry2, localReferenceEntry1, localObject1, localObject2, localkps, kqd.c);
              paramInt = b;
              localAtomicReferenceArray.set(n, paramK);
              b = (paramInt - 1);
            }
            return false;
          }
          if (a.f.a(paramV1, localObject2))
          {
            d += 1;
            a(paramK, localObject2, localkps.a(), kqd.b);
            a(localReferenceEntry1, paramV2, l1);
            a(localReferenceEntry1);
            return true;
          }
          b(localReferenceEntry1, l1);
          return false;
        }
      }
      return false;
    }
    finally
    {
      unlock();
      h();
    }
  }
  
  public boolean a(K paramK, int paramInt, kps<K, V> paramkps)
  {
    boolean bool = false;
    lock();
    try
    {
      int n = b;
      AtomicReferenceArray localAtomicReferenceArray = f;
      n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject != null) && (a.e.a(paramK, localObject)))
        {
          if (localReferenceEntry1.getValueReference() == paramkps)
          {
            d += 1;
            paramK = a(localReferenceEntry2, localReferenceEntry1, localObject, paramkps.get(), paramkps, kqd.c);
            paramInt = b;
            localAtomicReferenceArray.set(n, paramK);
            b = (paramInt - 1);
            unlock();
            if (!isHeldByCurrentThread()) {
              h();
            }
            bool = true;
            return bool;
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
        h();
      }
    }
  }
  
  void b()
  {
    if ((k.incrementAndGet() & 0x3F) == 0)
    {
      c(a.o.a());
      h();
    }
  }
  
  public boolean b(Object paramObject, int paramInt)
  {
    boolean bool = false;
    try
    {
      if (b != 0)
      {
        paramObject = a(paramObject, paramInt, a.o.a());
        if (paramObject == null) {
          return false;
        }
        paramObject = ((LocalCache.ReferenceEntry)paramObject).getValueReference().get();
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
      c(a.o.a());
      int n = b;
      AtomicReferenceArray localAtomicReferenceArray = f;
      n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramObject1, localObject1)))
        {
          kps localkps = localReferenceEntry1.getValueReference();
          Object localObject2 = localkps.get();
          if (a.f.a(paramObject2, localObject2))
          {
            paramObject1 = kqd.a;
            d += 1;
            paramObject2 = a(localReferenceEntry2, localReferenceEntry1, localObject1, localObject2, localkps, (kqd)paramObject1);
            paramInt = b;
            localAtomicReferenceArray.set(n, paramObject2);
            b = (paramInt - 1);
            paramObject2 = kqd.a;
            if (paramObject1 != paramObject2) {
              break label242;
            }
          }
          label242:
          for (boolean bool = true;; bool = false)
          {
            return bool;
            if ((localObject2 == null) && (localkps.d()))
            {
              paramObject1 = kqd.c;
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
      h();
    }
  }
  
  public V c(Object paramObject, int paramInt)
  {
    lock();
    try
    {
      c(a.o.a());
      int n = b;
      AtomicReferenceArray localAtomicReferenceArray = f;
      n = paramInt & localAtomicReferenceArray.length() - 1;
      LocalCache.ReferenceEntry localReferenceEntry2 = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(n);
      for (LocalCache.ReferenceEntry localReferenceEntry1 = localReferenceEntry2; localReferenceEntry1 != null; localReferenceEntry1 = localReferenceEntry1.getNext())
      {
        Object localObject1 = localReferenceEntry1.getKey();
        if ((localReferenceEntry1.getHash() == paramInt) && (localObject1 != null) && (a.e.a(paramObject, localObject1)))
        {
          kps localkps = localReferenceEntry1.getValueReference();
          Object localObject2 = localkps.get();
          if (localObject2 != null) {}
          for (paramObject = kqd.a;; paramObject = kqd.c)
          {
            d += 1;
            paramObject = a(localReferenceEntry2, localReferenceEntry1, localObject1, localObject2, localkps, (kqd)paramObject);
            paramInt = b;
            localAtomicReferenceArray.set(n, paramObject);
            b = (paramInt - 1);
            return (V)localObject2;
            if (!localkps.d()) {
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
      h();
    }
  }
}

/* Location:
 * Qualified Name:     kpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */