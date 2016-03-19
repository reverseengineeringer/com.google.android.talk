import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import com.google.android.libraries.hangouts.util.MemoryManager.MemoryCache;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class hv<K, V>
  implements MemoryManager.MemoryCache
{
  private final LinkedHashMap<K, V> a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  
  public hv()
  {
    this(6);
  }
  
  public hv(byte paramByte)
  {
    this(1000);
  }
  
  public hv(int paramInt)
  {
    if (paramInt <= 0) {
      throw new IllegalArgumentException("maxSize <= 0");
    }
    c = paramInt;
    a = new LinkedHashMap(0, 0.75F, true);
  }
  
  private static int b(int paramInt, PorterDuff.Mode paramMode)
  {
    return (paramInt + 31) * 31 + paramMode.hashCode();
  }
  
  private int b(K paramK, V paramV)
  {
    int i = c(paramV);
    if (i < 0) {
      throw new IllegalStateException("Negative size: " + paramK + "=" + paramV);
    }
    return i;
  }
  
  public final int a()
  {
    try
    {
      int i = b;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    return (PorterDuffColorFilter)a(Integer.valueOf(b(paramInt, paramMode)));
  }
  
  public PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
  {
    return (PorterDuffColorFilter)a(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
  
  public final V a(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      paramK = a.get(paramK);
      if (paramK != null)
      {
        f += 1;
        return paramK;
      }
      g += 1;
      return null;
    }
    finally {}
  }
  
  public final V a(K paramK, V paramV)
  {
    if ((paramK == null) || (paramV == null)) {
      throw new NullPointerException("key == null || value == null");
    }
    try
    {
      d += 1;
      b += b(paramK, paramV);
      Object localObject = a.put(paramK, paramV);
      if (localObject != null) {
        b -= b(paramK, localObject);
      }
      if (localObject != null) {
        a(false, paramK, localObject, paramV);
      }
      a(c);
      return (V)localObject;
    }
    finally {}
  }
  
  public void a(int paramInt)
  {
    Object localObject3;
    Object localObject2;
    try
    {
      if ((b < 0) || ((a.isEmpty()) && (b != 0))) {
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
      }
    }
    finally
    {
      throw ((Throwable)localObject1);
      if ((b <= paramInt) || (a.isEmpty())) {
        return;
      }
      localObject3 = (Map.Entry)a.entrySet().iterator().next();
      localObject2 = ((Map.Entry)localObject3).getKey();
      localObject3 = ((Map.Entry)localObject3).getValue();
      a.remove(localObject2);
      b -= b(localObject2, localObject3);
      e += 1;
    }
  }
  
  public void a(boolean paramBoolean, K paramK, V paramV1, V paramV2) {}
  
  public final int b()
  {
    try
    {
      int i = c;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final V b(K paramK)
  {
    if (paramK == null) {
      throw new NullPointerException("key == null");
    }
    try
    {
      Object localObject = a.remove(paramK);
      if (localObject != null) {
        b -= b(paramK, localObject);
      }
      if (localObject != null) {
        a(false, paramK, localObject, null);
      }
      return (V)localObject;
    }
    finally {}
  }
  
  public void b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 15: 
    case 60: 
    case 80: 
      a(-1);
      return;
    }
    a(b() / 2);
  }
  
  public final int c()
  {
    try
    {
      int i = f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int c(V paramV)
  {
    return 1;
  }
  
  public final int d()
  {
    try
    {
      int i = g;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int e()
  {
    try
    {
      int i = d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int f()
  {
    try
    {
      int i = e;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Map<K, V> g()
  {
    try
    {
      LinkedHashMap localLinkedHashMap = new LinkedHashMap(a);
      return localLinkedHashMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void h()
  {
    a(-1);
  }
  
  public final String toString()
  {
    int i = 0;
    try
    {
      int j = f + g;
      if (j != 0) {
        i = f * 100 / j;
      }
      String str = String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", new Object[] { Integer.valueOf(c), Integer.valueOf(f), Integer.valueOf(g), Integer.valueOf(i) });
      return str;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */