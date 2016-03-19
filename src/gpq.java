import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public final class gpq<T>
{
  private final HashMap<String, Object> a = new HashMap();
  
  public int a(String paramString)
  {
    aal.d(paramString);
    paramString = a.get(paramString);
    if (paramString == null) {
      return 0;
    }
    if ((paramString instanceof ArrayList)) {
      return ((ArrayList)paramString).size();
    }
    return 1;
  }
  
  public T a(String paramString, int paramInt)
  {
    aal.d(paramString);
    if (paramInt >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      aal.b(bool);
      paramString = a.get(paramString);
      if (paramString != null) {
        break;
      }
      throw new IndexOutOfBoundsException("Size=0, requested=" + paramInt);
    }
    if ((paramString instanceof ArrayList))
    {
      paramString = (ArrayList)paramString;
      if (paramInt > paramString.size()) {
        throw new IndexOutOfBoundsException("Size=" + paramString.size() + ", requested=" + paramInt);
      }
      paramString = paramString.get(paramInt);
    }
    while (paramInt <= 0) {
      return paramString;
    }
    throw new IndexOutOfBoundsException("Size=1, requested=" + paramInt);
  }
  
  public void a(String paramString, T paramT)
  {
    aal.d(paramString);
    Object localObject = a.get(paramString);
    if (localObject == null)
    {
      a.put(paramString, paramT);
      return;
    }
    if ((localObject instanceof ArrayList))
    {
      ((ArrayList)localObject).add(paramT);
      return;
    }
    ArrayList localArrayList = new ArrayList(4);
    localArrayList.add(localObject);
    localArrayList.add(paramT);
    a.put(paramString, localArrayList);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = gpd.a();
    String[] arrayOfString = (String[])new ArrayList(a.keySet()).toArray(gpd.d);
    Arrays.sort(arrayOfString);
    int k = arrayOfString.length;
    int i = 0;
    while (i < k)
    {
      String str = arrayOfString[i];
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append(str);
      localStringBuilder.append("=");
      int m = a(str);
      int j = 0;
      while (j < m)
      {
        if (j > 0) {
          localStringBuilder.append(".");
        }
        localStringBuilder.append(a(str, j));
        j += 1;
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     gpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */