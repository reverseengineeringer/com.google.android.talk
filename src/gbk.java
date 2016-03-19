import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class gbk
  implements Cloneable
{
  private gbi<?, ?> a;
  private Object b;
  private List<gbo> c = new ArrayList();
  
  private byte[] c()
  {
    byte[] arrayOfByte = new byte[a()];
    a(gbg.a(arrayOfByte, 0, arrayOfByte.length));
    return arrayOfByte;
  }
  
  int a()
  {
    int j;
    if (b != null)
    {
      j = a.a(b);
      return j;
    }
    Iterator localIterator = c.iterator();
    for (int i = 0;; i = ((gbo)localIterator.next()).a() + i)
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
    }
  }
  
  void a(gbg paramgbg)
  {
    if (b != null) {
      a.a(b, paramgbg);
    }
    for (;;)
    {
      return;
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((gbo)localIterator.next()).a(paramgbg);
      }
    }
  }
  
  void a(gbo paramgbo)
  {
    c.add(paramgbo);
  }
  
  public final gbk b()
  {
    int i = 0;
    gbk localgbk = new gbk();
    try
    {
      a = a;
      if (c == null) {
        c = null;
      }
      for (;;)
      {
        if (b == null) {
          return localgbk;
        }
        if (!(b instanceof gbn)) {
          break;
        }
        b = ((gbn)b).e();
        return localgbk;
        c.addAll(c);
      }
      if (!(b instanceof byte[])) {
        break label116;
      }
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new AssertionError(localCloneNotSupportedException);
    }
    b = ((byte[])b).clone();
    return localCloneNotSupportedException;
    label116:
    Object localObject1;
    Object localObject2;
    if ((b instanceof byte[][]))
    {
      localObject1 = (byte[][])b;
      localObject2 = new byte[localObject1.length][];
      b = localObject2;
      i = 0;
      while (i < localObject1.length)
      {
        localObject2[i] = ((byte[])localObject1[i].clone());
        i += 1;
      }
    }
    if ((b instanceof boolean[]))
    {
      b = ((boolean[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof int[]))
    {
      b = ((int[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof long[]))
    {
      b = ((long[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof float[]))
    {
      b = ((float[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof double[]))
    {
      b = ((double[])b).clone();
      return localCloneNotSupportedException;
    }
    if ((b instanceof gbn[]))
    {
      localObject1 = (gbn[])b;
      localObject2 = new gbn[localObject1.length];
      b = localObject2;
      while (i < localObject1.length)
      {
        localObject2[i] = localObject1[i].e();
        i += 1;
      }
    }
    return localCloneNotSupportedException;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof gbk));
      paramObject = (gbk)paramObject;
      if ((b == null) || (b == null)) {
        break;
      }
      bool1 = bool2;
    } while (a != a);
    if (!a.b.isArray()) {
      return b.equals(b);
    }
    if ((b instanceof byte[])) {
      return Arrays.equals((byte[])b, (byte[])b);
    }
    if ((b instanceof int[])) {
      return Arrays.equals((int[])b, (int[])b);
    }
    if ((b instanceof long[])) {
      return Arrays.equals((long[])b, (long[])b);
    }
    if ((b instanceof float[])) {
      return Arrays.equals((float[])b, (float[])b);
    }
    if ((b instanceof double[])) {
      return Arrays.equals((double[])b, (double[])b);
    }
    if ((b instanceof boolean[])) {
      return Arrays.equals((boolean[])b, (boolean[])b);
    }
    return Arrays.deepEquals((Object[])b, (Object[])b);
    if ((c != null) && (c != null)) {
      return c.equals(c);
    }
    try
    {
      bool1 = Arrays.equals(c(), ((gbk)paramObject).c());
      return bool1;
    }
    catch (IOException paramObject)
    {
      throw new IllegalStateException((Throwable)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = Arrays.hashCode(c());
      return i + 527;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     gbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */