import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Set;

final class eic
  implements fih
{
  eic(eia parameia) {}
  
  public void a(ConnectionResult paramConnectionResult)
  {
    synchronized (a.c)
    {
      paramConnectionResult = String.valueOf(paramConnectionResult);
      ezi.e("Babel_medialoader", String.valueOf(paramConnectionResult).length() + 51 + "GmsAvatarLoader: People client connection failure: " + paramConnectionResult, new Object[0]);
      paramConnectionResult = a.e;
      a.e = null;
      if (paramConnectionResult != null)
      {
        paramConnectionResult = paramConnectionResult.iterator();
        if (paramConnectionResult.hasNext())
        {
          ??? = (ejc)paramConnectionResult.next();
          a.a((ejc)???, null);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     eic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */