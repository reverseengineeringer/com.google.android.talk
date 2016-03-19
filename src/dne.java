import java.io.Serializable;
import java.util.List;

public final class dne
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private String a;
  private ksf<String> b;
  
  public dne(String paramString, List<String> paramList)
  {
    a = paramString;
    b = ksf.a(paramList);
  }
  
  public String a()
  {
    return a;
  }
  
  public List<String> b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     dne
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */