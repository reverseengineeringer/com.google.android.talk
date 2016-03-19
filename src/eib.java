import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;

final class eib
  implements fif
{
  eib(eia parameia) {}
  
  public void a(int paramInt) {}
  
  public void a_(Bundle arg1)
  {
    synchronized (a.c)
    {
      if (eia.a)
      {
        if (a.e == null)
        {
          i = 0;
          int j = a.d;
          new StringBuilder(87).append("GmsAvatarLoader: People client onConnected. waiting = ").append(i).append(" numClient=").append(j);
        }
      }
      else
      {
        Object localObject1 = a.e;
        a.e = null;
        if (localObject1 == null) {
          return;
        }
        ??? = ((Set)localObject1).iterator();
        while (???.hasNext())
        {
          localObject1 = (ejc)???.next();
          a.b((ejc)localObject1);
        }
      }
      int i = a.e.size();
    }
  }
}

/* Location:
 * Qualified Name:     eib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */