import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;

public final class fji
  implements fjs
{
  private final fjj a;
  
  public fji(fjj paramfjj)
  {
    a = paramfjj;
  }
  
  public <A extends fia, R extends fim, T extends fir<R, A>> T a(T paramT)
  {
    a.c.add(paramT);
    return paramT;
  }
  
  public void a()
  {
    a.h();
    a.g = Collections.emptySet();
  }
  
  public void a(int paramInt) {}
  
  public void a(Bundle paramBundle) {}
  
  public void a(ConnectionResult paramConnectionResult, fhw<?> paramfhw, int paramInt) {}
  
  public <A extends fia, T extends fir<? extends fim, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public void b()
  {
    Iterator localIterator = a.c.iterator();
    while (localIterator.hasNext()) {
      ((fjr)localIterator.next()).c();
    }
    a.c.clear();
    a.f.clear();
    a.g();
  }
  
  public void c()
  {
    a.i();
  }
  
  public String d()
  {
    return "DISCONNECTED";
  }
}

/* Location:
 * Qualified Name:     fji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */