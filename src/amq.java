import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.Set;
import java.util.TreeMap;

public final class amq
  implements amo
{
  private static final Bitmap.Config[] a = { Bitmap.Config.ARGB_8888, null };
  private static final Bitmap.Config[] b = { Bitmap.Config.RGB_565 };
  private static final Bitmap.Config[] c = { Bitmap.Config.ARGB_4444 };
  private static final Bitmap.Config[] d = { Bitmap.Config.ALPHA_8 };
  private final amt e = new amt();
  private final amh<ams, Bitmap> f = new amh();
  private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> g = new HashMap();
  
  static String a(int paramInt, Bitmap.Config paramConfig)
  {
    paramConfig = String.valueOf(paramConfig);
    return String.valueOf(paramConfig).length() + 15 + "[" + paramInt + "](" + paramConfig + ")";
  }
  
  private NavigableMap<Integer, Integer> a(Bitmap.Config paramConfig)
  {
    NavigableMap localNavigableMap = (NavigableMap)g.get(paramConfig);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      g.put(paramConfig, localObject);
    }
    return (NavigableMap<Integer, Integer>)localObject;
  }
  
  private void a(Integer paramInteger, Bitmap paramBitmap)
  {
    Object localObject1 = a(paramBitmap.getConfig());
    Object localObject2 = (Integer)((NavigableMap)localObject1).get(paramInteger);
    if (localObject2 == null)
    {
      localObject1 = String.valueOf("Tried to decrement empty size, size: ");
      paramInteger = String.valueOf(paramInteger);
      paramBitmap = String.valueOf(b(paramBitmap));
      localObject2 = String.valueOf(this);
      throw new NullPointerException(String.valueOf(localObject1).length() + 19 + String.valueOf(paramInteger).length() + String.valueOf(paramBitmap).length() + String.valueOf(localObject2).length() + (String)localObject1 + paramInteger + ", removed: " + paramBitmap + ", this: " + (String)localObject2);
    }
    if (((Integer)localObject2).intValue() == 1)
    {
      ((NavigableMap)localObject1).remove(paramInteger);
      return;
    }
    ((NavigableMap)localObject1).put(paramInteger, Integer.valueOf(((Integer)localObject2).intValue() - 1));
  }
  
  public Bitmap a()
  {
    Bitmap localBitmap = (Bitmap)f.a();
    if (localBitmap != null) {
      a(Integer.valueOf(avq.a(localBitmap)), localBitmap);
    }
    return localBitmap;
  }
  
  public Bitmap a(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    int i = 0;
    int j = avq.a(paramInt1, paramInt2, paramConfig);
    ams localams = e.a(j, paramConfig);
    Object localObject;
    label75:
    Bitmap.Config localConfig;
    switch (amr.a[paramConfig.ordinal()])
    {
    default: 
      localObject = new Bitmap.Config[] { paramConfig };
      int k = localObject.length;
      if (i < k)
      {
        localConfig = localObject[i];
        Integer localInteger = (Integer)a(localConfig).ceilingKey(Integer.valueOf(j));
        if ((localInteger == null) || (localInteger.intValue() > j << 3)) {
          break label273;
        }
        if (localInteger.intValue() == j)
        {
          if (localConfig == null) {
            if (paramConfig == null) {
              break label267;
            }
          }
        }
        else
        {
          label146:
          e.a(localams);
          paramConfig = e.a(localInteger.intValue(), localConfig);
          label170:
          localObject = (Bitmap)f.a(paramConfig);
          if (localObject != null)
          {
            a(Integer.valueOf(a), (Bitmap)localObject);
            if (((Bitmap)localObject).getConfig() == null) {
              break label282;
            }
          }
        }
      }
      break;
    }
    label267:
    label273:
    label282:
    for (paramConfig = ((Bitmap)localObject).getConfig();; paramConfig = Bitmap.Config.ARGB_8888)
    {
      ((Bitmap)localObject).reconfigure(paramInt1, paramInt2, paramConfig);
      return (Bitmap)localObject;
      localObject = a;
      break;
      localObject = b;
      break;
      localObject = c;
      break;
      localObject = d;
      break;
      if (!localConfig.equals(paramConfig)) {
        break label146;
      }
      paramConfig = localams;
      break label170;
      i += 1;
      break label75;
    }
  }
  
  public void a(Bitmap paramBitmap)
  {
    int i = avq.a(paramBitmap);
    ams localams = e.a(i, paramBitmap.getConfig());
    f.a(localams, paramBitmap);
    paramBitmap = a(paramBitmap.getConfig());
    Integer localInteger = (Integer)paramBitmap.get(Integer.valueOf(a));
    int j = a;
    if (localInteger == null) {}
    for (i = 1;; i = localInteger.intValue() + 1)
    {
      paramBitmap.put(Integer.valueOf(j), Integer.valueOf(i));
      return;
    }
  }
  
  public String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return a(avq.a(paramInt1, paramInt2, paramConfig), paramConfig);
  }
  
  public String b(Bitmap paramBitmap)
  {
    return a(avq.a(paramBitmap), paramBitmap.getConfig());
  }
  
  public int c(Bitmap paramBitmap)
  {
    return avq.a(paramBitmap);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("SizeConfigStrategy{groupedMap=").append(f).append(", sortedSizes=(");
    Iterator localIterator = g.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localStringBuilder.append(localEntry.getKey()).append('[').append(localEntry.getValue()).append("], ");
    }
    if (!g.isEmpty()) {
      localStringBuilder.replace(localStringBuilder.length() - 2, localStringBuilder.length(), "");
    }
    return ")}";
  }
}

/* Location:
 * Qualified Name:     amq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */