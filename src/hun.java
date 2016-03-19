import android.util.Log;
import android.util.SparseArray;
import java.util.List;

final class hun
  implements Runnable
{
  hun(hum paramhum, htu paramhtu, hus paramhus) {}
  
  public void run()
  {
    Object localObject3 = c;
    htu localhtu = a;
    Object localObject1 = b;
    b.remove(localhtu);
    localhtu.m_();
    int i = localhtu.i();
    String str = localhtu.h();
    if (i == 0) {
      if (Log.isLoggable("BackgroundTask", 2))
      {
        localObject1 = String.valueOf(localObject1);
        new StringBuilder(String.valueOf(str).length() + 36 + String.valueOf(localObject1).length()).append("No manager, dropping task result: ").append(str).append(", ").append((String)localObject1);
      }
    }
    Object localObject2;
    do
    {
      do
      {
        return;
        localObject2 = (hty)a.get(i);
        if (localObject2 != null)
        {
          if (localhtu.g())
          {
            if (Log.isLoggable("BackgroundTask", 3))
            {
              localObject1 = String.valueOf(localObject1);
              new StringBuilder(String.valueOf(str).length() + 50 + String.valueOf(localObject1).length()).append("Task is canceled, dropping result from manager: ").append(str).append(", ").append((String)localObject1);
            }
            ((hty)localObject2).c(str);
            return;
          }
          if (Log.isLoggable("BackgroundTask", 3))
          {
            localObject3 = String.valueOf(localObject1);
            new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(localObject3).length()).append("Deliver background task result: ").append(str).append(", ").append((String)localObject3);
          }
          ((hty)localObject2).a(str, (hus)localObject1);
          return;
        }
        if (!localhtu.g()) {
          break;
        }
      } while (!Log.isLoggable("BackgroundTask", 3));
      localObject1 = String.valueOf(localObject1);
      new StringBuilder(String.valueOf(str).length() + 42 + String.valueOf(localObject1).length()).append("Task is canceled, dropping task result: ").append(str).append(", ").append((String)localObject1);
      return;
      if (((hus)localObject1).j() != hut.a) {
        break;
      }
    } while (!Log.isLoggable("BackgroundTask", 3));
    localObject1 = String.valueOf(localObject1);
    new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(localObject1).length()).append("Dropping task result: ").append(str).append(", ").append((String)localObject1);
    return;
    if (Log.isLoggable("BackgroundTask", 3))
    {
      localObject2 = String.valueOf(localObject1);
      new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(localObject2).length()).append("Store background task result: ").append(str).append(", ").append((String)localObject2);
    }
    ((hus)localObject1).i();
    c.a(i, str, (hus)localObject1);
  }
}

/* Location:
 * Qualified Name:     hun
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */