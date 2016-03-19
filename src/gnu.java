import android.content.res.Resources;
import java.util.concurrent.ConcurrentHashMap;

abstract class gnu
{
  private final ConcurrentHashMap<Integer, String> a = new ConcurrentHashMap();
  private final Resources b;
  
  public gnu(Resources paramResources)
  {
    b = paramResources;
  }
  
  public String a(int paramInt)
  {
    if (paramInt == 0) {
      localObject = null;
    }
    String str;
    do
    {
      return (String)localObject;
      str = (String)a.get(Integer.valueOf(paramInt));
      localObject = str;
    } while (str != null);
    Object localObject = a(b, paramInt);
    a.put(Integer.valueOf(paramInt), localObject);
    return (String)localObject;
  }
  
  protected abstract String a(Resources paramResources, int paramInt);
}

/* Location:
 * Qualified Name:     gnu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */