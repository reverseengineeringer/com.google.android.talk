import java.util.concurrent.Executor;

public enum lbh
  implements Executor
{
  private lbh() {}
  
  public void execute(Runnable paramRunnable)
  {
    paramRunnable.run();
  }
  
  public String toString()
  {
    return "MoreExecutors.directExecutor()";
  }
}

/* Location:
 * Qualified Name:     lbh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */