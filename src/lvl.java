import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

final class lvl
  extends lvo
{
  private static final long serialVersionUID = 1L;
  private final int d;
  private final int e;
  
  lvl(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(paramArrayOfByte);
    a(paramInt1, paramInt1 + paramInt2, paramArrayOfByte.length);
    d = paramInt1;
    e = paramInt2;
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("BoundedByteStream instances are not to be serialized directly");
  }
  
  public byte a(int paramInt)
  {
    int i = b();
    if ((i - (paramInt + 1) | paramInt) < 0)
    {
      if (paramInt < 0) {
        throw new ArrayIndexOutOfBoundsException(22 + "Index < 0: " + paramInt);
      }
      throw new ArrayIndexOutOfBoundsException(40 + "Index > length: " + paramInt + ", " + i);
    }
    return c[(d + paramInt)];
  }
  
  public int b()
  {
    return e;
  }
  
  protected void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    System.arraycopy(c, d() + paramInt1, paramArrayOfByte, paramInt2, paramInt3);
  }
  
  protected int d()
  {
    return d;
  }
  
  Object writeReplace()
  {
    int i = b();
    byte[] arrayOfByte;
    if (i == 0) {
      arrayOfByte = lwg.c;
    }
    for (;;)
    {
      return lvk.a(arrayOfByte);
      arrayOfByte = new byte[i];
      b(arrayOfByte, 0, 0, i);
    }
  }
}

/* Location:
 * Qualified Name:     lvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */