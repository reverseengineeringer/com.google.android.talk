final class kmq
  extends kmn
{
  static final kmn o = new kmq();
  
  public boolean b(char paramChar)
  {
    switch (paramChar)
    {
    default: 
      if ((paramChar < ' ') || (paramChar > ' ')) {
        break;
      }
    case '\t': 
    case '\n': 
    case '\013': 
    case '\f': 
    case '\r': 
    case ' ': 
    case '': 
    case ' ': 
    case ' ': 
    case ' ': 
    case ' ': 
    case '　': 
      return true;
    case ' ': 
      return false;
    }
    return false;
  }
  
  public String toString()
  {
    return "CharMatcher.breakingWhitespace()";
  }
}

/* Location:
 * Qualified Name:     kmq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */