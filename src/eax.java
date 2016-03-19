final class eax
  implements Runnable
{
  eax(eaw parameaw) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (a.e)
      {
        if (eaw.b) {
          a.a("Shutdown Runnable");
        }
        if (a.c > 0) {
          return;
        }
        if (a.stopSelfResult(a.d))
        {
          if (eaw.b) {
            a.a("StopSelf Succeeded");
          }
          a.e();
          return;
        }
      }
      if (eaw.b) {
        a.a("StopSelf Cancelled");
      }
    }
  }
}

/* Location:
 * Qualified Name:     eax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */