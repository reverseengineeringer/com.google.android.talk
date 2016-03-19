public final class gpp
{
  private final gpq<Integer> a = new gpq();
  
  public int a(String paramString)
  {
    return a.a(paramString);
  }
  
  public void a(String paramString, int paramInt)
  {
    a.a(paramString, Integer.valueOf(paramInt));
  }
  
  public int b(String paramString, int paramInt)
  {
    return ((Integer)a.a(paramString, paramInt)).intValue();
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     gpp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */