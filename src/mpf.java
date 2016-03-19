import java.util.concurrent.Executor;

final class mpf
  implements Executor
{
  mpf(mpe parammpe, Executor paramExecutor) {}
  
  public void execute(Runnable paramRunnable)
  {
    a.execute(new mpg(this, paramRunnable));
  }
}

/* Location:
 * Qualified Name:     mpf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */