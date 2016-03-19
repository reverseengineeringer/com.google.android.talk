import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class jtv
  implements Runnable
{
  jtv(jtu paramjtu, jtr paramjtr, List paramList) {}
  
  public void run()
  {
    Object localObject1 = b;
    Object localObject3;
    Object localObject4;
    int i;
    long l1;
    if (Log.isLoggable("trace_manager", 2))
    {
      hu localhu = new hu();
      try
      {
        localObject3 = ((List)localObject1).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          localObject4 = (mfh)((Iterator)localObject3).next();
          localhu.a(((mfh)localObject4).j(), localObject4);
        }
      }
      finally {}
      localObject3 = new ArrayList();
      i = 0;
      if (i < ((hu)localObject2).a())
      {
        localObject1 = (mfh)((hu)localObject2).b(i);
        l1 = ((mfh)localObject1).j();
        long l2 = ((mfh)localObject1).n();
        long l3 = Math.max(l2, ((mfh)localObject1).o());
        localObject1 = 23 + (l3 - l2) + " ms";
      }
    }
    for (;;)
    {
      localObject4 = (mfh)((hu)localObject2).a(l1);
      l1 = ((mfh)localObject4).k();
      localObject4 = String.valueOf(((mfh)localObject4).l());
      localObject1 = String.valueOf(localObject4).length() + 3 + String.valueOf(localObject1).length() + (String)localObject4 + " > " + (String)localObject1;
      if (l1 == 0L)
      {
        ((ArrayList)localObject3).add(localObject1);
        i += 1;
        break;
        Collections.sort((List)localObject3);
        localObject1 = ((ArrayList)localObject3).iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((Iterator)localObject1).next();
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     jtv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */