import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

final class cvr
  extends FilterOutputStream
{
  cvr(cvq paramcvq, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    try
    {
      out.close();
      return;
    }
    catch (IOException localIOException)
    {
      a.b = true;
    }
  }
  
  public void flush()
  {
    try
    {
      out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      a.b = true;
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      a.b = true;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      a.b = true;
    }
  }
}

/* Location:
 * Qualified Name:     cvr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */