import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;

final class fjm
  implements fih
{
  fjm(fjj paramfjj, fhw paramfhw, int paramInt) {}
  
  public void a(ConnectionResult paramConnectionResult)
  {
    c.a.lock();
    try
    {
      c.k.a(paramConnectionResult, a, b);
      return;
    }
    finally
    {
      c.a.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     fjm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */