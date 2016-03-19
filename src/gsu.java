import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class gsu
  extends fkn
  implements grm
{
  private final int c;
  
  public gsu(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    c = paramInt2;
  }
  
  public Uri U_()
  {
    return Uri.parse(b("path"));
  }
  
  public byte[] b()
  {
    return c("data");
  }
  
  public Map<String, grn> c()
  {
    HashMap localHashMap = new HashMap(c);
    int i = 0;
    while (i < c)
    {
      gsr localgsr = new gsr(a, b + i);
      if (localgsr.b() != null) {
        localHashMap.put(localgsr.b(), localgsr);
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public String toString()
  {
    boolean bool = Log.isLoggable("DataItem", 3);
    Object localObject1 = b();
    Object localObject2 = c();
    StringBuilder localStringBuilder = new StringBuilder("DataItemInternal{ ");
    localStringBuilder.append("uri=" + U_());
    Object localObject3 = new StringBuilder(", dataSz=");
    if (localObject1 == null) {}
    for (localObject1 = "null";; localObject1 = Integer.valueOf(localObject1.length))
    {
      localStringBuilder.append(localObject1);
      localStringBuilder.append(", numAssets=" + ((Map)localObject2).size());
      if ((!bool) || (((Map)localObject2).isEmpty())) {
        break label248;
      }
      localStringBuilder.append(", assets=[");
      localObject2 = ((Map)localObject2).entrySet().iterator();
      for (localObject1 = ""; ((Iterator)localObject2).hasNext(); localObject1 = ", ")
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        localStringBuilder.append((String)localObject1 + (String)((Map.Entry)localObject3).getKey() + ": " + ((grn)((Map.Entry)localObject3).getValue()).R_());
      }
    }
    localStringBuilder.append("]");
    label248:
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     gsu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */