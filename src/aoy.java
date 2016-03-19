import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class aoy
{
  private static final String a = System.getProperty("http.agent");
  private static final Map<String, List<aow>> b;
  private boolean c = true;
  private Map<String, List<aow>> d = b;
  private boolean e = true;
  private boolean f = true;
  
  static
  {
    HashMap localHashMap = new HashMap(2);
    if (!TextUtils.isEmpty(a)) {
      localHashMap.put("User-Agent", Collections.singletonList(new aoz(a)));
    }
    localHashMap.put("Accept-Encoding", Collections.singletonList(new aoz("identity")));
    b = Collections.unmodifiableMap(localHashMap);
  }
  
  public aox a()
  {
    c = true;
    return new aox(d);
  }
}

/* Location:
 * Qualified Name:     aoy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */