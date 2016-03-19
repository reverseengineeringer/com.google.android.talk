import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class hda
{
  public hdd a = null;
  public Map<Integer, hdd> b = new HashMap();
  public hdd c = null;
  public Map<Integer, hdd> d = new HashMap();
  public hdd e = null;
  public hdd f = null;
  public hdd g = null;
  
  public hda(hcw paramhcw) {}
  
  public void a()
  {
    a = null;
    b.clear();
    c = null;
    d.clear();
    e = null;
    f = null;
    g = null;
  }
  
  public boolean b()
  {
    return (a == null) && (b.isEmpty()) && (c == null) && (d.isEmpty()) && (e == null) && (f == null);
  }
  
  public List<hdd> c()
  {
    List localList = d();
    if (g != null) {
      localList.add(g);
    }
    Collections.sort(localList, new hdb(this));
    return localList;
  }
  
  public List<hdd> d()
  {
    ArrayList localArrayList = new ArrayList(b.size() + d.size() + 5);
    if (a != null) {
      localArrayList.add(a);
    }
    localArrayList.addAll(b.values());
    if (c != null) {
      localArrayList.add(c);
    }
    localArrayList.addAll(d.values());
    if (e != null) {
      localArrayList.add(e);
    }
    if (f != null) {
      localArrayList.add(f);
    }
    Collections.sort(localArrayList, new hdc(this));
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     hda
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */