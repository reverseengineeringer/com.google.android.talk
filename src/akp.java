import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class akp<DataType, ResourceType, Transcode>
{
  private final Class<DataType> a;
  private final List<? extends ajb<DataType, ResourceType>> b;
  private final atb<ResourceType, Transcode> c;
  private final ic<List<Exception>> d;
  private final String e;
  
  public akp(Class<DataType> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<? extends ajb<DataType, ResourceType>> paramList, atb<ResourceType, Transcode> paramatb, ic<List<Exception>> paramic)
  {
    a = paramClass;
    b = paramList;
    c = paramatb;
    d = paramic;
    paramClass = String.valueOf(paramClass.getSimpleName());
    paramClass1 = String.valueOf(paramClass1.getSimpleName());
    paramClass2 = String.valueOf(paramClass2.getSimpleName());
    e = (String.valueOf(paramClass).length() + 23 + String.valueOf(paramClass1).length() + String.valueOf(paramClass2).length() + "Failed DecodePath{" + paramClass + "->" + paramClass1 + "->" + paramClass2 + "}");
  }
  
  private alr<ResourceType> a(ajh<DataType> paramajh, int paramInt1, int paramInt2, aja paramaja)
  {
    List localList = (List)d.a();
    try
    {
      paramajh = a(paramajh, paramInt1, paramInt2, paramaja, localList);
      return paramajh;
    }
    finally
    {
      d.a(localList);
    }
  }
  
  private alr<ResourceType> a(ajh<DataType> paramajh, int paramInt1, int paramInt2, aja paramaja, List<Exception> paramList)
  {
    Object localObject1 = null;
    int j = b.size();
    int i = 0;
    Object localObject2 = localObject1;
    Object localObject3;
    if (i < j) {
      localObject3 = (ajb)b.get(i);
    }
    label192:
    for (;;)
    {
      try
      {
        if (!((ajb)localObject3).a(paramajh.a(), paramaja)) {
          break label192;
        }
        localObject2 = ((ajb)localObject3).a(paramajh.a(), paramInt1, paramInt2, paramaja);
        localObject1 = localObject2;
      }
      catch (IOException localIOException)
      {
        if (!Log.isLoggable("DecodePath", 2)) {
          continue;
        }
        localObject3 = String.valueOf(localObject3);
        new StringBuilder(String.valueOf(localObject3).length() + 26).append("Failed to decode data for ").append((String)localObject3);
        paramList.add(localIOException);
        continue;
      }
      localObject2 = localObject1;
      if (localObject1 == null)
      {
        i += 1;
        break;
      }
      if (localIOException == null) {
        throw new alm(e, new ArrayList(paramList));
      }
      return localIOException;
    }
  }
  
  public alr<Transcode> a(ajh<DataType> paramajh, int paramInt1, int paramInt2, aja paramaja, akq<ResourceType> paramakq)
  {
    paramajh = paramakq.a(a(paramajh, paramInt1, paramInt2, paramaja));
    return c.a(paramajh);
  }
  
  public String toString()
  {
    String str1 = String.valueOf("DecodePath{ dataClass=");
    String str2 = String.valueOf(a);
    String str3 = String.valueOf(b);
    String str4 = String.valueOf(c);
    return String.valueOf(str1).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + str2 + ", decoders=" + str3 + ", transcoder=" + str4 + "}";
  }
}

/* Location:
 * Qualified Name:     akp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */