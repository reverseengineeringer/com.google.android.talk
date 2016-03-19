import android.util.Log;

final class hnd
  implements Runnable
{
  hnd(hnc paramhnc, hna paramhna) {}
  
  public void run()
  {
    try
    {
      b.a(a.b());
      return;
    }
    catch (Exception localException)
    {
      Log.e("StartupMetrics", "background metric failed", localException);
    }
  }
}

/* Location:
 * Qualified Name:     hnd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */