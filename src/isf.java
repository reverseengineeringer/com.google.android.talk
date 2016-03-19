import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class isf
  extends FilterInputStream
{
  private final ise a;
  
  public isf(InputStream paramInputStream, Logger paramLogger, Level paramLevel, int paramInt)
  {
    super(paramInputStream);
    a = new ise(paramLogger, paramLevel, paramInt);
  }
  
  public void close()
  {
    a.close();
    super.close();
  }
  
  public int read()
  {
    int i = super.read();
    a.write(i);
    return i;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramInt2 = super.read(paramArrayOfByte, paramInt1, paramInt2);
    if (paramInt2 > 0) {
      a.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     isf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */