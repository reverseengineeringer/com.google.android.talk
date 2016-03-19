import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class cya
{
  private static Map<String, Integer> a;
  private static String b;
  public cwz o;
  public eku p;
  public String q;
  public String r;
  
  static String a(String paramString1, String paramString2, cwz paramcwz, int paramInt)
  {
    int j = 0;
    if (!TextUtils.equals(b, a))
    {
      Object localObject1 = a;
      Object localObject2 = new bfz(aal.oJ, paramInt).H((String)localObject1);
      localObject1 = new HashMap();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        cyx localcyx = (cyx)((Iterator)localObject2).next();
        String str = f;
        if ((!bff.d(aal.oJ, paramInt).a(b)) && (!TextUtils.isEmpty(str)))
        {
          if (((HashMap)localObject1).containsKey(str)) {}
          for (int i = aal.a((Integer)((HashMap)localObject1).get(str), 0);; i = 0)
          {
            ((HashMap)localObject1).put(str, Integer.valueOf(i + 1));
            break;
          }
        }
      }
      a = (Map)localObject1;
      b = a;
    }
    paramcwz = a;
    paramInt = j;
    if (paramcwz != null)
    {
      paramInt = j;
      if (paramString1 != null)
      {
        paramInt = j;
        if (aal.a((Integer)paramcwz.get(paramString1), 0) > 1) {
          paramInt = 1;
        }
      }
    }
    if (paramInt != 0) {
      return paramString2;
    }
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     cya
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */