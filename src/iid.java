import java.util.concurrent.TimeUnit;

final class iid
  extends iia
{
  static final long a = TimeUnit.HOURS.toMillis(1L);
  private final if<String, iib> b = new if();
  private final gwi c;
  
  iid(gwi paramgwi)
  {
    c = paramgwi;
  }
  
  public iib a(String paramString)
  {
    try
    {
      iib localiib2 = (iib)b.get(paramString);
      iib localiib1 = localiib2;
      if (localiib2 == null)
      {
        localiib1 = new iib(paramString, c);
        b.put(paramString, localiib1);
      }
      return localiib1;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     iid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */