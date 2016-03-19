import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class axm
{
  public List<axt> a = new ArrayList();
  public List<axn> b = new ArrayList();
  
  public axm a(axn paramaxn)
  {
    b.add(paramaxn);
    return this;
  }
  
  public axm a(axt paramaxt)
  {
    a.add(paramaxt);
    return this;
  }
  
  public axm a(Iterable<? extends axt> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      axt localaxt = (axt)paramIterable.next();
      a.add(localaxt);
    }
    return this;
  }
  
  public ihb a()
  {
    return new ihb(this);
  }
}

/* Location:
 * Qualified Name:     axm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */