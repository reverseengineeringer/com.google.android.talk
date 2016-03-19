import java.util.Map.Entry;

public final class kxs<K, V>
  extends ksm<K, V>
{
  private static final long serialVersionUID = 0L;
  private final transient Map.Entry<K, V>[] b;
  private final transient kss<K, V>[] c;
  private final transient int d;
  
  private kxs(Map.Entry<K, V>[] paramArrayOfEntry, kss<K, V>[] paramArrayOfkss, int paramInt)
  {
    b = paramArrayOfEntry;
    c = paramArrayOfkss;
    d = paramInt;
  }
  
  static <V> V a(Object paramObject, kss<?, V>[] paramArrayOfkss, int paramInt)
  {
    if (paramObject == null) {}
    for (;;)
    {
      return null;
      for (paramArrayOfkss = paramArrayOfkss[(krt.a(paramObject.hashCode()) & paramInt)]; paramArrayOfkss != null; paramArrayOfkss = paramArrayOfkss.a()) {
        if (paramObject.equals(paramArrayOfkss.getKey())) {
          return (V)paramArrayOfkss.getValue();
        }
      }
    }
  }
  
  public static <K, V> kxs<K, V> a(int paramInt, Map.Entry<K, V>[] paramArrayOfEntry)
  {
    fii.b(paramInt, paramArrayOfEntry.length);
    Object localObject2;
    int i;
    kss[] arrayOfkss;
    int k;
    label34:
    Object localObject1;
    Object localObject3;
    Object localObject4;
    int m;
    kss localkss;
    int j;
    if (paramInt == paramArrayOfEntry.length)
    {
      localObject2 = paramArrayOfEntry;
      i = krt.b(paramInt);
      arrayOfkss = new kss[i];
      k = i - 1;
      i = 0;
      if (i >= paramInt) {
        break label203;
      }
      localObject1 = paramArrayOfEntry[i];
      localObject3 = ((Map.Entry)localObject1).getKey();
      localObject4 = ((Map.Entry)localObject1).getValue();
      aal.e(localObject3, localObject4);
      m = krt.a(localObject3.hashCode()) & k;
      localkss = arrayOfkss[m];
      if (localkss != null) {
        break label185;
      }
      if ((!(localObject1 instanceof kss)) || (!((kss)localObject1).c())) {
        break label164;
      }
      j = 1;
      label115:
      if (j == 0) {
        break label169;
      }
      localObject1 = (kss)localObject1;
    }
    for (;;)
    {
      arrayOfkss[m] = localObject1;
      localObject2[i] = localObject1;
      a(localObject3, (Map.Entry)localObject1, localkss);
      i += 1;
      break label34;
      localObject2 = new kss[paramInt];
      break;
      label164:
      j = 0;
      break label115;
      label169:
      localObject1 = new kss(localObject3, localObject4);
      continue;
      label185:
      localObject1 = new ksu(localObject3, localObject4, localkss);
    }
    label203:
    return new kxs((Map.Entry[])localObject2, arrayOfkss, k);
  }
  
  static void a(Object paramObject, Map.Entry<?, ?> paramEntry, kss<?, ?> paramkss)
  {
    if (paramkss != null)
    {
      if (!paramObject.equals(paramkss.getKey())) {}
      for (boolean bool = true;; bool = false)
      {
        a(bool, "key", paramEntry, paramkss);
        paramkss = paramkss.a();
        break;
      }
    }
  }
  
  boolean d()
  {
    return false;
  }
  
  kth<Map.Entry<K, V>> f()
  {
    return new ksx(this, b);
  }
  
  public V get(Object paramObject)
  {
    return (V)a(paramObject, c, d);
  }
  
  public int size()
  {
    return b.length;
  }
}

/* Location:
 * Qualified Name:     kxs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */