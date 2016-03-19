import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class ye
  implements Runnable
{
  ye(aaw paramaaw, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    if (localIterator.hasNext())
    {
      yl localyl = (yl)localIterator.next();
      aaw localaaw = b;
      Object localObject1 = a;
      if (localObject1 == null)
      {
        localObject1 = null;
        label46:
        localObject2 = b;
        if (localObject2 == null) {
          break label229;
        }
      }
      label229:
      for (Object localObject2 = a;; localObject2 = null)
      {
        if (localObject1 != null)
        {
          localObject1 = ks.a.k((View)localObject1).a(localaaw.d());
          l.add(a);
          ((md)localObject1).b(e - c);
          ((md)localObject1).c(f - d);
          ((md)localObject1).a(0.0F).a(new yj(localaaw, localyl, (md)localObject1)).c();
        }
        if (localObject2 == null) {
          break;
        }
        localObject1 = ks.a.k((View)localObject2);
        l.add(b);
        ((md)localObject1).b(0.0F).c(0.0F).a(localaaw.d()).a(1.0F).a(new yk(localaaw, localyl, (md)localObject1, (View)localObject2)).c();
        break;
        localObject1 = a;
        break label46;
      }
    }
    a.clear();
    b.h.remove(a);
  }
}

/* Location:
 * Qualified Name:     ye
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */