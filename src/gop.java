import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public final class gop
{
  private static final Integer[] b = new Integer[0];
  private final HashMap<Integer, Object> a = new HashMap();
  
  public int a(int paramInt)
  {
    aal.d(Integer.valueOf(paramInt));
    Object localObject = a.get(Integer.valueOf(paramInt));
    if (localObject == null) {
      return 0;
    }
    if ((localObject instanceof String)) {
      return 1;
    }
    return ((ArrayList)localObject).size();
  }
  
  public String a(int paramInt1, int paramInt2)
  {
    aal.d(Integer.valueOf(paramInt1));
    if (paramInt2 >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      aal.b(bool);
      localObject = a.get(Integer.valueOf(paramInt1));
      if (localObject != null) {
        break;
      }
      throw new IndexOutOfBoundsException("Size=0, requested=" + paramInt2);
    }
    if ((localObject instanceof String))
    {
      if (paramInt2 > 0) {
        throw new IndexOutOfBoundsException("Size=1, requested=" + paramInt2);
      }
      return (String)localObject;
    }
    Object localObject = (ArrayList)localObject;
    if (paramInt2 > ((ArrayList)localObject).size()) {
      throw new IndexOutOfBoundsException("Size=" + ((ArrayList)localObject).size() + ", requested=" + paramInt2);
    }
    return (String)((ArrayList)localObject).get(paramInt2);
  }
  
  public void a(Integer paramInteger, String paramString)
  {
    aal.d(paramInteger);
    Object localObject = a.get(paramInteger);
    if (localObject == null)
    {
      a.put(paramInteger, paramString);
      return;
    }
    if ((localObject instanceof String))
    {
      ArrayList localArrayList = new ArrayList(4);
      localArrayList.add((String)localObject);
      localArrayList.add(paramString);
      a.put(paramInteger, localArrayList);
      return;
    }
    ((ArrayList)localObject).add(paramString);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = gpd.a();
    Integer[] arrayOfInteger = (Integer[])new ArrayList(a.keySet()).toArray(b);
    Arrays.sort(arrayOfInteger);
    int k = arrayOfInteger.length;
    int i = 0;
    while (i < k)
    {
      Integer localInteger = arrayOfInteger[i];
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append(localInteger);
      localStringBuilder.append("=");
      int m = a(localInteger.intValue());
      int j = 0;
      while (j < m)
      {
        if (j > 0) {
          localStringBuilder.append(".");
        }
        localStringBuilder.append(a(localInteger.intValue(), j));
        j += 1;
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     gop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */