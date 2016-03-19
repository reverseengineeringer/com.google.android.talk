import android.net.Uri;
import android.util.Log;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class gss
  implements grm
{
  private Uri a;
  private byte[] b;
  private Map<String, grn> c;
  
  public gss(grm paramgrm)
  {
    a = paramgrm.U_();
    b = paramgrm.b();
    HashMap localHashMap = new HashMap();
    paramgrm = paramgrm.c().entrySet().iterator();
    while (paramgrm.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramgrm.next();
      if (localEntry.getKey() != null) {
        localHashMap.put(localEntry.getKey(), ((grn)localEntry.getValue()).f());
      }
    }
    c = Collections.unmodifiableMap(localHashMap);
  }
  
  public boolean O_()
  {
    return true;
  }
  
  public Uri U_()
  {
    return a;
  }
  
  public byte[] b()
  {
    return b;
  }
  
  public Map<String, grn> c()
  {
    return c;
  }
  
  public String toString()
  {
    boolean bool = Log.isLoggable("DataItem", 3);
    StringBuilder localStringBuilder = new StringBuilder("DataItemEntity{ ");
    localStringBuilder.append("uri=" + a);
    Object localObject2 = new StringBuilder(", dataSz=");
    if (b == null) {}
    for (Object localObject1 = "null";; localObject1 = Integer.valueOf(b.length))
    {
      localStringBuilder.append(localObject1);
      localStringBuilder.append(", numAssets=" + c.size());
      if ((!bool) || (c.isEmpty())) {
        break label249;
      }
      localStringBuilder.append(", assets=[");
      localObject2 = c.entrySet().iterator();
      for (localObject1 = ""; ((Iterator)localObject2).hasNext(); localObject1 = ", ")
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        localStringBuilder.append((String)localObject1 + (String)localEntry.getKey() + ": " + ((grn)localEntry.getValue()).R_());
      }
    }
    localStringBuilder.append("]");
    label249:
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     gss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */