import java.io.Serializable;

public final class fac
  implements Serializable
{
  public final String a;
  public final String b;
  public final String c;
  public final boolean d;
  public final int e;
  
  public fac(String paramString1, String paramString2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    c = null;
    d = false;
    e = paramInt;
  }
  
  public fac(String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = true;
    e = 0;
  }
}

/* Location:
 * Qualified Name:     fac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */