import java.util.concurrent.ThreadFactory;

final class ano
  implements ThreadFactory
{
  final anq a;
  final boolean b;
  private final String c;
  private int d;
  
  ano(String paramString, anq paramanq, boolean paramBoolean)
  {
    c = paramString;
    a = paramanq;
    b = paramBoolean;
  }
  
  public Thread newThread(Runnable paramRunnable)
  {
    try
    {
      String str = c;
      int i = d;
      paramRunnable = new anp(this, paramRunnable, String.valueOf(str).length() + 25 + "glide-" + str + "-thread-" + i);
      d += 1;
      return paramRunnable;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     ano
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */