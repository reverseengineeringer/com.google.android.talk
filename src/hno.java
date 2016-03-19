import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class hno
{
  private final List<mik> a;
  private final int b;
  
  hno(int paramInt)
  {
    b = paramInt;
    a = new ArrayList(paramInt);
  }
  
  void a(hnj paramhnj)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      paramhnj.a((mik)localIterator.next());
    }
  }
  
  boolean a(mik parammik)
  {
    if (a.size() < b)
    {
      a.add(parammik);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     hno
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */