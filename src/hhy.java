import java.util.Map;

public final class hhy
  extends hie<khk, khn, kho, khp, khq, khr, khs>
  implements hbh
{
  private volatile String f;
  
  public hhy(hhr paramhhr, hbl paramhbl)
  {
    super(paramhhr, a, new hia(paramhbl), new hhz());
  }
  
  public khk a()
  {
    if (f == null) {
      return null;
    }
    return (khk)b().get(f);
  }
  
  public void a(String paramString)
  {
    f = paramString;
  }
}

/* Location:
 * Qualified Name:     hhy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */