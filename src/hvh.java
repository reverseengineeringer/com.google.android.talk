import java.util.ArrayList;
import java.util.List;

public final class hvh
  implements ini, ioz
{
  private List<hvj> a = new ArrayList();
  
  public hvh(iog paramiog)
  {
    paramiog.a(this);
  }
  
  public hvh a(hvj paramhvj)
  {
    if (a.contains(paramhvj)) {
      throw new IllegalStateException("BackNavigationHandler already on stack.");
    }
    a.add(paramhvj);
    return this;
  }
  
  public boolean a()
  {
    int i = a.size() - 1;
    while (i >= 0)
    {
      if (((hvj)a.get(i)).a()) {
        return true;
      }
      i -= 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     hvh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */