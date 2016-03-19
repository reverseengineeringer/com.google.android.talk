import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.NavigableSet;
import java.util.Set;
import java.util.TreeSet;

public final class bix
{
  eyp<biy> a = new eyp();
  final TreeSet<biy> b = new TreeSet();
  final Object c = new Object();
  
  public List<egy> a(long paramLong1, long paramLong2)
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (c)
    {
      if (b.isEmpty()) {
        return localArrayList;
      }
      if (paramLong2 < b.first()).a) {
        return localArrayList;
      }
      Object localObject2 = (biy)b.ceiling(new biy(paramLong1));
      if (localObject2 == null) {
        return localArrayList;
      }
      localObject2 = b.tailSet(localObject2, true).iterator();
      if (((Iterator)localObject2).hasNext())
      {
        biy localbiy = (biy)((Iterator)localObject2).next();
        if (a < paramLong2) {
          localArrayList.add(d);
        }
      }
    }
    return localList;
  }
  
  public void a(egy paramegy)
  {
    if (biw.a)
    {
      localObject1 = String.valueOf("[WatermarkTracker] Record new watermark:  timestamp ");
      long l = paramegy.c();
      localObject2 = String.valueOf(paramegy.b());
      new StringBuilder(String.valueOf(localObject1).length() + 28 + String.valueOf(localObject2).length()).append((String)localObject1).append(l).append(" gaiaId ").append((String)localObject2);
    }
    Object localObject2 = (biy)a.get(paramegy.b());
    if ((localObject2 != null) && (paramegy.c() < a))
    {
      ezi.a("Babel", "ignore old timestamp", new Object[0]);
      return;
    }
    Object localObject1 = c;
    if (localObject2 != null) {}
    try
    {
      b.remove(localObject2);
      localObject2 = new biy(paramegy);
      a.put(paramegy.b(), localObject2);
      b.add(localObject2);
      return;
    }
    finally {}
  }
  
  public void a(StringBuilder paramStringBuilder)
  {
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      Object localObject1 = (czb)((Map.Entry)localObject2).getKey();
      localObject2 = (biy)((Map.Entry)localObject2).getValue();
      localObject1 = String.valueOf(localObject1);
      long l = a;
      paramStringBuilder.append(String.valueOf(localObject1).length() + 50 + "  participantId: " + (String)localObject1 + "  watermark: " + l);
      paramStringBuilder.append("\n");
    }
  }
}

/* Location:
 * Qualified Name:     bix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */