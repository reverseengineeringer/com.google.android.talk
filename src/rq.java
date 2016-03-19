import android.os.Bundle;

final class rq
  implements Runnable
{
  rq(ri paramri) {}
  
  public void run()
  {
    ri localri;
    ry localry;
    Bundle localBundle;
    if ((a.I & 0x1) != 0)
    {
      localri = a;
      localry = localri.e(0);
      if (j != null)
      {
        localBundle = new Bundle();
        j.a(localBundle);
        if (localBundle.size() > 0) {
          s = localBundle;
        }
        j.g();
        j.clear();
      }
      r = true;
      q = true;
      if (o != null)
      {
        localry = localri.e(0);
        if (localry != null)
        {
          m = false;
          localri.b(localry, null);
        }
      }
    }
    if ((a.I & 0x1000) != 0)
    {
      localri = a;
      localry = localri.e(108);
      if (j != null)
      {
        localBundle = new Bundle();
        j.a(localBundle);
        if (localBundle.size() > 0) {
          s = localBundle;
        }
        j.g();
        j.clear();
      }
      r = true;
      q = true;
      if (o != null)
      {
        localry = localri.e(0);
        if (localry != null)
        {
          m = false;
          localri.b(localry, null);
        }
      }
    }
    a.H = false;
    a.I = 0;
  }
}

/* Location:
 * Qualified Name:     rq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */