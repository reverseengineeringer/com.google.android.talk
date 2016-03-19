import com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl;

public final class bdh
  implements Runnable
{
  public bdh(ConcurrentServiceImpl paramConcurrentServiceImpl) {}
  
  public void run()
  {
    ConcurrentServiceImpl localConcurrentServiceImpl = a;
    int i = 0;
    for (;;)
    {
      try
      {
        if (a.d)
        {
          if (!a.c.f()) {
            break label96;
          }
          a.a();
          if (i != 0)
          {
            a.b();
            a.b(ConcurrentServiceImpl.b);
          }
          return;
        }
        if (a.c.d())
        {
          a.a();
          continue;
        }
        i = 1;
      }
      finally {}
      continue;
      label96:
      i = 1;
    }
  }
}

/* Location:
 * Qualified Name:     bdh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */