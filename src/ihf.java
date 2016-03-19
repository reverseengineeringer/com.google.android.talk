import java.io.IOException;

public final class ihf
  extends IOException
{
  private final int a;
  private final String b;
  
  public ihf(int paramInt, String paramString)
  {
    super(String.valueOf(null).length() + 13 + paramInt + ": " + null);
    a = paramInt;
    b = null;
  }
  
  public int a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ihf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */