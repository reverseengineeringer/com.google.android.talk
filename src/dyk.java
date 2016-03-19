import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class dyk
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public final Map<String, dyl> g;
  iyq h;
  
  private dyk(iyq paramiyq)
  {
    super(apiHeader);
    h = paramiyq;
    HashMap localHashMap = new HashMap();
    paramiyq = a.a;
    int k = paramiyq.length;
    int i = 0;
    while (i < k)
    {
      String[] arrayOfString = paramiyq[i];
      if ((TextUtils.isEmpty(c)) || (!c.startsWith("c")))
      {
        dyl localdyl = new dyl();
        a = false;
        Object localObject1 = S;
        int m = localObject1.length;
        int j = 0;
        for (;;)
        {
          Object localObject2;
          if (j < m)
          {
            localObject2 = localObject1[j];
            if ((aal.a(b, 0) == 1) && (aal.a(c, 0) == 1)) {
              a = true;
            }
          }
          else
          {
            b = d.d;
            localObject1 = f;
            m = localObject1.length;
            j = 0;
            while (j < m)
            {
              localObject2 = localObject1[j];
              c = b;
              if (aal.a(c, false)) {
                break;
              }
              j += 1;
            }
          }
          j += 1;
        }
        localObject1 = e;
        if (localObject1.length > 0) {
          d = 0b;
        }
        if ((d.u != null) && (d.u.b != null))
        {
          arrayOfString = d.u.b;
          m = arrayOfString.length;
          j = 0;
          while (j < m)
          {
            localHashMap.put(arrayOfString[j], localdyl);
            j += 1;
          }
        }
      }
      i += 1;
    }
    g = Collections.unmodifiableMap(localHashMap);
  }
  
  public static dqf a(iyq paramiyq)
  {
    if (a(apiHeader))
    {
      String str = String.valueOf(paramiyq);
      ezi.d("Babel", String.valueOf(str).length() + 65 + "OzMergedPersonLookupResponse.processResponse: request failed for " + str, new Object[0]);
      return new dqs(apiHeader);
    }
    return new dyk(paramiyq);
  }
  
  public String toString()
  {
    String str = String.valueOf(g);
    return String.valueOf(str).length() + 37 + "OzMergedPersonLookupResponse{people=" + str + "}";
  }
}

/* Location:
 * Qualified Name:     dyk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */