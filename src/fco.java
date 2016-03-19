import android.content.Context;
import java.util.Iterator;
import java.util.List;

public final class fco
  extends br
{
  private final int a;
  private final int b;
  private final Context c;
  private final List<fcn> d;
  
  public fco()
  {
    super(localbg);
    Context localContext;
    c = localContext;
    List localList;
    d = localList;
    int i;
    a = i;
    b = 2;
  }
  
  public int a(fcn paramfcn)
  {
    return d.indexOf(paramfcn);
  }
  
  public int a(String paramString)
  {
    int i = d.size() - 1;
    while (i >= 0)
    {
      if (d.get(i)).d.equals(paramString)) {
        return i;
      }
      i -= 1;
    }
    return -1;
  }
  
  public av a(int paramInt)
  {
    fcn localfcn = d(paramInt);
    return av.instantiate(c, e.getName());
  }
  
  public boolean a(Class paramClass)
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      if (paramClass.equals(nexte)) {
        return true;
      }
    }
    return false;
  }
  
  public int b()
  {
    return d.size();
  }
  
  public long b(int paramInt)
  {
    return a * b + paramInt;
  }
  
  public CharSequence c(int paramInt)
  {
    fcn localfcn = d(paramInt);
    return c.getString(a);
  }
  
  public fcn d(int paramInt)
  {
    return (fcn)d.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     fco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */