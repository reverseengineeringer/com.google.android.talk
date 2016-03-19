import java.util.ArrayList;
import java.util.Iterator;

final class fjg
  extends fjh
{
  private final ArrayList<fia> c;
  
  public fjg(ArrayList<fia> paramArrayList)
  {
    super(paramArrayList);
    ArrayList localArrayList;
    c = localArrayList;
  }
  
  public void a()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((fia)localIterator.next()).a(a.g);
    }
  }
}

/* Location:
 * Qualified Name:     fjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */