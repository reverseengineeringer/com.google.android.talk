import java.io.FilterInputStream;
import java.io.InputStream;

public final class ajm
  extends FilterInputStream
{
  private static final byte[] a = { -1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0 };
  private static final int b = 29;
  private static final int c = 31;
  private final byte d;
  private int e;
  
  public ajm(InputStream paramInputStream, int paramInt)
  {
    super(paramInputStream);
    if ((paramInt < -1) || (paramInt > 8)) {
      throw new IllegalArgumentException(43 + "Cannot add invalid orientation: " + paramInt);
    }
    d = ((byte)paramInt);
  }
  
  public void mark(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean markSupported()
  {
    return false;
  }
  
  public int read()
  {
    int i;
    if ((e < 2) || (e > c)) {
      i = super.read();
    }
    for (;;)
    {
      if (i != -1) {
        e += 1;
      }
      return i;
      if (e == c) {
        i = d;
      } else {
        i = a[(e - 2)] & 0xFF;
      }
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (e > c) {
      paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (paramInt1 > 0) {
        e += paramInt1;
      }
      return paramInt1;
      if (e == c)
      {
        paramArrayOfByte[paramInt1] = d;
        paramInt1 = 1;
      }
      else if (e < 2)
      {
        paramInt1 = super.read(paramArrayOfByte, paramInt1, 2 - e);
      }
      else
      {
        paramInt2 = Math.min(c - e, paramInt2);
        System.arraycopy(a, e - 2, paramArrayOfByte, paramInt1, paramInt2);
        paramInt1 = paramInt2;
      }
    }
  }
  
  public void reset()
  {
    throw new UnsupportedOperationException();
  }
  
  public long skip(long paramLong)
  {
    paramLong = super.skip(paramLong);
    if (paramLong > 0L) {
      e = ((int)(e + paramLong));
    }
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     ajm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */