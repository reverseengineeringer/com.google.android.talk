import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;

public final class mgx
{
  private InputStream a;
  private ByteArrayOutputStream b;
  
  public mgx(InputStream paramInputStream)
  {
    a = paramInputStream;
    try
    {
      b();
      return;
    }
    catch (IOException paramInputStream)
    {
      System.out.println("IOException in CopyInputStream");
      System.out.println(paramInputStream.toString());
    }
  }
  
  private int b()
  {
    b = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['Ā'];
    int i = 0;
    for (;;)
    {
      int j = a.read(arrayOfByte);
      if (-1 == j) {
        break;
      }
      i += 256;
      b.write(arrayOfByte, 0, j);
    }
    b.flush();
    return i;
  }
  
  public ByteArrayInputStream a()
  {
    return new ByteArrayInputStream(b.toByteArray());
  }
}

/* Location:
 * Qualified Name:     mgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */