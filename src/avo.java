import java.io.FilterInputStream;
import java.io.InputStream;

public final class avo
  extends FilterInputStream
{
  private int a = Integer.MIN_VALUE;
  
  public avo(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private long a(long paramLong)
  {
    long l;
    if (a == 0) {
      l = -1L;
    }
    do
    {
      do
      {
        return l;
        l = paramLong;
      } while (a == Integer.MIN_VALUE);
      l = paramLong;
    } while (paramLong <= a);
    return a;
  }
  
  private void b(long paramLong)
  {
    if ((a != Integer.MIN_VALUE) && (paramLong != -1L)) {
      a = ((int)(a - paramLong));
    }
  }
  
  public int available()
  {
    if (a == Integer.MIN_VALUE) {
      return super.available();
    }
    return Math.min(a, super.available());
  }
  
  public void mark(int paramInt)
  {
    super.mark(paramInt);
    a = paramInt;
  }
  
  public int read()
  {
    if (a(1L) == -1L) {
      return -1;
    }
    int i = super.read();
    b(1L);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = (int)a(paramInt2);
    if (paramInt2 == -1) {
      return -1;
    }
    paramInt1 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    b(paramInt1);
    return paramInt1;
  }
  
  public void reset()
  {
    super.reset();
    a = Integer.MIN_VALUE;
  }
  
  public long skip(long paramLong)
  {
    paramLong = a(paramLong);
    if (paramLong == -1L) {
      return -1L;
    }
    paramLong = super.skip(paramLong);
    b(paramLong);
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     avo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */