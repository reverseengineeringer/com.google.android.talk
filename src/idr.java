public final class idr
  extends bys
{
  private static final long serialVersionUID = 9057565284386560711L;
  private final boolean a;
  private final String b;
  
  public idr(String paramString, boolean paramBoolean)
  {
    super(String.valueOf(paramString).length() + 40 + "Invalid content-type: " + paramString + ", permanent: " + paramBoolean);
    a = paramBoolean;
    b = paramString;
  }
}

/* Location:
 * Qualified Name:     idr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */