import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class imo
  implements inx, iox, ioy, ioz
{
  private List<a> a = new ArrayList();
  private boolean b;
  private boolean c;
  private boolean d = true;
  
  imo(iog paramiog)
  {
    paramiog.a(this);
  }
  
  imo(iog paramiog, byte paramByte)
  {
    paramiog.a(this);
  }
  
  private void b()
  {
    boolean bool;
    if ((b) && (d))
    {
      bool = true;
      if (bool != c) {
        break label30;
      }
    }
    for (;;)
    {
      return;
      bool = false;
      break;
      label30:
      c = bool;
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    d = paramBoolean;
    b();
  }
  
  public void s_()
  {
    b = true;
    b();
  }
  
  public void t_()
  {
    b = false;
    b();
  }
}

/* Location:
 * Qualified Name:     imo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */