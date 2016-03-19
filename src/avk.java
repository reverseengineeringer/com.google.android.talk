import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public final class avk
  extends FilterInputStream
{
  private final long a;
  private int b;
  
  public avk(InputStream paramInputStream, long paramLong)
  {
    super(paramInputStream);
    a = paramLong;
  }
  
  private int a(int paramInt)
  {
    if (paramInt >= 0) {
      b += paramInt;
    }
    while (a - b <= 0L) {
      return paramInt;
    }
    String str = String.valueOf("Failed to read all expected data, expected: ");
    long l = a;
    paramInt = b;
    throw new IOException(String.valueOf(str).length() + 43 + str + l + ", but read: " + paramInt);
  }
  
  public int available()
  {
    try
    {
      long l = Math.max(a - b, in.available());
      int i = (int)l;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int read()
  {
    try
    {
      int i = a(super.read());
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = a(super.read(paramArrayOfByte, paramInt1, paramInt2));
      return paramInt1;
    }
    finally
    {
      paramArrayOfByte = finally;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     avk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */