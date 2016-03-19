import java.util.Map.Entry;

public final class kxm<K, V>
  extends krw<K, V>
{
  public static final kxm<Object, Object> b = new kxm(null, null, ksm.a, 0, 0);
  final transient kss<K, V>[] c;
  final transient Map.Entry<K, V>[] d;
  final transient int e;
  final transient int f;
  private final transient kss<K, V>[] g;
  private transient krw<V, K> h;
  
  private kxm(kss<K, V>[] paramArrayOfkss1, kss<K, V>[] paramArrayOfkss2, Map.Entry<K, V>[] paramArrayOfEntry, int paramInt1, int paramInt2)
  {
    g = paramArrayOfkss1;
    c = paramArrayOfkss2;
    d = paramArrayOfEntry;
    e = paramInt1;
    f = paramInt2;
  }
  
  static <K, V> kxm<K, V> a(int paramInt, Map.Entry<K, V>[] paramArrayOfEntry)
  {
    fii.b(paramInt, paramArrayOfEntry.length);
    int i = krt.b(paramInt);
    int m = i - 1;
    kss[] arrayOfkss1 = new kss[i];
    kss[] arrayOfkss2 = new kss[i];
    Object localObject2;
    int j;
    Map.Entry<K, V> localEntry;
    Object localObject3;
    Object localObject4;
    int n;
    int i1;
    int i2;
    int i3;
    kss localkss2;
    kss localkss1;
    Object localObject1;
    if (paramInt == paramArrayOfEntry.length)
    {
      localObject2 = paramArrayOfEntry;
      j = 0;
      i = 0;
      if (i >= paramInt) {
        break label316;
      }
      localEntry = paramArrayOfEntry[i];
      localObject3 = localEntry.getKey();
      localObject4 = localEntry.getValue();
      aal.e(localObject3, localObject4);
      n = localObject3.hashCode();
      i1 = localObject4.hashCode();
      i2 = krt.a(n) & m;
      i3 = krt.a(i1) & m;
      localkss2 = arrayOfkss1[i2];
      kxs.a(localObject3, localEntry, localkss2);
      localkss1 = arrayOfkss2[i3];
      localObject1 = localkss1;
      label138:
      if (localObject1 == null) {
        break label195;
      }
      if (localObject4.equals(((kss)localObject1).getValue())) {
        break label189;
      }
    }
    label189:
    for (boolean bool = true;; bool = false)
    {
      a(bool, "value", localEntry, (Map.Entry)localObject1);
      localObject1 = ((kss)localObject1).b();
      break label138;
      localObject2 = new kss[paramInt];
      break;
    }
    label195:
    int k;
    if ((localkss1 == null) && (localkss2 == null)) {
      if (((localEntry instanceof kss)) && (((kss)localEntry).c()))
      {
        k = 1;
        label227:
        if (k == 0) {
          break label280;
        }
        localObject1 = (kss)localEntry;
      }
    }
    for (;;)
    {
      arrayOfkss1[i2] = localObject1;
      arrayOfkss2[i3] = localObject1;
      localObject2[i] = localObject1;
      j += (n ^ i1);
      i += 1;
      break;
      k = 0;
      break label227;
      label280:
      localObject1 = new kss(localObject3, localObject4);
      continue;
      localObject1 = new kst(localObject3, localObject4, localkss2, localkss1);
    }
    label316:
    return new kxm(arrayOfkss1, arrayOfkss2, (Map.Entry[])localObject2, m, j);
  }
  
  public krw<V, K> a()
  {
    if (isEmpty()) {
      localObject = b;
    }
    krw localkrw;
    do
    {
      return (krw<V, K>)localObject;
      localkrw = h;
      localObject = localkrw;
    } while (localkrw != null);
    Object localObject = new kxn(this);
    h = ((krw)localObject);
    return (krw<V, K>)localObject;
  }
  
  boolean d()
  {
    return false;
  }
  
  kth<Map.Entry<K, V>> f()
  {
    if (isEmpty()) {
      return kxt.a;
    }
    return new ksx(this, d);
  }
  
  public V get(Object paramObject)
  {
    if (g == null) {
      return null;
    }
    return (V)kxs.a(paramObject, g, e);
  }
  
  public int hashCode()
  {
    return f;
  }
  
  boolean i()
  {
    return true;
  }
  
  public int size()
  {
    return d.length;
  }
}

/* Location:
 * Qualified Name:     kxm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */