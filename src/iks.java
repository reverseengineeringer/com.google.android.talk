import java.util.Locale;

public final class iks
{
  private final int a;
  private final int b;
  private String c;
  
  public iks(String paramString)
  {
    c = paramString;
    a = 26;
    b = -1;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "GmsFailureEvent gmsApi=%d, statusCode=%d", new Object[] { Integer.valueOf(a), Integer.valueOf(b) });
  }
}

/* Location:
 * Qualified Name:     iks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */