import android.text.TextUtils;
import java.util.List;

public class dop
  extends dox
{
  private static final long serialVersionUID = 1L;
  public final List<dtw> a;
  public final long b;
  
  public dop(String paramString1, String paramString2, List<dtw> paramList, long paramLong)
  {
    super(paramString2, paramString1);
    a = paramList;
    b = paramLong;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject = new jzr();
    b = bfz.c(j);
    a = don.a(c);
    e = Integer.valueOf(4);
    jwu localjwu = new jwu();
    a = ((jzr)localObject);
    if (a.size() > 0)
    {
      localObject = new kbi[a.size()];
      int i = 0;
      if (i < a.size())
      {
        dtw localdtw = (dtw)a.get(i);
        if ((c != null) || (!TextUtils.isEmpty(e))) {}
        for (boolean bool = true;; bool = false)
        {
          hbs.a("Expected condition to be true", bool);
          localObject[i] = localdtw.d();
          i += 1;
          break;
        }
      }
      b = ((kbi[])localObject);
    }
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    return localjwu;
  }
  
  public String f()
  {
    return "conversations/adduser";
  }
}

/* Location:
 * Qualified Name:     dop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */