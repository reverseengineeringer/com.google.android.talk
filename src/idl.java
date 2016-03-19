import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

final class idl
{
  private final Map<String, List<String>> a;
  
  public idl(Map<String, List<String>> paramMap)
  {
    a = Collections.unmodifiableMap(a(paramMap));
  }
  
  private static Map<String, List<String>> a(Map<String, List<String>> paramMap)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      localHashMap.put(b(str), paramMap.get(str));
    }
    return localHashMap;
  }
  
  private static String b(String paramString)
  {
    if (paramString == null) {
      return paramString;
    }
    return paramString.toLowerCase(Locale.US);
  }
  
  public List<String> a(String paramString)
  {
    return (List)a.get(b(paramString));
  }
}

/* Location:
 * Qualified Name:     idl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */