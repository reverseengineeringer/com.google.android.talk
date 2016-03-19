import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class hrf
{
  private final imv b = new imv();
  
  hrf(hqq paramhqq) {}
  
  private void a(String paramString1, Map<String, ?> paramMap, String paramString2, String paramString3)
  {
    imv localimv = b;
    paramString2 = String.valueOf(paramString2);
    String str = String.valueOf(paramString3);
    if (str.length() != 0) {}
    for (paramString2 = paramString2.concat(str);; paramString2 = new String(paramString2))
    {
      paramMap = String.valueOf(paramMap.get(paramString2));
      localimv.println(String.valueOf(paramString1).length() + 3 + String.valueOf(paramString3).length() + String.valueOf(paramMap).length() + paramString1 + paramString3 + " = " + paramMap);
      return;
    }
  }
  
  private void a(Map<String, ?> paramMap)
  {
    Object localObject1 = new ArrayList();
    paramMap = paramMap.keySet().iterator();
    String str;
    while (paramMap.hasNext())
    {
      str = (String)paramMap.next();
      if (str.startsWith("key.")) {
        ((ArrayList)localObject1).add(str.substring(4));
      }
    }
    Collections.sort((List)localObject1);
    localObject1 = ((ArrayList)localObject1).iterator();
    if (((Iterator)localObject1).hasNext())
    {
      str = (String)((Iterator)localObject1).next();
      int i = a.d(str);
      if (i == -1) {
        paramMap = "<INVALID_ID>";
      }
      for (;;)
      {
        b.println(String.valueOf(str).length() + 29 + String.valueOf(paramMap).length() + "Account key '" + str + "' = " + i + " " + paramMap);
        break;
        try
        {
          Object localObject2 = a.a(i);
          paramMap = String.valueOf(((hqb)localObject2).b("account_name"));
          localObject2 = String.valueOf(((hqb)localObject2).b("effective_gaia_id"));
          paramMap = String.valueOf(paramMap).length() + 4 + String.valueOf(localObject2).length() + "(" + paramMap + ", " + (String)localObject2 + ")";
        }
        catch (hqd paramMap)
        {
          paramMap = "<ACCOUNT NOT FOUND>";
        }
      }
    }
  }
  
  private void a(Map<String, ?> paramMap, ArrayList<String> paramArrayList, String paramString, String... paramVarArgs)
  {
    int i = 0;
    if (i < 9)
    {
      String str2 = paramVarArgs[i];
      a("  ", paramMap, paramString, str2);
      String str1 = String.valueOf(paramString);
      str2 = String.valueOf(str2);
      if (str2.length() != 0) {}
      for (str1 = str1.concat(str2);; str1 = new String(str1))
      {
        paramArrayList.remove(str1);
        i += 1;
        break;
      }
    }
  }
  
  String a()
  {
    Map localMap = a.b.getAll();
    Iterator localIterator1 = a.a().iterator();
    while (localIterator1.hasNext())
    {
      int i = ((Integer)localIterator1.next()).intValue();
      b.println(25 + "Account ID: " + i + " {");
      String str1 = 12 + i + ".";
      Object localObject = new ArrayList();
      Iterator localIterator2 = localMap.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str2 = (String)localIterator2.next();
        if (str2.startsWith(str1)) {
          ((ArrayList)localObject).add(str2);
        }
      }
      Collections.sort((List)localObject);
      a(localMap, (ArrayList)localObject, str1, new String[] { "account_name", "effective_gaia_id", "is_plus_page", "created", "is_google_plus", "logged_in", "logged_out", "display_name", "gaia_id" });
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        a("    ", localMap, str1, ((String)((Iterator)localObject).next()).substring(str1.length()));
      }
      b.println("}");
    }
    a(localMap);
    return b.toString();
  }
}

/* Location:
 * Qualified Name:     hrf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */