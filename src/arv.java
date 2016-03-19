import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class arv
  extends FilterInputStream
{
  private volatile byte[] a;
  private int b;
  private int c;
  private int d = -1;
  private int e;
  private final amg f;
  
  public arv(InputStream paramInputStream, amg paramamg)
  {
    this(paramInputStream, paramamg, (byte)0);
  }
  
  private arv(InputStream paramInputStream, amg paramamg, byte paramByte)
  {
    super(paramInputStream);
    f = paramamg;
    a = paramamg.a(65536);
  }
  
  private int a(InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    if ((d == -1) || (e - d >= c))
    {
      i = paramInputStream.read(paramArrayOfByte);
      if (i > 0)
      {
        d = -1;
        e = 0;
        b = i;
      }
      return i;
    }
    int j;
    byte[] arrayOfByte;
    if ((d == 0) && (c > paramArrayOfByte.length) && (b == paramArrayOfByte.length))
    {
      j = paramArrayOfByte.length << 1;
      i = j;
      if (j > c) {
        i = c;
      }
      arrayOfByte = f.a(i);
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
      a = arrayOfByte;
      f.a(paramArrayOfByte);
      e -= d;
      d = 0;
      b = 0;
      j = paramInputStream.read(arrayOfByte, e, arrayOfByte.length - e);
      if (j > 0) {
        break label227;
      }
    }
    label227:
    for (int i = e;; i = e + j)
    {
      b = i;
      return j;
      arrayOfByte = paramArrayOfByte;
      if (d <= 0) {
        break;
      }
      System.arraycopy(paramArrayOfByte, d, paramArrayOfByte, 0, paramArrayOfByte.length - d);
      arrayOfByte = paramArrayOfByte;
      break;
    }
  }
  
  private static IOException c()
  {
    throw new IOException("BufferedInputStream is closed");
  }
  
  public void a()
  {
    try
    {
      c = a.length;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int available()
  {
    try
    {
      InputStream localInputStream = in;
      if ((a == null) || (localInputStream == null)) {
        throw c();
      }
    }
    finally {}
    int i = b;
    int j = e;
    int k = ((InputStream)localObject).available();
    return k + (i - j);
  }
  
  public void b()
  {
    try
    {
      if (a != null)
      {
        f.a(a);
        a = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void close()
  {
    if (a != null)
    {
      f.a(a);
      a = null;
    }
    InputStream localInputStream = in;
    in = null;
    if (localInputStream != null) {
      localInputStream.close();
    }
  }
  
  public void mark(int paramInt)
  {
    try
    {
      c = Math.max(c, paramInt);
      d = e;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean markSupported()
  {
    return true;
  }
  
  public int read()
  {
    int i = -1;
    byte[] arrayOfByte2;
    try
    {
      arrayOfByte2 = a;
      InputStream localInputStream1 = in;
      if ((arrayOfByte2 == null) || (localInputStream1 == null)) {
        throw c();
      }
    }
    finally {}
    if (e >= b)
    {
      int j = a(localInputStream2, arrayOfByte2);
      if (j != -1) {}
    }
    for (;;)
    {
      return i;
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 != a)
      {
        arrayOfByte2 = a;
        arrayOfByte1 = arrayOfByte2;
        if (arrayOfByte2 == null) {
          throw c();
        }
      }
      if (b - e > 0)
      {
        i = e;
        e = (i + 1);
        i = arrayOfByte1[i];
        i &= 0xFF;
      }
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Object localObject2;
    try
    {
      localObject2 = a;
      if (localObject2 == null) {
        throw c();
      }
    }
    finally {}
    if (paramInt2 == 0) {
      paramInt1 = 0;
    }
    for (;;)
    {
      return paramInt1;
      InputStream localInputStream = in;
      if (localInputStream == null) {
        throw c();
      }
      int i;
      if (e < b)
      {
        if (b - e >= paramInt2) {}
        for (i = paramInt2;; i = b - e)
        {
          System.arraycopy(localObject2, e, paramArrayOfByte, paramInt1, i);
          e += i;
          if (i == paramInt2) {
            break;
          }
          if (localInputStream.available() != 0) {
            break label346;
          }
          break;
        }
      }
      for (;;)
      {
        int k;
        if ((d == -1) && (i >= localObject2.length))
        {
          paramInt1 = localInputStream.read(paramArrayOfByte, j, i);
          k = paramInt1;
          localObject1 = localObject2;
          if (paramInt1 != -1) {
            break label277;
          }
          if (i != paramInt2) {
            break label370;
          }
          paramInt1 = -1;
          break;
        }
        if (a(localInputStream, (byte[])localObject2) == -1)
        {
          if (i != paramInt2) {
            break label378;
          }
          paramInt1 = -1;
          break;
        }
        Object localObject1 = localObject2;
        if (localObject2 != a)
        {
          localObject2 = a;
          localObject1 = localObject2;
          if (localObject2 == null) {
            throw c();
          }
        }
        if (b - e >= i) {
          paramInt1 = i;
        }
        for (;;)
        {
          System.arraycopy(localObject1, e, paramArrayOfByte, j, paramInt1);
          e += paramInt1;
          k = paramInt1;
          label277:
          i -= k;
          paramInt1 = paramInt2;
          if (i == 0) {
            break;
          }
          if (localInputStream.available() != 0) {
            break label326;
          }
          paramInt1 = paramInt2 - i;
          break;
          paramInt1 = b;
          k = e;
          paramInt1 -= k;
        }
        label326:
        j += k;
        localObject2 = localObject1;
        continue;
        paramInt1 = i;
        break;
        label346:
        int j = paramInt1 + i;
        i = paramInt2 - i;
        continue;
        i = paramInt2;
        j = paramInt1;
      }
      label370:
      paramInt1 = paramInt2 - i;
      continue;
      label378:
      paramInt1 = paramInt2 - i;
    }
  }
  
  public void reset()
  {
    try
    {
      if (a == null) {
        throw new IOException("Stream is closed");
      }
    }
    finally {}
    if (-1 == d)
    {
      int i = e;
      int j = c;
      throw new arw(66 + "Mark has been invalidated, pos: " + i + " markLimit: " + j);
    }
    e = d;
  }
  
  public long skip(long paramLong)
  {
    InputStream localInputStream;
    try
    {
      byte[] arrayOfByte1 = a;
      localInputStream = in;
      if (arrayOfByte1 == null) {
        throw c();
      }
    }
    finally {}
    if (paramLong < 1L) {
      paramLong = 0L;
    }
    for (;;)
    {
      return paramLong;
      if (localInputStream == null) {
        throw c();
      }
      if (b - e >= paramLong)
      {
        e = ((int)(e + paramLong));
      }
      else
      {
        long l = b - e;
        e = b;
        if ((d != -1) && (paramLong <= c))
        {
          if (a(localInputStream, arrayOfByte2) == -1)
          {
            paramLong = l;
          }
          else if (b - e >= paramLong - l)
          {
            e = ((int)(paramLong - l + e));
          }
          else
          {
            paramLong = l + b - e;
            e = b;
          }
        }
        else
        {
          paramLong = localInputStream.skip(paramLong - l);
          paramLong = l + paramLong;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     arv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */