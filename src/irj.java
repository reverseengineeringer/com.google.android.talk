import java.io.OutputStream;

public final class irj
  extends OutputStream
{
  public long a;
  
  public void write(int paramInt)
  {
    a += 1L;
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a += paramInt2;
  }
}

/* Location:
 * Qualified Name:     irj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */