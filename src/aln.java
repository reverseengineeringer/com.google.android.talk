final class aln
  implements Appendable
{
  private final Appendable a;
  private boolean b = true;
  
  aln(Appendable paramAppendable)
  {
    a = paramAppendable;
  }
  
  private static CharSequence a(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence;
    if (paramCharSequence == null) {
      localObject = "";
    }
    return (CharSequence)localObject;
  }
  
  public Appendable append(char paramChar)
  {
    boolean bool = false;
    if (b)
    {
      b = false;
      a.append("  ");
    }
    if (paramChar == '\n') {
      bool = true;
    }
    b = bool;
    a.append(paramChar);
    return this;
  }
  
  public Appendable append(CharSequence paramCharSequence)
  {
    paramCharSequence = a(paramCharSequence);
    return append(paramCharSequence, 0, paramCharSequence.length());
  }
  
  public Appendable append(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    boolean bool2 = false;
    paramCharSequence = a(paramCharSequence);
    if (b)
    {
      b = false;
      a.append("  ");
    }
    boolean bool1 = bool2;
    if (paramCharSequence.length() > 0)
    {
      bool1 = bool2;
      if (paramCharSequence.charAt(paramInt2 - 1) == '\n') {
        bool1 = true;
      }
    }
    b = bool1;
    a.append(paramCharSequence, paramInt1, paramInt2);
    return this;
  }
}

/* Location:
 * Qualified Name:     aln
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */