public abstract class kmn
  implements kns<Character>
{
  public static final kmn a = knf.p;
  public static final kmn b = kmq.o;
  public static final kmn c = kmp.o;
  public static final kmn d = kmr.o;
  public static final kmn e = kmv.o;
  public static final kmn f = kmx.o;
  public static final kmn g = kmy.o;
  public static final kmn h = kna.o;
  public static final kmn i = kmz.o;
  public static final kmn j = kmw.o;
  public static final kmn k = kmt.o;
  public static final kmn l = kne.o;
  public static final kmn m = kmo.o;
  public static final kmn n = knc.o;
  
  public static kmn a(char paramChar)
  {
    return new kmu(paramChar);
  }
  
  public String a(CharSequence paramCharSequence)
  {
    int i1 = paramCharSequence.length() - 1;
    while (i1 >= 0)
    {
      if (!b(paramCharSequence.charAt(i1))) {
        return paramCharSequence.subSequence(0, i1 + 1).toString();
      }
      i1 -= 1;
    }
    return "";
  }
  
  @Deprecated
  public boolean a(Character paramCharacter)
  {
    return b(paramCharacter.charValue());
  }
  
  public abstract boolean b(char paramChar);
  
  public String toString()
  {
    return super.toString();
  }
}

/* Location:
 * Qualified Name:     kmn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */