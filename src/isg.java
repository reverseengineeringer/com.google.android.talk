import java.io.FilterOutputStream;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class isg
  extends FilterOutputStream
{
  final ise a;
  
  public isg(OutputStream paramOutputStream, Logger paramLogger, Level paramLevel, int paramInt)
  {
    super(paramOutputStream);
    a = new ise(paramLogger, paramLevel, paramInt);
  }
  
  public void close()
  {
    a.close();
    super.close();
  }
  
  public void write(int paramInt)
  {
    out.write(paramInt);
    a.write(paramInt);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    out.write(paramArrayOfByte, paramInt1, paramInt2);
    a.write(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     isg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */