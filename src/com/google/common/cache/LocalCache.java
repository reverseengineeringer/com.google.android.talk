package com.google.common.cache;

import a;
import aak;
import aal;
import fii;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.logging.Logger;
import kng;
import koi;
import kok;
import kol;
import koo;
import koy;
import kpb;
import kpe;
import kpf;
import kpi;
import kps;
import kpt;
import kqj;
import kty;

public class LocalCache<K, V>
  extends AbstractMap<K, V>
  implements ConcurrentMap<K, V>
{
  public static final Logger a = Logger.getLogger(LocalCache.class.getName());
  public static final kps<Object, Object> r = new kok();
  public static final Queue<? extends Object> s = new kol();
  final int b;
  final int c;
  public final kpf<K, V>[] d;
  public final kng<Object> e;
  public final kng<Object> f;
  final kpi g;
  public final kpi h;
  final long i;
  public final a j;
  final long k;
  final long l;
  public final long m;
  public final Queue<kqj<K, V>> n;
  public final koi o;
  public final koo p;
  public final aak q;
  Set<K> t;
  Collection<V> u;
  Set<Map.Entry<K, V>> v;
  
  public static <E> ArrayList<E> a(Collection<E> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    kty.a(localArrayList, paramCollection.iterator());
    return localArrayList;
  }
  
  public static <K, V> void a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextInAccessQueue(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousInAccessQueue(paramReferenceEntry1);
  }
  
  public static <K, V> void b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextInWriteQueue(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousInWriteQueue(paramReferenceEntry1);
  }
  
  public static <K, V> LocalCache.ReferenceEntry<K, V> i()
  {
    return kpe.a;
  }
  
  int a(Object paramObject)
  {
    int i1 = e.a(paramObject);
    i1 += (i1 << 15 ^ 0xCD7D);
    i1 ^= i1 >>> 10;
    i1 += (i1 << 3);
    i1 ^= i1 >>> 6;
    i1 += (i1 << 2) + (i1 << 14);
    return i1 ^ i1 >>> 16;
  }
  
  public V a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    if (paramReferenceEntry.getKey() == null) {}
    Object localObject;
    do
    {
      return null;
      localObject = paramReferenceEntry.getValueReference().get();
    } while ((localObject == null) || (b(paramReferenceEntry, paramLong)));
    return (V)localObject;
  }
  
  kpf<K, V> a(int paramInt)
  {
    return d[(paramInt >>> c & b)];
  }
  
  public void a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    int i1 = paramReferenceEntry.getHash();
    a(i1).a(paramReferenceEntry, i1);
  }
  
  public void a(kps<K, V> paramkps)
  {
    LocalCache.ReferenceEntry localReferenceEntry = paramkps.b();
    int i1 = localReferenceEntry.getHash();
    a(i1).a(localReferenceEntry.getKey(), i1, paramkps);
  }
  
  public boolean a()
  {
    return i >= 0L;
  }
  
  boolean b()
  {
    return l > 0L;
  }
  
  public boolean b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    fii.a(paramReferenceEntry);
    if ((c()) && (paramLong - paramReferenceEntry.getAccessTime() >= k)) {}
    while ((b()) && (paramLong - paramReferenceEntry.getWriteTime() >= l)) {
      return true;
    }
    return false;
  }
  
  boolean c()
  {
    return k > 0L;
  }
  
  public void clear()
  {
    kpf[] arrayOfkpf = d;
    int i2 = arrayOfkpf.length;
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfkpf[i1].a();
      i1 += 1;
    }
  }
  
  public boolean containsKey(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    int i1 = a(paramObject);
    return a(i1).b(paramObject, i1);
  }
  
  public boolean containsValue(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    long l3 = o.a();
    kpf[] arrayOfkpf = d;
    int i1 = 0;
    long l1;
    for (long l2 = -1L; i1 < 3; l2 = l1)
    {
      int i4 = arrayOfkpf.length;
      l1 = 0L;
      int i2 = 0;
      while (i2 < i4)
      {
        kpf localkpf = arrayOfkpf[i2];
        int i3 = b;
        AtomicReferenceArray localAtomicReferenceArray = f;
        i3 = 0;
        while (i3 < localAtomicReferenceArray.length())
        {
          for (LocalCache.ReferenceEntry localReferenceEntry = (LocalCache.ReferenceEntry)localAtomicReferenceArray.get(i3); localReferenceEntry != null; localReferenceEntry = localReferenceEntry.getNext())
          {
            Object localObject = localkpf.a(localReferenceEntry, l3);
            if ((localObject != null) && (f.a(paramObject, localObject))) {
              return true;
            }
          }
          i3 += 1;
        }
        l1 += d;
        i2 += 1;
      }
      if (l1 == l2) {
        break;
      }
      i1 += 1;
    }
    return false;
  }
  
  public boolean d()
  {
    return m > 0L;
  }
  
  public boolean e()
  {
    return (b()) || (d());
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    Object localObject = v;
    if (localObject != null) {
      return (Set<Map.Entry<K, V>>)localObject;
    }
    localObject = new koy(this, this);
    v = ((Set)localObject);
    return (Set<Map.Entry<K, V>>)localObject;
  }
  
  public boolean f()
  {
    return c();
  }
  
  public boolean g()
  {
    return g != kpi.a;
  }
  
  public V get(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    int i1 = a(paramObject);
    return (V)a(i1).a(paramObject, i1);
  }
  
  public boolean h()
  {
    return h != kpi.a;
  }
  
  public boolean isEmpty()
  {
    kpf[] arrayOfkpf = d;
    int i1 = 0;
    long l1 = 0L;
    if (i1 < arrayOfkpf.length) {
      if (b == 0) {}
    }
    label90:
    do
    {
      return false;
      l1 += d;
      i1 += 1;
      break;
      if (l1 == 0L) {
        break label96;
      }
      i1 = 0;
      for (;;)
      {
        if (i1 >= arrayOfkpf.length) {
          break label90;
        }
        if (b != 0) {
          break;
        }
        l1 -= d;
        i1 += 1;
      }
    } while (l1 != 0L);
    label96:
    return true;
  }
  
  public void j()
  {
    while ((kqj)n.poll() != null) {}
  }
  
  long k()
  {
    kpf[] arrayOfkpf = d;
    long l1 = 0L;
    int i1 = 0;
    while (i1 < arrayOfkpf.length)
    {
      l1 += Math.max(0, b);
      i1 += 1;
    }
    return l1;
  }
  
  public Set<K> keySet()
  {
    Object localObject = t;
    if (localObject != null) {
      return (Set<K>)localObject;
    }
    localObject = new kpb(this, this);
    t = ((Set)localObject);
    return (Set<K>)localObject;
  }
  
  public V put(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    int i1 = a(paramK);
    return (V)a(i1).a(paramK, i1, paramV, false);
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public V putIfAbsent(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    int i1 = a(paramK);
    return (V)a(i1).a(paramK, i1, paramV, true);
  }
  
  public V remove(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    int i1 = a(paramObject);
    return (V)a(i1).c(paramObject, i1);
  }
  
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    int i1 = a(paramObject1);
    return a(i1).b(paramObject1, i1, paramObject2);
  }
  
  public V replace(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    int i1 = a(paramK);
    return (V)a(i1).a(paramK, i1, paramV);
  }
  
  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    fii.a(paramK);
    fii.a(paramV2);
    if (paramV1 == null) {
      return false;
    }
    int i1 = a(paramK);
    return a(i1).a(paramK, i1, paramV1, paramV2);
  }
  
  public int size()
  {
    return aal.e(k());
  }
  
  public Collection<V> values()
  {
    Object localObject = u;
    if (localObject != null) {
      return (Collection<V>)localObject;
    }
    localObject = new kpt(this, this);
    u = ((Collection)localObject);
    return (Collection<V>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.common.cache.LocalCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */