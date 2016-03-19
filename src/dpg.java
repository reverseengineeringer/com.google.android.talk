import java.io.Serializable;
import java.util.List;

public final class dpg
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final List<String> b;
  
  public dpg(String paramString, List<String> paramList)
  {
    a = paramString;
    b = paramList;
  }
  
  public kbr a()
  {
    kbr localkbr = new kbr();
    a = don.a(a);
    if ((b != null) && (b.size() > 0))
    {
      b = new String[b.size()];
      int i = 0;
      while (i < b.size())
      {
        b[i] = ((String)b.get(i));
        i += 1;
      }
    }
    return localkbr;
  }
}

/* Location:
 * Qualified Name:     dpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */