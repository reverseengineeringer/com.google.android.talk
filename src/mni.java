import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;

public final class mni
  extends mng
{
  private final byte[] d;
  private final Charset e;
  
  public mni(String paramString)
  {
    this(paramString, "text/plain");
  }
  
  private mni(String paramString1, String paramString2)
  {
    super(paramString2);
    if (paramString1 == null) {
      throw new IllegalArgumentException("Text may not be null");
    }
    paramString2 = Charset.forName("US-ASCII");
    d = paramString1.getBytes(paramString2.name());
    e = paramString2;
  }
  
  public void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(d);
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = localByteArrayInputStream.read(arrayOfByte);
      if (i == -1) {
        break;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
    paramOutputStream.flush();
  }
  
  public String b()
  {
    return e.name();
  }
  
  public String c()
  {
    return "8bit";
  }
  
  public long d()
  {
    return d.length;
  }
  
  public String e()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     mni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */