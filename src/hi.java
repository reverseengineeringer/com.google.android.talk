final class hi
  implements hk
{
  public static final hi a = new hi(true);
  public static final hi b = new hi(false);
  private final boolean c;
  
  private hi(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int k = 1;
    int j = 0;
    int m;
    for (int i = paramInt1;; i = m)
    {
      m = i;
      if (m >= paramInt1 + paramInt2) {
        break;
      }
      switch (hh.a(Character.getDirectionality(paramCharSequence.charAt(m))))
      {
      default: 
        i = j;
        m += 1;
        j = i;
      }
    }
    if (c) {
      i = 0;
    }
    do
    {
      do
      {
        return i;
        i = 1;
        break;
        i = k;
      } while (!c);
      i = 1;
      break;
      if (j == 0) {
        break label131;
      }
      i = k;
    } while (c);
    return 0;
    label131:
    return 2;
  }
}

/* Location:
 * Qualified Name:     hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */