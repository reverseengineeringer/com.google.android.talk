import java.util.Map;

public final class cvm
{
  private static final Map<String, cvn> a = new hq();
  
  public static cvn a(String paramString)
  {
    synchronized (a)
    {
      cvn localcvn2 = (cvn)a.get(paramString);
      cvn localcvn1 = localcvn2;
      if (localcvn2 == null)
      {
        localcvn1 = new cvn(paramString);
        a.put(paramString, localcvn1);
      }
      return localcvn1;
    }
  }
}

/* Location:
 * Qualified Name:     cvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */