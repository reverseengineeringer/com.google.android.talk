import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

final class hwx
{
  private static final byte[] a = { 65, 83, 67, 73, 73, 0, 0, 0 };
  private static final byte[] b = { 74, 73, 83, 0, 0, 0, 0, 0 };
  private static final byte[] c = { 85, 78, 73, 67, 79, 68, 69, 0 };
  private final hxi[] d = new hxi[5];
  private byte[] e;
  private ArrayList<byte[]> f = new ArrayList();
  private final ByteOrder g;
  private byte[] h;
  
  hwx(ByteOrder paramByteOrder)
  {
    g = paramByteOrder;
  }
  
  protected hxh a(hxh paramhxh)
  {
    hxi localhxi = null;
    Object localObject = localhxi;
    if (paramhxh != null)
    {
      int i = paramhxh.a();
      localObject = localhxi;
      if (paramhxh != null)
      {
        localObject = localhxi;
        if (hxh.a(i))
        {
          localhxi = d[i];
          localObject = localhxi;
          if (localhxi == null)
          {
            localObject = new hxi(i);
            d[i] = localObject;
          }
          localObject = ((hxi)localObject).a(paramhxh);
        }
      }
    }
    return (hxh)localObject;
  }
  
  protected hxh a(short paramShort, int paramInt)
  {
    hxi localhxi = d[paramInt];
    if (localhxi == null) {
      return null;
    }
    return localhxi.a(paramShort);
  }
  
  protected void a(int paramInt, byte[] paramArrayOfByte)
  {
    if (paramInt < f.size())
    {
      f.set(paramInt, paramArrayOfByte);
      return;
    }
    int i = f.size();
    while (i < paramInt)
    {
      f.add(null);
      i += 1;
    }
    f.add(paramArrayOfByte);
  }
  
  protected void a(hxi paramhxi)
  {
    d[paramhxi.b()] = paramhxi;
  }
  
  void a(byte[] paramArrayOfByte)
  {
    h = paramArrayOfByte;
  }
  
  byte[] a()
  {
    return h;
  }
  
  protected byte[] a(int paramInt)
  {
    return (byte[])f.get(paramInt);
  }
  
  protected hxi b(int paramInt)
  {
    if (hxh.a(paramInt)) {
      return d[paramInt];
    }
    return null;
  }
  
  protected void b(short paramShort, int paramInt)
  {
    hxi localhxi = d[paramInt];
    if (localhxi == null) {
      return;
    }
    localhxi.b(paramShort);
  }
  
  protected void b(byte[] paramArrayOfByte)
  {
    e = paramArrayOfByte;
  }
  
  boolean b()
  {
    return h != null;
  }
  
  protected byte[] c()
  {
    return e;
  }
  
  protected boolean d()
  {
    return e != null;
  }
  
  protected int e()
  {
    return f.size();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              bool1 = bool2;
            } while (paramObject == null);
            bool1 = bool2;
          } while (!(paramObject instanceof hwx));
          paramObject = (hwx)paramObject;
          bool1 = bool2;
        } while (g != g);
        bool1 = bool2;
      } while (f.size() != f.size());
      bool1 = bool2;
    } while (!Arrays.equals(e, e));
    int i = 0;
    for (;;)
    {
      if (i >= f.size()) {
        break label136;
      }
      bool1 = bool2;
      if (!Arrays.equals((byte[])f.get(i), (byte[])f.get(i))) {
        break;
      }
      i += 1;
    }
    label136:
    i = 0;
    for (;;)
    {
      if (i >= 5) {
        break label189;
      }
      hxi localhxi1 = ((hwx)paramObject).b(i);
      hxi localhxi2 = b(i);
      if ((localhxi1 != localhxi2) && (localhxi1 != null))
      {
        bool1 = bool2;
        if (!localhxi1.equals(localhxi2)) {
          break;
        }
      }
      i += 1;
    }
    label189:
    return true;
  }
  
  protected boolean f()
  {
    return !f.isEmpty();
  }
  
  protected ByteOrder g()
  {
    return g;
  }
  
  protected List<hxh> h()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = d;
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      hxh[] arrayOfhxh = localObject[i];
      if (arrayOfhxh != null)
      {
        arrayOfhxh = arrayOfhxh.a();
        if (arrayOfhxh != null) {
          Collections.addAll(localArrayList, arrayOfhxh);
        }
      }
      i += 1;
    }
    localObject = localArrayList;
    if (localArrayList.isEmpty()) {
      localObject = null;
    }
    return (List<hxh>)localObject;
  }
  
  public int hashCode()
  {
    return (((g.hashCode() + 527) * 31 + f.hashCode()) * 31 + Arrays.hashCode(e)) * 31 + Arrays.hashCode(d);
  }
}

/* Location:
 * Qualified Name:     hwx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */