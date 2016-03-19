import android.util.Log;

public final class hnp
  implements hnj
{
  final Object a = new Object();
  hno b = new hno(1000);
  hnj c;
  boolean d;
  hnm e;
  
  public hnp(int paramInt, hnm paramhnm)
  {
    e = paramhnm;
  }
  
  void a()
  {
    synchronized (a)
    {
      d = true;
      b = null;
      return;
    }
  }
  
  void a(hnj paramhnj)
  {
    synchronized (a)
    {
      if (d) {
        return;
      }
    }
  }
  
  public void a(mik parammik)
  {
    synchronized (a)
    {
      if (d) {
        return;
      }
      if (c != null)
      {
        c.a(parammik);
        return;
      }
    }
    if (!b.a(parammik))
    {
      a();
      if (e != null)
      {
        Log.e("Primes", "Startup queue overflow - shutting down Primes");
        hmn.a = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     hnp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */