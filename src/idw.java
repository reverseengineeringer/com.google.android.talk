public final class idw
  extends Exception
{
  private static final long serialVersionUID = -2575549139581664777L;
  private final String a;
  private final boolean b;
  
  public idw(Exception paramException, String paramString)
  {
    super(paramException);
    a = paramString;
    b = false;
  }
  
  public idw(String paramString)
  {
    this(paramString, null);
  }
  
  public idw(String paramString, byte paramByte)
  {
    super(paramString);
    b = true;
    a = null;
  }
  
  public idw(String paramString1, String paramString2)
  {
    super(paramString1);
    a = paramString2;
    b = false;
  }
}

/* Location:
 * Qualified Name:     idw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */