final class kmr
  extends knd
{
  static final kmr o = new kmr();
  
  private kmr()
  {
    super("CharMatcher.digit()", "0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray(), a());
  }
  
  private static char[] a()
  {
    char[] arrayOfChar = new char[31];
    int i = 0;
    while (i < 31)
    {
      arrayOfChar[i] = ((char)("0٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".charAt(i) + '\t'));
      i += 1;
    }
    return arrayOfChar;
  }
}

/* Location:
 * Qualified Name:     kmr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */