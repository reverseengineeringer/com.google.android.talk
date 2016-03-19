import java.io.IOException;

public abstract class lyi
{
  public volatile int eE = -1;
  
  public static final void a(lyi paramlyi, byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      paramArrayOfByte = lxz.a(paramArrayOfByte, 0, paramInt);
      paramlyi.a(paramArrayOfByte);
      paramArrayOfByte.a();
      return;
    }
    catch (IOException paramlyi)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", paramlyi);
    }
  }
  
  public static final byte[] a(lyi paramlyi)
  {
    byte[] arrayOfByte = new byte[paramlyi.c()];
    a(paramlyi, arrayOfByte, arrayOfByte.length);
    return arrayOfByte;
  }
  
  public static <T extends lyi> T b(int paramInt)
  {
    try
    {
      int i;
      Object localObject = lxy.a((byte[])localObject, 0, i);
      paramInt.a((lxy)localObject);
      ((lxy)localObject).a(0);
      return paramInt;
    }
    catch (lyg paramInt)
    {
      throw paramInt;
    }
    catch (IOException paramInt)
    {
      throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).");
    }
  }
  
  public abstract lyi a(lxy paramlxy);
  
  public void a(lxz paramlxz) {}
  
  public int b()
  {
    return 0;
  }
  
  public int c()
  {
    int i = b();
    eE = i;
    return i;
  }
  
  public int e_()
  {
    if (eE < 0) {
      c();
    }
    return eE;
  }
  
  public lyi k()
  {
    return (lyi)super.clone();
  }
  
  public String toString()
  {
    return aal.a(this);
  }
}

/* Location:
 * Qualified Name:     lyi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */