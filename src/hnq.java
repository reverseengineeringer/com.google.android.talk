import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class hnq
  implements hnn
{
  private final List<hnn> a;
  private final List<hnj> b;
  
  hnq(List<hnn> paramList, List<hnj> paramList1)
  {
    a = new ArrayList(paramList);
    b = new ArrayList(paramList1);
  }
  
  static mik a(mik parammik)
  {
    parammik = lyi.a(parammik);
    try
    {
      parammik = (mik)lyi.b(new mik(), parammik, parammik.length);
      return parammik;
    }
    catch (lyg parammik)
    {
      throw new IllegalStateException(parammik);
    }
  }
  
  public static hnr newBuilder()
  {
    return new hnr();
  }
  
  public hnj a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((hnn)localIterator.next()).a());
    }
    localArrayList.addAll(b);
    if (localArrayList.size() == 1) {
      return (hnj)localArrayList.get(0);
    }
    return new hns(localArrayList);
  }
}

/* Location:
 * Qualified Name:     hnq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */