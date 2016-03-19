import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class hns
  implements hnj
{
  private final List<hnj> a;
  
  hns(Collection<hnj> paramCollection)
  {
    a = new ArrayList(paramCollection);
  }
  
  public void a(mik parammik)
  {
    if (a.size() == 1) {
      ((hnj)a.get(0)).a(parammik);
    }
    label90:
    label96:
    label97:
    for (;;)
    {
      return;
      Object localObject = null;
      Iterator localIterator = a.iterator();
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label90;
        }
        hnj localhnj = (hnj)localIterator.next();
        try
        {
          localhnj.a(hnq.a(parammik));
        }
        catch (RuntimeException localRuntimeException)
        {
          if (localObject != null) {
            break label96;
          }
        }
      }
      localObject = localRuntimeException;
      for (;;)
      {
        break;
        if (localObject == null) {
          break label97;
        }
        throw ((Throwable)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     hns
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */