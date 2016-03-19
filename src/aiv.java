import java.io.IOException;

public final class aiv
  extends IOException
{
  private final int a;
  
  public aiv(int paramInt)
  {
    this(49 + "Http request failed with status code: " + paramInt, paramInt);
  }
  
  public aiv(String paramString)
  {
    this(paramString, -1);
  }
  
  public aiv(String paramString, int paramInt)
  {
    this(paramString, paramInt, (byte)0);
  }
  
  private aiv(String paramString, int paramInt, byte paramByte)
  {
    super(paramString, null);
    a = paramInt;
  }
  
  public int a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     aiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */