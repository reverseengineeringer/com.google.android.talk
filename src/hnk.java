import android.util.Log;

public final class hnk
  implements Runnable
{
  public hnk(hnn paramhnn, hnp paramhnp, hnl paramhnl) {}
  
  public void run()
  {
    try
    {
      hnj localhnj = a.a();
      fii.a(localhnj);
      b.a(localhnj);
      return;
    }
    catch (Exception localException)
    {
      b.a();
      if (c != null)
      {
        Log.e("Primes", "Provider failure - shutting down Primes", localException);
        hmn.a = true;
        return;
      }
      Log.e("TransmitterFactory", "provider failed, but no callback", localException);
    }
  }
}

/* Location:
 * Qualified Name:     hnk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */