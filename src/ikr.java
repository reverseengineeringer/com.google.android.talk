import java.util.Locale;

public final class ikr
{
  public final String a;
  public final String b;
  public final int c;
  public final int d;
  public final int e;
  
  public ikr(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramString1;
    b = paramString2;
    c = paramInt1;
    d = 1;
    e = paramInt3;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "DatabaseUpgradeFailureEvent: partitionName=%s, oldVersion=%d, newVersion=%d, failureVersion=%d", new Object[] { b, Integer.valueOf(c), Integer.valueOf(d), Integer.valueOf(e) });
  }
}

/* Location:
 * Qualified Name:     ikr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */