final class hj
  implements hk
{
  public static final hj a = new hj();
  
  public int a(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    int j = 2;
    int i = paramInt1;
    while ((i < paramInt1 + paramInt2) && (j == 2))
    {
      j = hh.b(Character.getDirectionality(paramCharSequence.charAt(i)));
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     hj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */