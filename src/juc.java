public final class juc
{
  private final jtn a;
  
  private juc(jtn paramjtn)
  {
    a = paramjtn;
  }
  
  public static Runnable a(juc paramjuc, Runnable paramRunnable)
  {
    if (paramjuc == null) {
      return paramRunnable;
    }
    return jua.a(a, paramRunnable);
  }
  
  public static juc a()
  {
    return new juc(jud.a());
  }
  
  public String toString()
  {
    if (a == null) {
      return "null ref";
    }
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     juc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */