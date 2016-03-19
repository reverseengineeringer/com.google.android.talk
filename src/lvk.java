import java.io.OutputStream;
import java.io.Serializable;

public abstract class lvk
  implements Serializable, Iterable<Byte>
{
  public static final lvk a = new lvo(lwg.c);
  int b = 0;
  
  static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramInt2 - paramInt1;
    if ((paramInt1 | paramInt2 | i | paramInt3 - paramInt2) < 0)
    {
      if (paramInt1 < 0) {
        throw new IndexOutOfBoundsException(32 + "Beginning index: " + paramInt1 + " < 0");
      }
      if (paramInt2 < paramInt1) {
        throw new IndexOutOfBoundsException(66 + "Beginning index larger than ending index: " + paramInt1 + ", " + paramInt2);
      }
      throw new IndexOutOfBoundsException(37 + "End index: " + paramInt2 + " >= " + paramInt3);
    }
    return i;
  }
  
  public static lvk a(String paramString)
  {
    return new lvo(paramString.getBytes(lwg.a));
  }
  
  static lvk a(byte[] paramArrayOfByte)
  {
    return new lvo(paramArrayOfByte);
  }
  
  public static lvk a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, 0, paramInt2);
    return new lvo(arrayOfByte);
  }
  
  static lvk b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new lvl(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public abstract byte a(int paramInt);
  
  public abstract lvk a(int paramInt1, int paramInt2);
  
  public final lvm a()
  {
    return new lvm(this);
  }
  
  abstract void a(OutputStream paramOutputStream, int paramInt1, int paramInt2);
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    a(paramInt1, paramInt1 + paramInt3, b());
    a(paramInt2, paramInt2 + paramInt3, paramArrayOfByte.length);
    if (paramInt3 > 0) {
      b(paramArrayOfByte, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public abstract int b();
  
  protected abstract int b(int paramInt1, int paramInt2);
  
  protected abstract void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3);
  
  public abstract lvp c();
  
  public abstract boolean equals(Object paramObject);
  
  public final int hashCode()
  {
    int j = b;
    int i = j;
    if (j == 0)
    {
      i = b();
      j = b(i, i);
      i = j;
      if (j == 0) {
        i = 1;
      }
      b = i;
    }
    return i;
  }
  
  public final String toString()
  {
    return String.format("<ByteString@%s size=%d>", new Object[] { Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(b()) });
  }
}

/* Location:
 * Qualified Name:     lvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */