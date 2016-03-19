import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

final class fje
  extends fjh
{
  private final ArrayList<fia> c;
  
  public fje(ArrayList<fia> paramArrayList)
  {
    super(paramArrayList);
    ArrayList localArrayList;
    c = localArrayList;
  }
  
  public void a()
  {
    Set localSet = a.a.g;
    if (localSet.isEmpty()) {
      localSet = a.j();
    }
    for (;;)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        ((fia)localIterator.next()).a(a.g, localSet);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     fje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */