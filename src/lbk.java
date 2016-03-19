final class lbk
  extends kzz<Void>
  implements Runnable
{
  private final Runnable a;
  
  public lbk(Runnable paramRunnable)
  {
    a = ((Runnable)fii.a(paramRunnable));
  }
  
  public void run()
  {
    try
    {
      a.run();
      return;
    }
    catch (Throwable localThrowable)
    {
      a(localThrowable);
      throw koh.a(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     lbk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */