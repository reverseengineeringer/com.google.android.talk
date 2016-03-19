import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class yf
  implements Runnable
{
  yf(aaw paramaaw, ArrayList paramArrayList) {}
  
  public void run()
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      aao localaao = (aao)localIterator.next();
      aaw localaaw = b;
      Object localObject = a;
      localObject = ks.a.k((View)localObject);
      i.add(localaao);
      ((md)localObject).a(1.0F).a(localaaw.b()).a(new yh(localaaw, localaao, (md)localObject)).c();
    }
    a.clear();
    b.f.remove(a);
  }
}

/* Location:
 * Qualified Name:     yf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */