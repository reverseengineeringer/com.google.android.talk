import java.io.IOException;

public abstract class lvf
  implements lwp
{
  public int a = 0;
  
  public byte[] a()
  {
    try
    {
      byte[] arrayOfByte = new byte[m()];
      lvq locallvq = lvq.a(arrayOfByte);
      a(locallvq);
      locallvq.h();
      return arrayOfByte;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", localIOException);
    }
  }
  
  lxe b()
  {
    return new lxe();
  }
}

/* Location:
 * Qualified Name:     lvf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */