import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class dpv
  extends dpf
{
  private static final long serialVersionUID = 1L;
  private final Map<Integer, Boolean> a = new HashMap();
  
  public dpv(List<eyu<Integer, Boolean>> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      eyu localeyu = (eyu)paramList.next();
      a.put(a, b);
    }
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kep localkep = new kep();
    Object localObject = new StringBuilder();
    a = new kdq[a.size()];
    Iterator localIterator = a.entrySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      kdq localkdq = new kdq();
      int j = aal.a((Integer)localEntry.getKey(), 0);
      boolean bool = aal.a((Boolean)localEntry.getValue(), false);
      if (doo.e) {
        ((StringBuilder)localObject).append("{").append(j).append(", ").append(bool).append("} ");
      }
      a = Integer.valueOf(j);
      b = Boolean.valueOf(bool);
      a[i] = localkdq;
      i += 1;
    }
    if (doo.e)
    {
      localObject = String.valueOf(((StringBuilder)localObject).toString());
      if (((String)localObject).length() == 0) {
        break label240;
      }
      "SetRichPresenceEnabledStateRequest build protobuf. Values: ".concat((String)localObject);
    }
    for (;;)
    {
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      return localkep;
      label240:
      new String("SetRichPresenceEnabledStateRequest build protobuf. Values: ");
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    paramcwi = a.entrySet().iterator();
    while (paramcwi.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramcwi.next();
      if (a.get(localEntry.getKey()) == null) {
        a.put(localEntry.getKey(), localEntry.getValue());
      }
    }
    return true;
  }
  
  public String f()
  {
    return "presence/setrichpresenceenabledstate";
  }
}

/* Location:
 * Qualified Name:     dpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */