import java.util.Iterator;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ConcurrentSkipListMap;

final class hzd
{
  private final NavigableMap<hyt, Integer> a = new ConcurrentSkipListMap(new hze(this));
  
  public SortedSet<hyt> a(hyt paramhyt1, hyt paramhyt2)
  {
    return a.navigableKeySet().subSet(paramhyt1, paramhyt2);
  }
  
  public void a(hyt paramhyt)
  {
    Integer localInteger = (Integer)a.get(paramhyt);
    NavigableMap localNavigableMap = a;
    if (localInteger == null) {}
    for (int i = 1;; i = localInteger.intValue() + 1)
    {
      localNavigableMap.put(paramhyt, Integer.valueOf(i));
      return;
    }
  }
  
  public void b(hyt paramhyt)
  {
    Integer localInteger = (Integer)a.get(paramhyt);
    if (localInteger.intValue() == 1)
    {
      a.remove(paramhyt);
      return;
    }
    a.put(paramhyt, Integer.valueOf(localInteger.intValue() - 1));
  }
  
  public String toString()
  {
    String str1 = "SizeTracker(";
    if (!a.isEmpty())
    {
      Iterator localIterator = a.keySet().iterator();
      Object localObject;
      String str2;
      for (str1 = "SizeTracker("; localIterator.hasNext(); str1 = String.valueOf(str1).length() + 5 + String.valueOf(str2).length() + String.valueOf(localObject).length() + str1 + "{" + str2 + ", " + (String)localObject + "} ")
      {
        localObject = (hyt)localIterator.next();
        str1 = String.valueOf(str1);
        str2 = String.valueOf(localObject);
        localObject = String.valueOf(a.get(localObject));
      }
      str1 = str1.substring(0, str1.length() - 1);
    }
    return String.valueOf(str1).concat(")");
  }
}

/* Location:
 * Qualified Name:     hzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */