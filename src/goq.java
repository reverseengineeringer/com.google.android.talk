import java.util.ArrayList;

public final class goq
{
  private final ArrayList<Object> a = new ArrayList();
  
  private static IndexOutOfBoundsException b(int paramInt1, int paramInt2)
  {
    return new IndexOutOfBoundsException(String.format("Size=%d, requested=%d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
  }
  
  public int a()
  {
    return a.size();
  }
  
  public int a(int paramInt1, int paramInt2)
  {
    Object localObject = a.get(paramInt1);
    if (localObject == null) {
      throw b(0, paramInt2);
    }
    if ((localObject instanceof Integer))
    {
      if (paramInt2 > 0) {
        throw b(1, paramInt2);
      }
      return ((Integer)localObject).intValue();
    }
    localObject = (ArrayList)localObject;
    if (paramInt2 > ((ArrayList)localObject).size()) {
      throw b(((ArrayList)localObject).size(), paramInt2);
    }
    return ((Integer)((ArrayList)localObject).get(paramInt2)).intValue();
  }
  
  public void a(int paramInt)
  {
    a.add(Integer.valueOf(paramInt));
  }
  
  public void a(gpp paramgpp, String paramString)
  {
    int i = 0;
    int j = paramgpp.a(paramString);
    if (j == 0) {
      return;
    }
    if (j == 1)
    {
      a.add(Integer.valueOf(paramgpp.b(paramString, 0)));
      return;
    }
    ArrayList localArrayList = new ArrayList(j);
    while (i < j)
    {
      localArrayList.add(Integer.valueOf(paramgpp.b(paramString, i)));
      i += 1;
    }
    a.add(localArrayList);
  }
  
  public int b(int paramInt)
  {
    Object localObject = a.get(paramInt);
    if (localObject == null) {
      return 0;
    }
    if ((localObject instanceof Integer)) {
      return 1;
    }
    return ((ArrayList)localObject).size();
  }
  
  public void b()
  {
    a.add(null);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = gpd.a();
    int i = 0;
    while (i < a())
    {
      if (i > 0) {
        localStringBuilder.append(",");
      }
      localStringBuilder.append("[");
      int k = b(i);
      int j = 0;
      while (j < k)
      {
        if (j > 0) {
          localStringBuilder.append(",");
        }
        localStringBuilder.append(a(i, j));
        j += 1;
      }
      localStringBuilder.append("]");
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     goq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */