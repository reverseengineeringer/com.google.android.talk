final class knf
  extends knb
{
  static final int o = Integer.numberOfLeadingZeros(31);
  static final knf p = new knf();
  
  knf()
  {
    super("CharMatcher.whitespace()");
  }
  
  public boolean b(char paramChar)
  {
    return " 　\r   　 \013　   　 \t     \f 　 　　 \n 　".charAt(1682554634 * paramChar >>> o) == paramChar;
  }
}

/* Location:
 * Qualified Name:     knf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */