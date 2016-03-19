import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class dyj
  implements eff
{
  private static final long serialVersionUID = 1L;
  private int a = 0;
  private String b;
  private int c;
  private int d;
  private int[] e;
  private List<String> f = new ArrayList();
  
  public dyj(int paramInt1, int paramInt2, Integer paramInteger, Collection<String> paramCollection)
  {
    c = paramInt1;
    d = 0;
    if (paramInteger == null) {
      e = new int[0];
    }
    for (;;)
    {
      f.addAll(paramCollection);
      return;
      e = new int[1];
      e[0] = aal.a(paramInteger, 0);
    }
  }
  
  public int a()
  {
    return c;
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public void a_(String paramString)
  {
    b = paramString;
  }
  
  public int b()
  {
    return d;
  }
  
  public int c()
  {
    return a;
  }
  
  public cwi d()
  {
    return new dyi(this);
  }
  
  public int[] e()
  {
    return e;
  }
  
  public List<String> f()
  {
    return Collections.unmodifiableList(f);
  }
  
  public String toString()
  {
    int i = a;
    int j = c;
    int k = d;
    String str1 = String.valueOf(Arrays.toString(e));
    String str2 = String.valueOf(f);
    return String.valueOf(str1).length() + 118 + String.valueOf(str2).length() + "OzMergedPersonLookupRequest{requestId=" + i + ", lookupType=" + j + ", matchType=" + k + ", requestTypes=" + str1 + ", ids=" + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     dyj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */