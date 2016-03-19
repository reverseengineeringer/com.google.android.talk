final class knc
  extends knb
{
  static final knc o = new knc();
  
  private knc()
  {
    super("CharMatcher.none()");
  }
  
  public String a(CharSequence paramCharSequence)
  {
    return paramCharSequence.toString();
  }
  
  public boolean b(char paramChar)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     knc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */