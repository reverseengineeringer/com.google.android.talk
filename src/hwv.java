import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

final class hwv
  extends FilterInputStream
{
  private int a = 0;
  private final byte[] b = new byte[8];
  private final ByteBuffer c = ByteBuffer.wrap(b);
  
  protected hwv(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private void a(byte[] paramArrayOfByte, int paramInt)
  {
    if (read(paramArrayOfByte, 0, paramInt) != paramInt) {
      throw new EOFException();
    }
  }
  
  public int a()
  {
    return a;
  }
  
  public String a(int paramInt, Charset paramCharset)
  {
    byte[] arrayOfByte = new byte[paramInt];
    a(arrayOfByte, arrayOfByte.length);
    return new String(arrayOfByte, paramCharset);
  }
  
  public void a(long paramLong)
  {
    paramLong -= a;
    if (paramLong < 0L) {
      throw new IOException();
    }
    if (skip(paramLong) != paramLong) {
      throw new EOFException();
    }
  }
  
  public void a(ByteOrder paramByteOrder)
  {
    c.order(paramByteOrder);
  }
  
  public ByteOrder b()
  {
    return c.order();
  }
  
  public short c()
  {
    a(b, 2);
    c.rewind();
    return c.getShort();
  }
  
  public int d()
  {
    return c() & 0xFFFF;
  }
  
  public int e()
  {
    a(b, 4);
    c.rewind();
    return c.getInt();
  }
  
  public long f()
  {
    return e() & 0xFFFFFFFF;
  }
  
  public int read()
  {
    int j = in.read();
    int k = a;
    if (j >= 0) {}
    for (int i = 1;; i = 0)
    {
      a = (i + k);
      return j;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    int i = in.read(paramArrayOfByte);
    a += Math.max(i, 0);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt1 = in.read(paramArrayOfByte, paramInt1, paramInt2);
    a += Math.max(paramInt1, 0);
    return paramInt1;
  }
  
  public long skip(long paramLong)
  {
    paramLong = in.skip(paramLong);
    a = ((int)(a + paramLong));
    return paramLong;
  }
}

/* Location:
 * Qualified Name:     hwv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */