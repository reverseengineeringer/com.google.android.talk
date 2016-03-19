package com.google.common.collect;

import aal;
import avb;
import fii;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.logging.Logger;
import kng;
import koi;
import krr;
import kty;
import kuf;
import kun;
import kuo;
import kup;
import kus;
import kvc;
import kvl;
import kvm;
import kvo;
import kvp;
import kvr;
import kwb;
import kwc;

public class MapMakerInternalMap<K, V>
  extends AbstractMap<K, V>
  implements Serializable, ConcurrentMap<K, V>
{
  public static final kwb<Object, Object> p = new kuo();
  public static final Queue<? extends Object> q = new kup();
  private static final long serialVersionUID = 5L;
  private static final Logger u = Logger.getLogger(MapMakerInternalMap.class.getName());
  final transient int a;
  final transient int b;
  public final transient kvo<K, V>[] c;
  final int d;
  public final kng<Object> e;
  public final kng<Object> f;
  final kvr g;
  public final kvr h;
  final int i;
  public final long j;
  public final long k;
  public final Queue<kun<K, V>> l;
  final avb m;
  public final transient kus n;
  public final koi o;
  transient Set<K> r;
  transient Collection<V> s;
  transient Set<Map.Entry<K, V>> t;
  
  public MapMakerInternalMap(kuf paramkuf)
  {
    d = Math.min(paramkuf.d(), 65536);
    g = paramkuf.e();
    h = paramkuf.f();
    e = paramkuf.b();
    f = h.a();
    i = e;
    j = paramkuf.h();
    k = paramkuf.g();
    n = kus.a(g, b(), a());
    o = paramkuf.i();
    m = paramkuf.a();
    if (m == krr.a) {}
    int i1;
    int i2;
    for (Object localObject = q;; localObject = new ConcurrentLinkedQueue())
    {
      l = ((Queue)localObject);
      i1 = Math.min(paramkuf.c(), 1073741824);
      i2 = i1;
      if (a()) {
        i2 = Math.min(i1, i);
      }
      i1 = 1;
      i3 = 0;
      while ((i1 < d) && ((!a()) || (i1 << 1 <= i)))
      {
        i3 += 1;
        i1 <<= 1;
      }
    }
    b = (32 - i3);
    a = (i1 - 1);
    c = new kvo[i1];
    int i3 = i2 / i1;
    if (i3 * i1 < i2)
    {
      i3 += 1;
      i2 = i6;
    }
    for (;;)
    {
      if (i2 < i3)
      {
        i2 <<= 1;
      }
      else
      {
        i3 = i5;
        if (a())
        {
          i5 = i / i1 + 1;
          i6 = i;
          i3 = i4;
          for (i4 = i5; i3 < c.length; i4 = i5)
          {
            i5 = i4;
            if (i3 == i6 % i1) {
              i5 = i4 - 1;
            }
            c[i3] = a(i2, i5);
            i3 += 1;
          }
        }
        while (i3 < c.length)
        {
          c[i3] = a(i2, -1);
          i3 += 1;
        }
        return;
        i2 = i6;
      }
    }
  }
  
  public static <E> ArrayList<E> a(Collection<E> paramCollection)
  {
    ArrayList localArrayList = new ArrayList(paramCollection.size());
    kty.a(localArrayList, paramCollection.iterator());
    return localArrayList;
  }
  
  public static <K, V> void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextExpirable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousExpirable(paramReferenceEntry1);
  }
  
  public static <K, V> void b(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry1.setNextEvictable(paramReferenceEntry2);
    paramReferenceEntry2.setPreviousEvictable(paramReferenceEntry1);
  }
  
  public static <K, V> void d(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    kvm localkvm = kvm.a;
    paramReferenceEntry.setNextExpirable(localkvm);
    paramReferenceEntry.setPreviousExpirable(localkvm);
  }
  
  public static <K, V> void e(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    kvm localkvm = kvm.a;
    paramReferenceEntry.setNextEvictable(localkvm);
    paramReferenceEntry.setPreviousEvictable(localkvm);
  }
  
  public static <K, V> MapMakerInternalMap.ReferenceEntry<K, V> g()
  {
    return kvm.a;
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
  
  kvo<K, V> a(int paramInt)
  {
    return c[(paramInt >>> b & a)];
  }
  
  kvo<K, V> a(int paramInt1, int paramInt2)
  {
    return new kvo(this, paramInt1, paramInt2);
  }
  
  public void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    int i1 = paramReferenceEntry.getHash();
    a(i1).a(paramReferenceEntry, i1);
  }
  
  public void a(kwb<K, V> paramkwb)
  {
    MapMakerInternalMap.ReferenceEntry localReferenceEntry = paramkwb.a();
    int i1 = localReferenceEntry.getHash();
    a(i1).a(localReferenceEntry.getKey(), i1, paramkwb);
  }
  
  public boolean a()
  {
    return i != -1;
  }
  
  public boolean a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry, long paramLong)
  {
    return paramLong - paramReferenceEntry.getExpirationTime() > 0L;
  }
  
  public V b(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    if (paramReferenceEntry.getKey() == null) {}
    Object localObject;
    do
    {
      return null;
      localObject = paramReferenceEntry.getValueReference().get();
    } while ((localObject == null) || ((b()) && (c(paramReferenceEntry))));
    return (V)localObject;
  }
  
  public boolean b()
  {
    return (c()) || (d());
  }
  
  boolean c()
  {
    return k > 0L;
  }
  
  public boolean c(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return a(paramReferenceEntry, o.a());
  }
  
  public void clear()
  {
    kvo[] arrayOfkvo = c;
    int i2 = arrayOfkvo.length;
    int i1 = 0;
    while (i1 < i2)
    {
      arrayOfkvo[i1].a();
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
    kvo[] arrayOfkvo = c;
    int i1 = 0;
    long l1;
    for (long l2 = -1L; i1 < 3; l2 = l1)
    {
      int i4 = arrayOfkvo.length;
      l1 = 0L;
      int i2 = 0;
      while (i2 < i4)
      {
        kvo localkvo = arrayOfkvo[i2];
        int i3 = b;
        AtomicReferenceArray localAtomicReferenceArray = e;
        i3 = 0;
        while (i3 < localAtomicReferenceArray.length())
        {
          for (MapMakerInternalMap.ReferenceEntry localReferenceEntry = (MapMakerInternalMap.ReferenceEntry)localAtomicReferenceArray.get(i3); localReferenceEntry != null; localReferenceEntry = localReferenceEntry.getNext())
          {
            Object localObject = localkvo.a(localReferenceEntry);
            if ((localObject != null) && (f.a(paramObject, localObject))) {
              return true;
            }
          }
          i3 += 1;
        }
        l1 += c;
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
    return j > 0L;
  }
  
  public boolean e()
  {
    return g != kvr.a;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    Object localObject = t;
    if (localObject != null) {
      return (Set<Map.Entry<K, V>>)localObject;
    }
    localObject = new kvc(this);
    t = ((Set)localObject);
    return (Set<Map.Entry<K, V>>)localObject;
  }
  
  public boolean f()
  {
    return h != kvr.a;
  }
  
  public V get(Object paramObject)
  {
    if (paramObject == null) {
      return null;
    }
    int i1 = a(paramObject);
    return (V)a(i1).a(paramObject, i1);
  }
  
  public void h()
  {
    while ((kun)l.poll() != null) {}
  }
  
  public boolean isEmpty()
  {
    kvo[] arrayOfkvo = c;
    int i1 = 0;
    long l1 = 0L;
    if (i1 < arrayOfkvo.length) {
      if (b == 0) {}
    }
    label90:
    do
    {
      return false;
      l1 += c;
      i1 += 1;
      break;
      if (l1 == 0L) {
        break label96;
      }
      i1 = 0;
      for (;;)
      {
        if (i1 >= arrayOfkvo.length) {
          break label90;
        }
        if (b != 0) {
          break;
        }
        l1 -= c;
        i1 += 1;
      }
    } while (l1 != 0L);
    label96:
    return true;
  }
  
  public Set<K> keySet()
  {
    Object localObject = r;
    if (localObject != null) {
      return (Set<K>)localObject;
    }
    localObject = new kvl(this);
    r = ((Set)localObject);
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
    kvo[] arrayOfkvo = c;
    long l1 = 0L;
    int i1 = 0;
    while (i1 < arrayOfkvo.length)
    {
      l1 += b;
      i1 += 1;
    }
    return aal.e(l1);
  }
  
  public Collection<V> values()
  {
    Object localObject = s;
    if (localObject != null) {
      return (Collection<V>)localObject;
    }
    localObject = new kwc(this);
    s = ((Collection)localObject);
    return (Collection<V>)localObject;
  }
  
  Object writeReplace()
  {
    return new kvp(g, h, e, f, k, j, i, d, m, this);
  }
}

/* Location:
 * Qualified Name:     com.google.common.collect.MapMakerInternalMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */