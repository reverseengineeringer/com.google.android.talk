import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

public final class kyz
{
  static final byte[] a = new byte[' '];
  private static final OutputStream b = new kza();
  
  public static long a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    fii.a(paramInputStream);
    fii.a(paramOutputStream);
    byte[] arrayOfByte = new byte[' '];
    int i;
    for (long l = 0L;; l += i)
    {
      i = paramInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    return l;
  }
  
  public static byte[] a(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(Math.max(32, paramInputStream.available()));
    a(paramInputStream, localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }
}

/* Location:
 * Qualified Name:     kyz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */