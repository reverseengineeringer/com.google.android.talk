import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;

public final class kuf
  extends krq<Object, Object>
{
  boolean b;
  int c = -1;
  int d = -1;
  public int e = -1;
  kvr f;
  kvr g;
  long h = -1L;
  long i = -1L;
  kuh j;
  kng<Object> k;
  koi l;
  
  private void c(long paramLong, TimeUnit paramTimeUnit)
  {
    if (h == -1L)
    {
      bool = true;
      fii.b(bool, "expireAfterWrite was already set to %s ns", new Object[] { Long.valueOf(h) });
      if (i != -1L) {
        break label108;
      }
      bool = true;
      label49:
      fii.b(bool, "expireAfterAccess was already set to %s ns", new Object[] { Long.valueOf(i) });
      if (paramLong < 0L) {
        break label114;
      }
    }
    label108:
    label114:
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool, "duration cannot be negative: %s %s", new Object[] { Long.valueOf(paramLong), paramTimeUnit });
      return;
      bool = false;
      break;
      bool = false;
      break label49;
    }
  }
  
  @Deprecated
  <K, V> krq<K, V> a(avb paramavb)
  {
    if (a == null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool);
      a = ((avb)fii.a(paramavb));
      b = true;
      return this;
    }
  }
  
  public kuf a(int paramInt)
  {
    boolean bool2 = true;
    if (c == -1)
    {
      bool1 = true;
      fii.b(bool1, "initial capacity was already set to %s", new Object[] { Integer.valueOf(c) });
      if (paramInt < 0) {
        break label54;
      }
    }
    label54:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      fii.a(bool1);
      c = paramInt;
      return this;
      bool1 = false;
      break;
    }
  }
  
  @Deprecated
  kuf a(long paramLong, TimeUnit paramTimeUnit)
  {
    c(paramLong, paramTimeUnit);
    h = paramTimeUnit.toNanos(paramLong);
    if ((paramLong == 0L) && (j == null)) {
      j = kuh.d;
    }
    b = true;
    return this;
  }
  
  kuf a(kng<Object> paramkng)
  {
    if (k == null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "key equivalence was already set to %s", new Object[] { k });
      k = ((kng)fii.a(paramkng));
      b = true;
      return this;
    }
  }
  
  kuf a(kvr paramkvr)
  {
    boolean bool2 = false;
    if (f == null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      fii.b(bool1, "Key strength was already set to %s", new Object[] { f });
      f = ((kvr)fii.a(paramkvr));
      bool1 = bool2;
      if (f != kvr.b) {
        bool1 = true;
      }
      fii.a(bool1, "Soft keys are not supported");
      if (paramkvr != kvr.a) {
        b = true;
      }
      return this;
    }
  }
  
  public kng<Object> b()
  {
    return (kng)aal.d(k, e().a());
  }
  
  @Deprecated
  kuf b(int paramInt)
  {
    boolean bool2 = false;
    if (e == -1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      fii.b(bool1, "maximum size was already set to %s", new Object[] { Integer.valueOf(e) });
      bool1 = bool2;
      if (paramInt >= 0) {
        bool1 = true;
      }
      fii.a(bool1, "maximum size must not be negative");
      e = paramInt;
      b = true;
      if (e == 0) {
        j = kuh.e;
      }
      return this;
    }
  }
  
  @Deprecated
  kuf b(long paramLong, TimeUnit paramTimeUnit)
  {
    c(paramLong, paramTimeUnit);
    i = paramTimeUnit.toNanos(paramLong);
    if ((paramLong == 0L) && (j == null)) {
      j = kuh.d;
    }
    b = true;
    return this;
  }
  
  kuf b(kvr paramkvr)
  {
    if (g == null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Value strength was already set to %s", new Object[] { g });
      g = ((kvr)fii.a(paramkvr));
      if (paramkvr != kvr.a) {
        b = true;
      }
      return this;
    }
  }
  
  public int c()
  {
    if (c == -1) {
      return 16;
    }
    return c;
  }
  
  public kuf c(int paramInt)
  {
    boolean bool2 = true;
    if (d == -1)
    {
      bool1 = true;
      fii.b(bool1, "concurrency level was already set to %s", new Object[] { Integer.valueOf(d) });
      if (paramInt <= 0) {
        break label54;
      }
    }
    label54:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      fii.a(bool1);
      d = paramInt;
      return this;
      bool1 = false;
      break;
    }
  }
  
  public int d()
  {
    if (d == -1) {
      return 4;
    }
    return d;
  }
  
  public kvr e()
  {
    return (kvr)aal.d(f, kvr.a);
  }
  
  public kvr f()
  {
    return (kvr)aal.d(g, kvr.a);
  }
  
  public long g()
  {
    if (h == -1L) {
      return 0L;
    }
    return h;
  }
  
  public long h()
  {
    if (i == -1L) {
      return 0L;
    }
    return i;
  }
  
  public koi i()
  {
    return (koi)aal.d(l, koi.a);
  }
  
  public <K, V> ConcurrentMap<K, V> j()
  {
    if (!b) {
      return new ConcurrentHashMap(c(), 0.75F, d());
    }
    if (j == null) {
      return new MapMakerInternalMap(this);
    }
    return new kug(this);
  }
  
  public String toString()
  {
    kno localkno = aal.f(this);
    if (c != -1) {
      localkno.a("initialCapacity", c);
    }
    if (d != -1) {
      localkno.a("concurrencyLevel", d);
    }
    if (e != -1) {
      localkno.a("maximumSize", e);
    }
    long l1;
    if (h != -1L)
    {
      l1 = h;
      localkno.a("expireAfterWrite", 22 + l1 + "ns");
    }
    if (i != -1L)
    {
      l1 = i;
      localkno.a("expireAfterAccess", 22 + l1 + "ns");
    }
    if (f != null) {
      localkno.a("keyStrength", aal.F(f.toString()));
    }
    if (g != null) {
      localkno.a("valueStrength", aal.F(g.toString()));
    }
    if (k != null) {
      localkno.a("keyEquivalence");
    }
    if (a != null) {
      localkno.a("removalListener");
    }
    return localkno.toString();
  }
}

/* Location:
 * Qualified Name:     kuf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */