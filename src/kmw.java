final class kmw
  extends knb
{
  static final kmw o = new kmw();
  
  private kmw()
  {
    super("CharMatcher.javaIsoControl()");
  }
  
  public boolean b(char paramChar)
  {
    return (paramChar <= '\037') || ((paramChar >= '') && (paramChar <= ''));
  }
}

/* Location:
 * Qualified Name:     kmw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */