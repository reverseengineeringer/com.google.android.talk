import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class dct
  implements Runnable
{
  dct(dcr paramdcr, List paramList, int paramInt) {}
  
  public void run()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(new dcm((String)localIterator.next(), true));
    }
    c.a(b, localArrayList);
  }
}

/* Location:
 * Qualified Name:     dct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */