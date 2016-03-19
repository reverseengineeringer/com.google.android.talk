public class doa
  extends dnz
{
  private static final long serialVersionUID = 1L;
  private final byte[] a;
  
  public doa(byte[] paramArrayOfByte)
  {
    a = paramArrayOfByte;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kgn localkgn = new kgn();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    try
    {
      paramString = new kgd();
      byte[] arrayOfByte = a;
      a = ((kgd)lyi.b(paramString, arrayOfByte, arrayOfByte.length));
      return localkgn;
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
    return "broadcasts/add";
  }
}

/* Location:
 * Qualified Name:     doa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */