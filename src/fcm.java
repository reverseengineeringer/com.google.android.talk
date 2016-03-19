import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class fcm
  implements lt
{
  List<lt> a = new ArrayList();
  
  public void a(int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((lt)localIterator.next()).a(paramInt);
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((lt)localIterator.next()).a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public void b(int paramInt)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((lt)localIterator.next()).b(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     fcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */