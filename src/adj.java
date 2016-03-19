import java.util.Vector;

public final class adj
{
  private Vector<adr> a = null;
  
  public adr a(int paramInt)
  {
    return (adr)a.get(paramInt);
  }
  
  public void a()
  {
    a.clear();
  }
  
  public boolean a(adr paramadr)
  {
    if (paramadr == null) {
      throw new NullPointerException();
    }
    return a.add(paramadr);
  }
  
  public int b()
  {
    return a.size();
  }
  
  public void b(adr paramadr)
  {
    if (paramadr == null) {
      throw new NullPointerException();
    }
    a.add(0, paramadr);
  }
}

/* Location:
 * Qualified Name:     adj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */