import java.util.Locale;

public final class euf
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public long f;
  public long g;
  
  public String toString()
  {
    return String.format(Locale.US, "cell signal: %d%%, wifi signal: %d%%, wifi signal handoff: %d%%, wifi link speed: %dMbps, wifi link speed handoff: %dMbps", new Object[] { Integer.valueOf(a), Integer.valueOf(b), Integer.valueOf(c), Integer.valueOf(d), Integer.valueOf(e) });
  }
}

/* Location:
 * Qualified Name:     euf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */