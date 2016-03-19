import android.content.Context;

public final class brz
  extends ech
{
  private long c = 0L;
  
  public brz(Context paramContext, bfd parambfd, String paramString)
  {
    super(paramContext, a(paramString), parambfd, paramString);
  }
  
  public static String a(String paramString)
  {
    String str = String.valueOf("UpdateWatermarkTask");
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  protected dom<?, ?> b()
  {
    if (c == -1L) {
      return null;
    }
    return new dtj(a, b, c);
  }
  
  protected void c()
  {
    dyy localdyy = new dyy();
    c = bft.a(new bfz(aal.oJ, a.g()), b, localdyy, c, false);
    ((cyh)ilh.a(d(), cyh.class)).a(a.g(), localdyy.f());
  }
  
  public String toString()
  {
    long l = c;
    return a("UpdateWatermarkTask", 40 + "latestReadTimestamp=" + l);
  }
}

/* Location:
 * Qualified Name:     brz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */