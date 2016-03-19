import java.io.Serializable;

public final class dsf
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final int b;
  public final String c;
  public final long d;
  public int e = dsg.a;
  public final long f;
  
  public dsf()
  {
    a = "";
    b = 1;
    c = "";
    d = 0L;
    f = -1L;
  }
  
  public dsf(iye paramiye)
  {
    d = 0L;
    a = "";
    b = 1;
    c = "";
    f = -1L;
  }
  
  public dsf(kdp paramkdp)
  {
    a = b;
    b = aal.a(a, 0);
    c = c;
    d = aal.a(d, 0L);
    if ((i != null) && (i.a != null) && (i.b != null))
    {
      f = aal.a(i.b, 0L);
      switch (aal.a(i.a, 0))
      {
      default: 
        paramkdp = String.valueOf(i.a);
        ezi.e("Babel", String.valueOf(paramkdp).length() + 66 + "Unexpected error code for syncHintAnswer in clientResponseHeader: " + paramkdp, new Object[0]);
        return;
      case 0: 
        e = dsg.a;
        return;
      case 1: 
        e = dsg.b;
        return;
      case 2: 
        e = dsg.c;
        return;
      }
      e = dsg.d;
      return;
    }
    f = -1L;
  }
}

/* Location:
 * Qualified Name:     dsf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */