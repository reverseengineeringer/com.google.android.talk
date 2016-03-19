import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;

public final class hxh
{
  private static final Charset a = Charset.forName("US-ASCII");
  private static final int[] b;
  private static final SimpleDateFormat j = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss");
  private final short c;
  private final short d;
  private boolean e;
  private int f;
  private int g;
  private Object h;
  private int i;
  
  static
  {
    int[] arrayOfInt = new int[11];
    b = arrayOfInt;
    arrayOfInt[1] = 1;
    b[2] = 1;
    b[3] = 2;
    b[4] = 4;
    b[5] = 8;
    b[7] = 1;
    b[9] = 4;
    b[10] = 8;
  }
  
  hxh(short paramShort1, short paramShort2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    c = paramShort1;
    d = paramShort2;
    f = paramInt1;
    e = paramBoolean;
    g = paramInt2;
    h = null;
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 1) || (paramInt == 2) || (paramInt == 3) || (paramInt == 4);
  }
  
  public static boolean a(short paramShort)
  {
    return (paramShort == 1) || (paramShort == 2) || (paramShort == 3) || (paramShort == 4) || (paramShort == 5) || (paramShort == 7) || (paramShort == 9) || (paramShort == 10);
  }
  
  private static String b(short paramShort)
  {
    switch (paramShort)
    {
    case 6: 
    case 8: 
    default: 
      return "";
    case 1: 
      return "UNSIGNED_BYTE";
    case 2: 
      return "ASCII";
    case 3: 
      return "UNSIGNED_SHORT";
    case 4: 
      return "UNSIGNED_LONG";
    case 5: 
      return "UNSIGNED_RATIONAL";
    case 7: 
      return "UNDEFINED";
    case 9: 
      return "LONG";
    }
    return "RATIONAL";
  }
  
  private boolean h(int paramInt)
  {
    return (e) && (f != paramInt);
  }
  
  public int a()
  {
    return g;
  }
  
  protected void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public boolean a(Object paramObject)
  {
    int m = 0;
    if (paramObject == null) {}
    do
    {
      return false;
      if ((paramObject instanceof Short)) {
        return d(((Short)paramObject).shortValue() & 0xFFFF);
      }
      if ((paramObject instanceof String)) {
        return a((String)paramObject);
      }
      if ((paramObject instanceof int[])) {
        return a((int[])paramObject);
      }
      if ((paramObject instanceof long[])) {
        return a((long[])paramObject);
      }
      if ((paramObject instanceof hxl)) {
        return a(new hxl[] { (hxl)paramObject });
      }
      if ((paramObject instanceof hxl[])) {
        return a((hxl[])paramObject);
      }
      if ((paramObject instanceof byte[])) {
        return a((byte[])paramObject);
      }
      if ((paramObject instanceof Integer)) {
        return d(((Integer)paramObject).intValue());
      }
      if ((paramObject instanceof Long)) {
        return a(new long[] { ((Long)paramObject).longValue() });
      }
      if ((paramObject instanceof Byte)) {
        return a(new byte[] { ((Byte)paramObject).byteValue() });
      }
      int n;
      if ((paramObject instanceof Short[]))
      {
        paramObject = (Short[])paramObject;
        localObject = new int[paramObject.length];
        m = 0;
        if (m < paramObject.length)
        {
          if (paramObject[m] == null) {}
          for (n = 0;; n = paramObject[m].shortValue() & 0xFFFF)
          {
            localObject[m] = n;
            m += 1;
            break;
          }
        }
        return a((int[])localObject);
      }
      if ((paramObject instanceof Integer[]))
      {
        paramObject = (Integer[])paramObject;
        localObject = new int[paramObject.length];
        m = 0;
        if (m < paramObject.length)
        {
          if (paramObject[m] == null) {}
          for (n = 0;; n = paramObject[m].intValue())
          {
            localObject[m] = n;
            m += 1;
            break;
          }
        }
        return a((int[])localObject);
      }
      if ((paramObject instanceof Long[]))
      {
        paramObject = (Long[])paramObject;
        localObject = new long[paramObject.length];
        if (m < paramObject.length)
        {
          if (paramObject[m] == null) {}
          for (long l = 0L;; l = paramObject[m].longValue())
          {
            localObject[m] = l;
            m += 1;
            break;
          }
        }
        return a((long[])localObject);
      }
    } while (!(paramObject instanceof Byte[]));
    paramObject = (Byte[])paramObject;
    Object localObject = new byte[paramObject.length];
    m = 0;
    if (m < paramObject.length)
    {
      if (paramObject[m] == null) {}
      for (int k = 0;; k = paramObject[m].byteValue())
      {
        localObject[m] = k;
        m += 1;
        break;
      }
    }
    return a((byte[])localObject);
  }
  
  public boolean a(String paramString)
  {
    if ((d != 2) && (d != 7)) {
      return false;
    }
    byte[] arrayOfByte = paramString.getBytes(a);
    if (arrayOfByte.length > 0)
    {
      paramString = arrayOfByte;
      if (d == 2)
      {
        paramString = arrayOfByte;
        if (arrayOfByte[(arrayOfByte.length - 1)] != 0)
        {
          if ((!e) || (arrayOfByte.length != f)) {
            break label91;
          }
          arrayOfByte[(arrayOfByte.length - 1)] = 0;
          paramString = arrayOfByte;
        }
      }
    }
    int k;
    for (;;)
    {
      k = paramString.length;
      if (!h(k)) {
        break;
      }
      return false;
      label91:
      paramString = Arrays.copyOf(arrayOfByte, arrayOfByte.length + 1);
      continue;
      paramString = arrayOfByte;
      if (d == 2)
      {
        paramString = arrayOfByte;
        if (f == 1)
        {
          paramString = new byte[1];
          paramString[0] = 0;
        }
      }
    }
    f = k;
    h = paramString;
    return true;
  }
  
  public boolean a(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    if (h(k)) {}
    while ((d != 1) && (d != 7)) {
      return false;
    }
    h = new byte[k];
    System.arraycopy(paramArrayOfByte, 0, h, 0, k);
    f = k;
    return true;
  }
  
  public boolean a(int[] paramArrayOfInt)
  {
    int m = 0;
    if (h(paramArrayOfInt.length)) {}
    label52:
    label77:
    label95:
    long[] arrayOfLong;
    label149:
    label152:
    label154:
    label161:
    label164:
    for (;;)
    {
      return false;
      if ((d == 3) || (d == 9) || (d == 4))
      {
        int n;
        if (d == 3)
        {
          n = paramArrayOfInt.length;
          k = 0;
          if (k >= n) {
            break label149;
          }
          int i1 = paramArrayOfInt[k];
          if ((i1 > 65535) || (i1 < 0))
          {
            k = 1;
            if (k != 0) {
              break label152;
            }
          }
        }
        else if (d == 4)
        {
          n = paramArrayOfInt.length;
          k = 0;
          if (k >= n) {
            break label161;
          }
          if (paramArrayOfInt[k] >= 0) {
            break label154;
          }
        }
        for (int k = 1;; k = 0)
        {
          if (k != 0) {
            break label164;
          }
          arrayOfLong = new long[paramArrayOfInt.length];
          k = m;
          while (k < paramArrayOfInt.length)
          {
            arrayOfLong[k] = paramArrayOfInt[k];
            k += 1;
          }
          k += 1;
          break label52;
          k = 0;
          break label77;
          break;
          k += 1;
          break label95;
        }
      }
    }
    h = arrayOfLong;
    f = paramArrayOfInt.length;
    return true;
  }
  
  public boolean a(long[] paramArrayOfLong)
  {
    if ((h(paramArrayOfLong.length)) || (d != 4)) {}
    label79:
    for (;;)
    {
      return false;
      int m = paramArrayOfLong.length;
      int k = 0;
      if (k < m)
      {
        long l = paramArrayOfLong[k];
        if ((l >= 0L) && (l <= 4294967295L)) {}
      }
      for (k = 1;; k = 0)
      {
        if (k != 0) {
          break label79;
        }
        h = paramArrayOfLong;
        f = paramArrayOfLong.length;
        return true;
        k += 1;
        break;
      }
    }
  }
  
  public boolean a(hxl[] paramArrayOfhxl)
  {
    if (h(paramArrayOfhxl.length)) {}
    label41:
    label97:
    label115:
    label199:
    label202:
    label204:
    label211:
    label214:
    for (;;)
    {
      return false;
      if ((d == 5) || (d == 10))
      {
        int m;
        hxl localhxl;
        if (d == 5)
        {
          m = paramArrayOfhxl.length;
          k = 0;
          if (k >= m) {
            break label199;
          }
          localhxl = paramArrayOfhxl[k];
          if ((localhxl.a() < 0L) || (localhxl.b() < 0L) || (localhxl.a() > 4294967295L) || (localhxl.b() > 4294967295L))
          {
            k = 1;
            if (k != 0) {
              break label202;
            }
          }
        }
        else if (d == 10)
        {
          m = paramArrayOfhxl.length;
          k = 0;
          if (k >= m) {
            break label211;
          }
          localhxl = paramArrayOfhxl[k];
          if ((localhxl.a() >= -2147483648L) && (localhxl.b() >= -2147483648L) && (localhxl.a() <= 2147483647L) && (localhxl.b() <= 2147483647L)) {
            break label204;
          }
        }
        for (int k = 1;; k = 0)
        {
          if (k != 0) {
            break label214;
          }
          h = paramArrayOfhxl;
          f = paramArrayOfhxl.length;
          return true;
          k += 1;
          break label41;
          k = 0;
          break label97;
          break;
          k += 1;
          break label115;
        }
      }
    }
  }
  
  public short b()
  {
    return c;
  }
  
  protected void b(int paramInt)
  {
    g = paramInt;
  }
  
  protected void b(byte[] paramArrayOfByte)
  {
    int k = paramArrayOfByte.length;
    if ((d != 7) && (d != 1))
    {
      paramArrayOfByte = String.valueOf(b(d));
      if (paramArrayOfByte.length() != 0) {}
      for (paramArrayOfByte = "Cannot get BYTE value from ".concat(paramArrayOfByte);; paramArrayOfByte = new String("Cannot get BYTE value from ")) {
        throw new IllegalArgumentException(paramArrayOfByte);
      }
    }
    System.arraycopy(h, 0, paramArrayOfByte, 0, Math.min(f, k));
  }
  
  public short c()
  {
    return d;
  }
  
  protected void c(int paramInt)
  {
    f = paramInt;
  }
  
  public int d()
  {
    int k = e();
    int m = c();
    return k * b[m];
  }
  
  public boolean d(int paramInt)
  {
    return a(new int[] { paramInt });
  }
  
  public int e()
  {
    return f;
  }
  
  protected long e(int paramInt)
  {
    if ((h instanceof long[])) {
      return ((long[])h)[paramInt];
    }
    if ((h instanceof byte[])) {
      return ((byte[])h)[paramInt];
    }
    String str = String.valueOf(b(d));
    if (str.length() != 0) {}
    for (str = "Cannot get integer value from ".concat(str);; str = new String("Cannot get integer value from ")) {
      throw new IllegalArgumentException(str);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
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
              do
              {
                do
                {
                  return false;
                } while (!(paramObject instanceof hxh));
                paramObject = (hxh)paramObject;
              } while ((c != c) || (f != f) || (d != d));
              if (h == null) {
                break;
              }
            } while (h == null);
            if (!(h instanceof long[])) {
              break;
            }
          } while (!(h instanceof long[]));
          return Arrays.equals((long[])h, (long[])h);
          if (!(h instanceof hxl[])) {
            break;
          }
        } while (!(h instanceof hxl[]));
        return Arrays.equals((hxl[])h, (hxl[])h);
        if (!(h instanceof byte[])) {
          break;
        }
      } while (!(h instanceof byte[]));
      return Arrays.equals((byte[])h, (byte[])h);
      return h.equals(h);
    } while (h != null);
    return true;
  }
  
  protected hxl f(int paramInt)
  {
    if ((d != 10) && (d != 5))
    {
      String str = String.valueOf(b(d));
      if (str.length() != 0) {}
      for (str = "Cannot get RATIONAL value from ".concat(str);; str = new String("Cannot get RATIONAL value from ")) {
        throw new IllegalArgumentException(str);
      }
    }
    return ((hxl[])h)[paramInt];
  }
  
  public boolean f()
  {
    return h != null;
  }
  
  protected void g(int paramInt)
  {
    i = paramInt;
  }
  
  public int[] g()
  {
    if (h == null) {}
    while (!(h instanceof long[])) {
      return null;
    }
    long[] arrayOfLong = (long[])h;
    int[] arrayOfInt = new int[arrayOfLong.length];
    int k = 0;
    while (k < arrayOfLong.length)
    {
      arrayOfInt[k] = ((int)arrayOfLong[k]);
      k += 1;
    }
    return arrayOfInt;
  }
  
  public Object h()
  {
    return h;
  }
  
  public int hashCode()
  {
    int m = c;
    int n = f;
    int i1 = d;
    if (h == null) {}
    for (int k = 0;; k = h.hashCode()) {
      return k + (((m + 527) * 31 + n) * 31 + i1) * 31;
    }
  }
  
  protected byte[] i()
  {
    return (byte[])h;
  }
  
  protected int j()
  {
    return i;
  }
  
  protected boolean k()
  {
    return e;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(String.format("tag id: %04X\n", new Object[] { Short.valueOf(c) }));
    int k = g;
    String str2 = String.valueOf(b(d));
    int m = f;
    int n = i;
    Object localObject;
    if (h == null) {
      localObject = "";
    }
    for (;;)
    {
      localObject = String.valueOf(localObject);
      return String.valueOf(str1).length() + 74 + String.valueOf(str2).length() + String.valueOf(localObject).length() + str1 + "ifd id: " + k + "\ntype: " + str2 + "\ncount: " + m + "\noffset: " + n + "\nvalue: " + (String)localObject + "\n";
      if ((h instanceof byte[]))
      {
        if (d == 2)
        {
          if (h != null)
          {
            if ((h instanceof String))
            {
              localObject = (String)h;
              continue;
            }
            if ((h instanceof byte[]))
            {
              localObject = (byte[])h;
              if ((localObject.length > 0) && (localObject[(localObject.length - 1)] == 0))
              {
                localObject = new String((byte[])localObject, 0, localObject.length - 1, a);
                continue;
              }
              localObject = new String((byte[])localObject, a);
              continue;
            }
          }
          localObject = null;
        }
        else
        {
          localObject = Arrays.toString((byte[])h);
        }
      }
      else if ((h instanceof long[]))
      {
        if (((long[])h).length == 1) {
          localObject = String.valueOf(((long[])h)[0]);
        } else {
          localObject = Arrays.toString((long[])h);
        }
      }
      else if ((h instanceof Object[]))
      {
        if (((Object[])h).length == 1)
        {
          localObject = ((Object[])h)[0];
          if (localObject == null) {
            localObject = "";
          } else {
            localObject = localObject.toString();
          }
        }
        else
        {
          localObject = Arrays.toString((Object[])h);
        }
      }
      else {
        localObject = h.toString();
      }
    }
  }
}

/* Location:
 * Qualified Name:     hxh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */