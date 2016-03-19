import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class mmz
  implements Iterable<mne>
{
  private final List<mne> a = new LinkedList();
  private final Map<String, List<mne>> b = new HashMap();
  
  public mne a(String paramString)
  {
    paramString = paramString.toLowerCase(Locale.US);
    paramString = (List)b.get(paramString);
    if ((paramString != null) && (!paramString.isEmpty())) {
      return (mne)paramString.get(0);
    }
    return null;
  }
  
  public void a(mne parammne)
  {
    String str = parammne.a().toLowerCase(Locale.US);
    List localList = (List)b.get(str);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new LinkedList();
      b.put(str, localObject);
    }
    ((List)localObject).add(parammne);
    a.add(parammne);
  }
  
  public Iterator<mne> iterator()
  {
    return Collections.unmodifiableList(a).iterator();
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     mmz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */