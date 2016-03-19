import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

final class lxk
  extends lxh
{
  static final boolean a;
  private static final Unsafe b = ;
  private static final long c;
  private static final int d;
  
  static
  {
    Field localField = a(Buffer.class, "address");
    long l;
    int i;
    if ((localField == null) || (b == null))
    {
      l = -1L;
      c = l;
      if (b != null) {
        break label84;
      }
      i = -1;
      label42:
      d = i;
      if ((c == -1L) || (d % 8 != 0)) {
        break label96;
      }
    }
    label84:
    label96:
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
      l = b.objectFieldOffset(localField);
      break;
      i = b.arrayBaseOffset(byte[].class);
      break label42;
    }
  }
  
  private static int a(byte[] paramArrayOfByte, int paramInt1, long paramLong, int paramInt2)
  {
    switch (paramInt2)
    {
    default: 
      throw new AssertionError();
    case 0: 
      return lxg.a(paramInt1);
    case 1: 
      return lxg.a(paramInt1, b.getByte(paramArrayOfByte, paramLong));
    }
    return lxg.a(paramInt1, b.getByte(paramArrayOfByte, paramLong), b.getByte(paramArrayOfByte, 1L + paramLong));
  }
  
  private static int a(byte[] paramArrayOfByte, long paramLong, int paramInt)
  {
    int i;
    if (paramInt < 16)
    {
      i = 0;
      paramLong = i + paramLong;
      paramInt -= i;
    }
    long l1;
    Unsafe localUnsafe;
    label120:
    label236:
    label238:
    label343:
    label345:
    do
    {
      long l2;
      do
      {
        do
        {
          i = 0;
          for (;;)
          {
            l1 = paramLong;
            if (paramInt <= 0) {
              break;
            }
            localUnsafe = b;
            l1 = 1L + paramLong;
            i = localUnsafe.getByte(paramArrayOfByte, paramLong);
            if (i < 0) {
              break;
            }
            paramInt -= 1;
            paramLong = l1;
          }
          j = (int)paramLong & 0x7;
          i = j;
          for (l1 = paramLong;; l1 = 1L + l1)
          {
            if (i <= 0) {
              break label120;
            }
            if (b.getByte(paramArrayOfByte, l1) < 0)
            {
              i = j - i;
              break;
            }
            i -= 1;
          }
          i = paramInt - j;
          while ((i >= 8) && ((b.getLong(paramArrayOfByte, l1) & 0x8080808080808080) == 0L))
          {
            l1 += 8L;
            i -= 8;
          }
          i = paramInt - i;
          break;
          if (paramInt == 0) {
            return 0;
          }
          paramInt -= 1;
          if (i >= -32) {
            break label238;
          }
          if (paramInt == 0) {
            return i;
          }
          paramInt -= 1;
          if (i < -62) {
            break label236;
          }
          localUnsafe = b;
          paramLong = 1L + l1;
        } while (localUnsafe.getByte(paramArrayOfByte, l1) <= -65);
        return -1;
        if (i >= -16) {
          break label345;
        }
        if (paramInt < 2) {
          return a(paramArrayOfByte, i, l1, paramInt);
        }
        paramInt -= 2;
        localUnsafe = b;
        l2 = 1L + l1;
        j = localUnsafe.getByte(paramArrayOfByte, l1);
        if ((j > -65) || ((i == -32) && (j < -96)) || ((i == -19) && (j >= -96))) {
          break label343;
        }
        localUnsafe = b;
        paramLong = 1L + l2;
      } while (localUnsafe.getByte(paramArrayOfByte, l2) <= -65);
      return -1;
      if (paramInt < 3) {
        return a(paramArrayOfByte, i, l1, paramInt);
      }
      paramInt -= 3;
      localUnsafe = b;
      paramLong = 1L + l1;
      int j = localUnsafe.getByte(paramArrayOfByte, l1);
      if ((j > -65) || ((i << 28) + (j + 112) >> 30 != 0)) {
        break label453;
      }
      localUnsafe = b;
      l1 = paramLong + 1L;
      if (localUnsafe.getByte(paramArrayOfByte, paramLong) > -65) {
        break label453;
      }
      localUnsafe = b;
      paramLong = 1L + l1;
    } while (localUnsafe.getByte(paramArrayOfByte, l1) <= -65);
    label453:
    return -1;
  }
  
  private static Field a(Class<?> paramClass, String paramString)
  {
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      localField.setAccessible(true);
      Logger localLogger = lxg.a;
      Level localLevel = Level.FINEST;
      String str = paramClass.getName();
      if (localField != null)
      {
        paramClass = "available";
        localLogger.log(localLevel, "{0}.{1}: {2}", new Object[] { str, paramString, paramClass });
        return localField;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Object localObject = null;
        continue;
        paramClass = "unavailable";
      }
    }
  }
  
  private static Unsafe a()
  {
    try
    {
      Unsafe localUnsafe = (Unsafe)AccessController.doPrivileged(new lxl());
      Logger localLogger = lxg.a;
      Level localLevel = Level.FINEST;
      if (localUnsafe != null)
      {
        str = "available";
        localLogger.log(localLevel, "sun.misc.Unsafe: {}", str);
        return localUnsafe;
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        Object localObject = null;
        continue;
        String str = "unavailable";
      }
    }
  }
  
  static void a(Class<Unsafe> paramClass)
  {
    paramClass.getMethod("arrayBaseOffset", new Class[] { Class.class });
    paramClass.getMethod("getByte", new Class[] { Object.class, Long.TYPE });
    paramClass.getMethod("putByte", new Class[] { Object.class, Long.TYPE, Byte.TYPE });
    paramClass.getMethod("getLong", new Class[] { Object.class, Long.TYPE });
    paramClass.getMethod("objectFieldOffset", new Class[] { Field.class });
    paramClass.getMethod("getByte", new Class[] { Long.TYPE });
    paramClass.getMethod("getLong", new Class[] { Object.class, Long.TYPE });
    paramClass.getMethod("putByte", new Class[] { Long.TYPE, Byte.TYPE });
    paramClass.getMethod("getLong", new Class[] { Long.TYPE });
  }
  
  int a(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l1 = d + paramInt1;
    long l3 = l1 + paramInt2;
    int j = paramCharSequence.length();
    int i;
    if ((j > paramInt2) || (paramArrayOfByte.length - paramInt2 < paramInt1))
    {
      i = paramCharSequence.charAt(j - 1);
      throw new ArrayIndexOutOfBoundsException(37 + "Failed writing " + i + " at index " + (paramInt1 + paramInt2));
    }
    paramInt1 = 0;
    while (paramInt1 < j)
    {
      paramInt2 = paramCharSequence.charAt(paramInt1);
      if (paramInt2 >= 128) {
        break;
      }
      b.putByte(paramArrayOfByte, l1, (byte)paramInt2);
      paramInt1 += 1;
      l1 = 1L + l1;
    }
    if (paramInt1 == j) {
      return (int)(l1 - d);
    }
    for (;;)
    {
      if (paramInt1 < j)
      {
        i = paramCharSequence.charAt(paramInt1);
        Unsafe localUnsafe;
        long l2;
        if ((i < 128) && (l1 < l3))
        {
          localUnsafe = b;
          l2 = 1L + l1;
          localUnsafe.putByte(paramArrayOfByte, l1, (byte)i);
          l1 = l2;
        }
        for (;;)
        {
          paramInt1 += 1;
          break;
          if ((i < 2048) && (l1 <= l3 - 2L))
          {
            localUnsafe = b;
            l2 = 1L + l1;
            localUnsafe.putByte(paramArrayOfByte, l1, (byte)(i >>> 6 | 0x3C0));
            localUnsafe = b;
            l1 = 1L + l2;
            localUnsafe.putByte(paramArrayOfByte, l2, (byte)(i & 0x3F | 0x80));
          }
          else if (((i < 55296) || (57343 < i)) && (l1 <= l3 - 3L))
          {
            localUnsafe = b;
            l2 = 1L + l1;
            localUnsafe.putByte(paramArrayOfByte, l1, (byte)(i >>> 12 | 0x1E0));
            localUnsafe = b;
            long l4 = 1L + l2;
            localUnsafe.putByte(paramArrayOfByte, l2, (byte)(i >>> 6 & 0x3F | 0x80));
            localUnsafe = b;
            l1 = 1L + l4;
            localUnsafe.putByte(paramArrayOfByte, l4, (byte)(i & 0x3F | 0x80));
          }
          else
          {
            if (l1 > l3 - 4L) {
              break label620;
            }
            paramInt2 = paramInt1;
            char c1;
            if (paramInt1 + 1 != j)
            {
              paramInt1 += 1;
              c1 = paramCharSequence.charAt(paramInt1);
              if (!Character.isSurrogatePair(i, c1)) {
                paramInt2 = paramInt1;
              }
            }
            else
            {
              throw new lxj(paramInt2 - 1, j);
            }
            paramInt2 = Character.toCodePoint(i, c1);
            localUnsafe = b;
            l2 = 1L + l1;
            localUnsafe.putByte(paramArrayOfByte, l1, (byte)(paramInt2 >>> 18 | 0xF0));
            localUnsafe = b;
            l1 = 1L + l2;
            localUnsafe.putByte(paramArrayOfByte, l2, (byte)(paramInt2 >>> 12 & 0x3F | 0x80));
            localUnsafe = b;
            l2 = 1L + l1;
            localUnsafe.putByte(paramArrayOfByte, l1, (byte)(paramInt2 >>> 6 & 0x3F | 0x80));
            localUnsafe = b;
            l1 = 1L + l2;
            localUnsafe.putByte(paramArrayOfByte, l2, (byte)(paramInt2 & 0x3F | 0x80));
          }
        }
        label620:
        if ((55296 <= i) && (i <= 57343) && ((paramInt1 + 1 == j) || (!Character.isSurrogatePair(i, paramCharSequence.charAt(paramInt1 + 1))))) {
          throw new lxj(paramInt1, j);
        }
        throw new ArrayIndexOutOfBoundsException(46 + "Failed writing " + i + " at index " + l1);
      }
      return (int)(l1 - d);
    }
  }
  
  int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((paramInt1 | paramInt2 | paramArrayOfByte.length - paramInt2) < 0) {
      throw new ArrayIndexOutOfBoundsException(String.format("Array length=%d, index=%d, limit=%d", new Object[] { Integer.valueOf(paramArrayOfByte.length), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
    }
    long l = d + paramInt1;
    return a(paramArrayOfByte, l, (int)(d + paramInt2 - l));
  }
}

/* Location:
 * Qualified Name:     lxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */