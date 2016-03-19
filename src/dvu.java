import java.util.Iterator;
import java.util.List;

public final class dvu
  extends edk
{
  final efp a;
  
  public dvu(efp paramefp)
  {
    a = paramefp;
  }
  
  public void a(bfz parambfz)
  {
    Iterator localIterator = a.a().iterator();
    while (localIterator.hasNext())
    {
      efq localefq = (efq)localIterator.next();
      if (localefq.b() != 0)
      {
        String str = localefq.a();
        if (localefq.b() == 1) {}
        for (boolean bool = true;; bool = false)
        {
          parambfz.a(str, null, bool);
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     dvu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */