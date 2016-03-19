import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class hox
{
  public static final hox a;
  private static final Logger b = Logger.getLogger(hox.class.getName());
  private static final Set<String> c;
  private final hoy d;
  private final Map<Integer, List<String>> e;
  
  static
  {
    a = new hox(new hoy());
    HashSet localHashSet = new HashSet();
    c = localHashSet;
    localHashSet.add("BR");
    c.add("CL");
    c.add("NI");
  }
  
  private hox(hoy paramhoy)
  {
    d = paramhoy;
    e = aal.s();
  }
  
  public boolean a(hos paramhos, String paramString)
  {
    int i = paramhos.a();
    Object localObject2 = (List)e.get(Integer.valueOf(i));
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = new ArrayList(0);
    }
    if (!Collections.unmodifiableList((List)localObject1).contains(paramString)) {
      return false;
    }
    paramString = hnw.a(paramString);
    if (paramString == null) {
      return false;
    }
    localObject1 = d;
    localObject2 = new StringBuilder();
    if (paramhos.f())
    {
      char[] arrayOfChar = new char[paramhos.g()];
      Arrays.fill(arrayOfChar, '0');
      ((StringBuilder)localObject2).append(new String(arrayOfChar));
    }
    ((StringBuilder)localObject2).append(paramhos.b());
    return ((hoy)localObject1).a(((StringBuilder)localObject2).toString(), a);
  }
  
  @Deprecated
  public boolean a(String paramString1, String paramString2)
  {
    paramString2 = hnw.a(paramString2);
    if (paramString2 == null) {
      return false;
    }
    return d.a(paramString1, a);
  }
  
  public boolean b(String paramString1, String paramString2)
  {
    boolean bool = false;
    String str = hof.a(paramString1);
    if (hof.b.matcher(str).lookingAt()) {}
    do
    {
      return false;
      paramString1 = hnw.a(paramString2);
    } while ((paramString1 == null) || (k == null));
    str = hof.b(str);
    paramString1 = k;
    if (!c.contains(paramString2)) {
      bool = true;
    }
    return d.a(str, paramString1, bool);
  }
}

/* Location:
 * Qualified Name:     hox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */