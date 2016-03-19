import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public final class fit
  implements fjs
{
  private final fjj a;
  
  public fit(fjj paramfjj)
  {
    a = paramfjj;
  }
  
  private <A extends fia> void a(fjr<A> paramfjr)
  {
    a.a(paramfjr);
    fia localfia = a.a(paramfjr.f());
    if ((!localfia.d()) && (a.f.containsKey(paramfjr.f())))
    {
      paramfjr.c(new Status(17));
      return;
    }
    paramfjr.b(localfia);
  }
  
  public <A extends fia, R extends fim, T extends fir<R, A>> T a(T paramT)
  {
    return b(paramT);
  }
  
  public void a()
  {
    while (!a.c.isEmpty()) {
      try
      {
        a((fjr)a.c.remove());
      }
      catch (DeadObjectException localDeadObjectException) {}
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 1) {
      a.l();
    }
    Iterator localIterator = a.l.iterator();
    while (localIterator.hasNext()) {
      ((fjr)localIterator.next()).b(new Status(8, "The connection to Google Play services was lost"));
    }
    a.a(null);
    a.b.a(paramInt);
    a.b.a();
    if (paramInt == 2) {
      a.b();
    }
  }
  
  public void a(Bundle paramBundle) {}
  
  public void a(ConnectionResult paramConnectionResult, fhw<?> paramfhw, int paramInt) {}
  
  public <A extends fia, T extends fir<? extends fim, A>> T b(T paramT)
  {
    try
    {
      a(paramT);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      a.a(new fiu(this, this));
    }
    return paramT;
  }
  
  public void b()
  {
    a.f.clear();
    a.g();
    a.a(null);
    a.b.a();
  }
  
  public void c() {}
  
  public String d()
  {
    return "CONNECTED";
  }
}

/* Location:
 * Qualified Name:     fit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */