public class doh
  extends dnz
{
  private static final long serialVersionUID = 1L;
  private final byte[] a;
  private final byte[] b;
  
  public doh(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    a = paramArrayOfByte1;
    b = paramArrayOfByte2;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kgp localkgp = new kgp();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    try
    {
      paramString = new kgd();
      byte[] arrayOfByte = a;
      a = ((kgd)lyi.b(paramString, arrayOfByte, arrayOfByte.length));
      paramString = new kii();
      arrayOfByte = b;
      b = ((kii)lyi.b(paramString, arrayOfByte, arrayOfByte.length));
      return localkgp;
    }
    catch (lyg paramString)
    {
      ezi.d("Babel", "Parse failed", paramString);
    }
    return null;
  }
  
  public long b()
  {
    return cgw.E();
  }
  
  public String f()
  {
    return "broadcasts/modify";
  }
}

/* Location:
 * Qualified Name:     doh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */