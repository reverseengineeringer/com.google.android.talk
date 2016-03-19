import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class alo<Data, ResourceType, Transcode>
{
  private final Class<Data> a;
  private final ic<List<Exception>> b;
  private final List<? extends akp<Data, ResourceType, Transcode>> c;
  private final String d;
  
  public alo(Class<Data> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<akp<Data, ResourceType, Transcode>> paramList, ic<List<Exception>> paramic)
  {
    a = paramClass;
    b = paramic;
    c = ((List)aal.a(paramList));
    paramClass = String.valueOf(paramClass.getSimpleName());
    paramClass1 = String.valueOf(paramClass1.getSimpleName());
    paramClass2 = String.valueOf(paramClass2.getSimpleName());
    d = (String.valueOf(paramClass).length() + 21 + String.valueOf(paramClass1).length() + String.valueOf(paramClass2).length() + "Failed LoadPath{" + paramClass + "->" + paramClass1 + "->" + paramClass2 + "}");
  }
  
  private alr<Transcode> a(ajh<Data> paramajh, aja paramaja, int paramInt1, int paramInt2, akq<ResourceType> paramakq, List<Exception> paramList)
  {
    int j = c.size();
    Object localObject1 = null;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label91;
      }
      Object localObject2 = (akp)c.get(i);
      try
      {
        localObject2 = ((akp)localObject2).a(paramajh, paramInt1, paramInt2, paramaja, paramakq);
        localObject1 = localObject2;
      }
      catch (alm localalm)
      {
        for (;;)
        {
          paramList.add(localalm);
        }
      }
      localObject2 = localObject1;
      if (localObject1 != null) {
        break label95;
      }
      i += 1;
    }
    label91:
    Object localObject3 = localObject1;
    label95:
    if (localObject3 == null) {
      throw new alm(d, new ArrayList(paramList));
    }
    return (alr<Transcode>)localObject3;
  }
  
  public alr<Transcode> a(ajh<Data> paramajh, aja paramaja, int paramInt1, int paramInt2, akq<ResourceType> paramakq)
  {
    List localList = (List)b.a();
    try
    {
      paramajh = a(paramajh, paramaja, paramInt1, paramInt2, paramakq, localList);
      return paramajh;
    }
    finally
    {
      b.a(localList);
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf("LoadPath{decodePaths=");
    String str2 = String.valueOf(Arrays.toString(c.toArray(new akp[c.size()])));
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     alo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */