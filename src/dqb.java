import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class dqb
  extends dpf
{
  private static final long serialVersionUID = 1L;
  private byte[] a;
  private Map<String, Integer> b;
  private boolean c;
  
  public dqb(byte[] paramArrayOfByte, Map<String, Integer> paramMap, boolean paramBoolean)
  {
    a = paramArrayOfByte;
    b = paramMap;
    c = paramBoolean;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kft localkft = new kft();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    b = a;
    a = new kab[b.size()];
    paramString = b.entrySet().iterator();
    paramInt1 = 0;
    while (paramString.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramString.next();
      kab localkab = new kab();
      b = Boolean.valueOf(c);
      kaa localkaa = new kaa();
      a = new kcr();
      a.b = ((String)localEntry.getKey());
      c = ((Integer)localEntry.getValue());
      a = localkaa;
      a[paramInt1] = localkab;
      paramInt1 += 1;
    }
    return localkft;
  }
  
  public String f()
  {
    return "contacts/updatefavoritecontact";
  }
  
  boolean o()
  {
    return c;
  }
  
  Collection<String> p()
  {
    return b.keySet();
  }
}

/* Location:
 * Qualified Name:     dqb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */