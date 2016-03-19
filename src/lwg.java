import java.nio.ByteBuffer;
import java.nio.charset.Charset;

public final class lwg
{
  public static final Charset a = Charset.forName("UTF-8");
  public static final Charset b = Charset.forName("ISO-8859-1");
  public static final byte[] c;
  public static final ByteBuffer d;
  public static final lvp e;
  
  static
  {
    byte[] arrayOfByte = new byte[0];
    c = arrayOfByte;
    d = ByteBuffer.wrap(arrayOfByte);
    arrayOfByte = c;
    e = lvp.a(arrayOfByte, 0, arrayOfByte.length, false);
  }
  
  static int a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i = paramInt2;
    while (i < paramInt2 + paramInt3)
    {
      paramInt1 = paramInt1 * 31 + paramArrayOfByte[i];
      i += 1;
    }
    return paramInt1;
  }
  
  static boolean a()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     lwg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */