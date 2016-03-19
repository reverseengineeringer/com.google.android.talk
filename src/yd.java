import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class yd
  implements Runnable
{
  yd(aaw paramaaw, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (ym)localIterator.next();
      aaw localaaw = b;
      aao localaao = a;
      int k = b;
      int i = c;
      int m = d;
      int j = e;
      localObject = a;
      k = m - k;
      i = j - i;
      if (k != 0) {
        ks.a.k((View)localObject).b(0.0F);
      }
      if (i != 0) {
        ks.a.k((View)localObject).c(0.0F);
      }
      localObject = ks.a.k((View)localObject);
      j.add(localaao);
      ((md)localObject).a(localaaw.a()).a(new yi(localaaw, localaao, k, i, (md)localObject)).c();
    }
    a.clear();
    b.g.remove(a);
  }
}

/* Location:
 * Qualified Name:     yd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */