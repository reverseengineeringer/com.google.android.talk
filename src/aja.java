import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class aja
  implements aiw
{
  private final hq<aix<?>, Object> b = new hq();
  
  public <T> aja a(aix<T> paramaix, T paramT)
  {
    b.put(paramaix, paramT);
    return this;
  }
  
  public <T> T a(aix<T> paramaix)
  {
    if (b.containsKey(paramaix)) {
      return (T)b.get(paramaix);
    }
    return (T)paramaix.a();
  }
  
  public void a(aja paramaja)
  {
    b.a(b);
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    Iterator localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((aix)localEntry.getKey()).a(localEntry.getValue(), paramMessageDigest);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof aja))
    {
      paramObject = (aja)paramObject;
      return b.equals(b);
    }
    return false;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("Options{values=");
    String str2 = String.valueOf(b);
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     aja
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */