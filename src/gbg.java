import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ReadOnlyBufferException;

public final class gbg
{
  private final ByteBuffer a;
  
  private gbg(ByteBuffer paramByteBuffer)
  {
    a = paramByteBuffer;
  }
  
  private gbg(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this(ByteBuffer.wrap(paramArrayOfByte, paramInt1, paramInt2));
  }
  
  private static int a(CharSequence paramCharSequence)
  {
    int k = 0;
    int n = paramCharSequence.length();
    int j = 0;
    while ((j < n) && (paramCharSequence.charAt(j) < '')) {
      j += 1;
    }
    for (;;)
    {
      int i;
      if (j < n)
      {
        int m = paramCharSequence.charAt(j);
        if (m < 2048)
        {
          i += (127 - m >>> 31);
          j += 1;
        }
        else
        {
          int i2 = paramCharSequence.length();
          if (j < i2)
          {
            int i3 = paramCharSequence.charAt(j);
            if (i3 < 2048)
            {
              k += (127 - i3 >>> 31);
              m = j;
            }
            for (;;)
            {
              j = m + 1;
              break;
              int i1 = k + 2;
              m = j;
              k = i1;
              if (55296 <= i3)
              {
                m = j;
                k = i1;
                if (i3 <= 57343)
                {
                  if (Character.codePointAt(paramCharSequence, j) < 65536) {
                    throw new IllegalArgumentException("Unpaired surrogate at index " + j);
                  }
                  m = j + 1;
                  k = i1;
                }
              }
            }
          }
          i += k;
        }
      }
      else
      {
        for (;;)
        {
          if (i < n) {
            throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + 4294967296L));
          }
          return i;
        }
        i = n;
      }
    }
  }
  
  private static int a(CharSequence paramCharSequence, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int k = paramCharSequence.length();
    int j = 0;
    int m = paramInt1 + paramInt2;
    paramInt2 = j;
    while ((paramInt2 < k) && (paramInt2 + paramInt1 < m))
    {
      j = paramCharSequence.charAt(paramInt2);
      if (j >= 128) {
        break;
      }
      paramArrayOfByte[(paramInt1 + paramInt2)] = ((byte)j);
      paramInt2 += 1;
    }
    if (paramInt2 == k) {
      return paramInt1 + k;
    }
    paramInt1 += paramInt2;
    if (paramInt2 < k)
    {
      int i = paramCharSequence.charAt(paramInt2);
      if ((i < 128) && (paramInt1 < m))
      {
        j = paramInt1 + 1;
        paramArrayOfByte[paramInt1] = ((byte)i);
        paramInt1 = j;
      }
      for (;;)
      {
        paramInt2 += 1;
        break;
        if ((i < 2048) && (paramInt1 <= m - 2))
        {
          j = paramInt1 + 1;
          paramArrayOfByte[paramInt1] = ((byte)(i >>> 6 | 0x3C0));
          paramInt1 = j + 1;
          paramArrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int n;
          if (((i < 55296) || (57343 < i)) && (paramInt1 <= m - 3))
          {
            j = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(i >>> 12 | 0x1E0));
            n = j + 1;
            paramArrayOfByte[j] = ((byte)(i >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(i & 0x3F | 0x80));
          }
          else
          {
            if (paramInt1 > m - 4) {
              break label439;
            }
            j = paramInt2;
            char c;
            if (paramInt2 + 1 != paramCharSequence.length())
            {
              paramInt2 += 1;
              c = paramCharSequence.charAt(paramInt2);
              if (!Character.isSurrogatePair(i, c)) {
                j = paramInt2;
              }
            }
            else
            {
              throw new IllegalArgumentException("Unpaired surrogate at index " + (j - 1));
            }
            j = Character.toCodePoint(i, c);
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 18 | 0xF0));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j >>> 12 & 0x3F | 0x80));
            n = paramInt1 + 1;
            paramArrayOfByte[paramInt1] = ((byte)(j >>> 6 & 0x3F | 0x80));
            paramInt1 = n + 1;
            paramArrayOfByte[n] = ((byte)(j & 0x3F | 0x80));
          }
        }
      }
      label439:
      throw new ArrayIndexOutOfBoundsException("Failed writing " + i + " at index " + paramInt1);
    }
    return paramInt1;
  }
  
  public static int a(String paramString)
  {
    int i = a(paramString);
    return i + e(i);
  }
  
  public static int a(byte[] paramArrayOfByte)
  {
    return e(paramArrayOfByte.length) + paramArrayOfByte.length;
  }
  
  public static gbg a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new gbg(paramArrayOfByte, 0, paramInt2);
  }
  
  private static void a(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.isReadOnly()) {
      throw new ReadOnlyBufferException();
    }
    if (paramByteBuffer.hasArray()) {
      try
      {
        paramByteBuffer.position(a(paramCharSequence, paramByteBuffer.array(), paramByteBuffer.arrayOffset() + paramByteBuffer.position(), paramByteBuffer.remaining()) - paramByteBuffer.arrayOffset());
        return;
      }
      catch (ArrayIndexOutOfBoundsException paramCharSequence)
      {
        paramByteBuffer = new BufferOverflowException();
        paramByteBuffer.initCause(paramCharSequence);
        throw paramByteBuffer;
      }
    }
    b(paramCharSequence, paramByteBuffer);
  }
  
  public static int b(int paramInt)
  {
    if (paramInt >= 0) {
      return e(paramInt);
    }
    return 10;
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    return c(paramInt1) + b(paramInt2);
  }
  
  public static int b(int paramInt, long paramLong)
  {
    return c(paramInt) + b(paramLong);
  }
  
  public static int b(int paramInt, gbn paramgbn)
  {
    paramInt = c(paramInt);
    int i = paramgbn.g();
    return paramInt + (i + e(i));
  }
  
  public static int b(int paramInt, String paramString)
  {
    return c(paramInt) + a(paramString);
  }
  
  public static int b(int paramInt, byte[] paramArrayOfByte)
  {
    return c(paramInt) + a(paramArrayOfByte);
  }
  
  public static int b(long paramLong)
  {
    if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L) {
      return 1;
    }
    if ((0xFFFFFFFFFFFFC000 & paramLong) == 0L) {
      return 2;
    }
    if ((0xFFFFFFFFFFE00000 & paramLong) == 0L) {
      return 3;
    }
    if ((0xFFFFFFFFF0000000 & paramLong) == 0L) {
      return 4;
    }
    if ((0xFFFFFFF800000000 & paramLong) == 0L) {
      return 5;
    }
    if ((0xFFFFFC0000000000 & paramLong) == 0L) {
      return 6;
    }
    if ((0xFFFE000000000000 & paramLong) == 0L) {
      return 7;
    }
    if ((0xFF00000000000000 & paramLong) == 0L) {
      return 8;
    }
    if ((0x8000000000000000 & paramLong) == 0L) {
      return 9;
    }
    return 10;
  }
  
  private static void b(CharSequence paramCharSequence, ByteBuffer paramByteBuffer)
  {
    int m = paramCharSequence.length();
    int j = 0;
    if (j < m)
    {
      int i = paramCharSequence.charAt(j);
      if (i < 128) {
        paramByteBuffer.put((byte)i);
      }
      for (;;)
      {
        j += 1;
        break;
        if (i < 2048)
        {
          paramByteBuffer.put((byte)(i >>> 6 | 0x3C0));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else if ((i < 55296) || (57343 < i))
        {
          paramByteBuffer.put((byte)(i >>> 12 | 0x1E0));
          paramByteBuffer.put((byte)(i >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(i & 0x3F | 0x80));
        }
        else
        {
          int k = j;
          char c;
          if (j + 1 != paramCharSequence.length())
          {
            j += 1;
            c = paramCharSequence.charAt(j);
            if (!Character.isSurrogatePair(i, c)) {
              k = j;
            }
          }
          else
          {
            throw new IllegalArgumentException("Unpaired surrogate at index " + (k - 1));
          }
          k = Character.toCodePoint(i, c);
          paramByteBuffer.put((byte)(k >>> 18 | 0xF0));
          paramByteBuffer.put((byte)(k >>> 12 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k >>> 6 & 0x3F | 0x80));
          paramByteBuffer.put((byte)(k & 0x3F | 0x80));
        }
      }
    }
  }
  
  public static int c(int paramInt)
  {
    return e(paramInt << 3);
  }
  
  public static long c(long paramLong)
  {
    return paramLong << 1 ^ paramLong >> 63;
  }
  
  private void d(long paramLong)
  {
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        g((int)paramLong);
        return;
      }
      g((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public static int e(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0) {
      return 1;
    }
    if ((paramInt & 0xC000) == 0) {
      return 2;
    }
    if ((0xFFE00000 & paramInt) == 0) {
      return 3;
    }
    if ((0xF0000000 & paramInt) == 0) {
      return 4;
    }
    return 5;
  }
  
  public static int f(int paramInt)
  {
    return paramInt << 1 ^ paramInt >> 31;
  }
  
  private void g(int paramInt)
  {
    byte b = (byte)paramInt;
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
  }
  
  public void a()
  {
    if (a.remaining() != 0) {
      throw new IllegalStateException("Did not write as much data as expected.");
    }
  }
  
  public void a(double paramDouble)
  {
    c(3, 1);
    long l = Double.doubleToLongBits(paramDouble);
    byte b = (byte)((int)l & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 8) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 16) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 24) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 32) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 40) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 48) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)((int)(l >> 56) & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
  }
  
  public void a(int paramInt)
  {
    c(7, 0);
    d(f(paramInt));
  }
  
  public void a(int paramInt, float paramFloat)
  {
    c(paramInt, 5);
    paramInt = Float.floatToIntBits(paramFloat);
    byte b = (byte)(paramInt & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)(paramInt >> 8 & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)(paramInt >> 16 & 0xFF);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
    b = (byte)(paramInt >>> 24);
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    c(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      d(paramInt2);
      return;
    }
    d(paramInt2);
  }
  
  public void a(int paramInt, long paramLong)
  {
    c(paramInt, 0);
    d(paramLong);
  }
  
  public void a(int paramInt, gbn paramgbn)
  {
    c(paramInt, 2);
    b(paramgbn);
  }
  
  public void a(int paramInt, String paramString)
  {
    c(paramInt, 2);
    try
    {
      paramInt = e(paramString.length());
      if (paramInt == e(paramString.length() * 3))
      {
        int i = a.position();
        a.position(i + paramInt);
        a(paramString, a);
        int j = a.position();
        a.position(i);
        d(j - i - paramInt);
        a.position(j);
        return;
      }
      d(a(paramString));
      a(paramString, a);
      return;
    }
    catch (BufferOverflowException paramString)
    {
      throw new arw(a.position(), a.limit());
    }
  }
  
  public void a(int paramInt, boolean paramBoolean)
  {
    int i = 0;
    c(paramInt, 0);
    paramInt = i;
    if (paramBoolean) {
      paramInt = 1;
    }
    byte b = (byte)paramInt;
    if (!a.hasRemaining()) {
      throw new arw(a.position(), a.limit());
    }
    a.put(b);
  }
  
  public void a(int paramInt, byte[] paramArrayOfByte)
  {
    c(paramInt, 2);
    d(paramArrayOfByte.length);
    b(paramArrayOfByte);
  }
  
  public void a(long paramLong)
  {
    c(15, 0);
    d(c(paramLong));
  }
  
  public void a(gbn paramgbn)
  {
    paramgbn.a(this);
  }
  
  public void b(gbn paramgbn)
  {
    d(paramgbn.f());
    paramgbn.a(this);
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (a.remaining() >= i)
    {
      a.put(paramArrayOfByte, 0, i);
      return;
    }
    throw new arw(a.position(), a.limit());
  }
  
  public void c(int paramInt1, int paramInt2)
  {
    d(paramInt1 << 3 | paramInt2);
  }
  
  public void d(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        g(paramInt);
        return;
      }
      g(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
}

/* Location:
 * Qualified Name:     gbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */