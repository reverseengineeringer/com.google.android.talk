import java.util.Set;

public class cyd
  implements bhv
{
  public cyd(cyb paramcyb)
  {
    synchronized (x)
    {
      x.add(this);
      return;
    }
  }
  
  public void a(eys arg1, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    synchronized (a.x)
    {
      a.x.remove(this);
      a.u();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     cyd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */