import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class aox
  implements aou
{
  private final Map<String, List<aow>> c;
  private volatile Map<String, String> d;
  
  aox(Map<String, List<aow>> paramMap)
  {
    c = Collections.unmodifiableMap(paramMap);
  }
  
  public Map<String, String> a()
  {
    if (d == null) {}
    for (;;)
    {
      int i;
      try
      {
        if (d == null)
        {
          HashMap localHashMap = new HashMap();
          Iterator localIterator = c.entrySet().iterator();
          if (localIterator.hasNext())
          {
            Map.Entry localEntry = (Map.Entry)localIterator.next();
            StringBuilder localStringBuilder = new StringBuilder();
            List localList = (List)localEntry.getValue();
            int j = localList.size();
            i = 0;
            if (i < j)
            {
              String str = ((aow)localList.get(i)).a();
              if (TextUtils.isEmpty(str)) {
                break label209;
              }
              localStringBuilder.append(str);
              if (i == localList.size() - 1) {
                break label209;
              }
              localStringBuilder.append(',');
              break label209;
            }
            if (TextUtils.isEmpty(localStringBuilder.toString())) {
              continue;
            }
            localHashMap.put(localEntry.getKey(), localStringBuilder.toString());
            continue;
          }
          d = Collections.unmodifiableMap(localMap);
        }
      }
      finally {}
      return d;
      label209:
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aox))
    {
      paramObject = (aox)paramObject;
      return c.equals(c);
    }
    return false;
  }
  
  public int hashCode()
  {
    return c.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("LazyHeaders{headers=");
    String str2 = String.valueOf(c);
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     aox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */