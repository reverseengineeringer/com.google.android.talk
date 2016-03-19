import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class hqc
  implements hqe
{
  public final String a;
  public final int b;
  public final Map<String, hrb> c;
  public final Map<String, ?> d = f.b.getAll();
  public boolean e;
  
  public hqc(hqq paramhqq, int paramInt)
  {
    this(paramhqq, paramInt, "", new HashMap());
  }
  
  private hqc(int paramInt, String paramString, Map<String, hrb> paramMap)
  {
    b = paramString;
    a = String.valueOf(paramMap).concat(".");
    Map localMap;
    c = localMap;
  }
  
  private Object a(String paramString, Object paramObject)
  {
    paramString = j(paramString);
    hrb localhrb = (hrb)c.get(paramString);
    if (localhrb != null) {
      paramObject = localhrb.a(paramObject);
    }
    do
    {
      return paramObject;
      paramString = a(b, paramString);
    } while (!d.containsKey(paramString));
    return d.get(paramString);
  }
  
  private static String a(int paramInt, String paramString)
  {
    return String.valueOf(paramString).length() + 11 + paramInt + paramString;
  }
  
  private void a(String paramString, hrb paramhrb)
  {
    c.put(j(paramString), paramhrb);
  }
  
  private hqc c(String paramString, float paramFloat)
  {
    a(paramString, new hrc(paramFloat));
    return this;
  }
  
  private String j(String paramString)
  {
    String str = String.valueOf(a);
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {
      return str.concat(paramString);
    }
    return new String(str);
  }
  
  public float a(String paramString, float paramFloat)
  {
    return ((Float)a(paramString, Float.valueOf(paramFloat))).floatValue();
  }
  
  public int a(String paramString, int paramInt)
  {
    return ((Integer)a(paramString, Integer.valueOf(paramInt))).intValue();
  }
  
  public long a(String paramString, long paramLong)
  {
    return ((Long)a(paramString, Long.valueOf(paramLong))).longValue();
  }
  
  public hqc a(String paramString, Set<String> paramSet)
  {
    a(paramString, new hri(paramSet));
    return this;
  }
  
  public String a(String paramString1, String paramString2)
  {
    return (String)a(paramString1, paramString2);
  }
  
  public void a(int paramInt, SharedPreferences.Editor paramEditor)
  {
    Iterator localIterator = c.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ((hrb)c.get(str)).a(paramEditor, a(paramInt, str));
    }
  }
  
  public boolean a()
  {
    return d("logged_in");
  }
  
  public boolean a(String paramString)
  {
    paramString = j(paramString);
    hrb localhrb = (hrb)c.get(paramString);
    if (localhrb != null) {
      return localhrb != hqq.c;
    }
    return f.b.contains(a(b, paramString));
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    return ((Boolean)a(paramString, Boolean.valueOf(paramBoolean))).booleanValue();
  }
  
  public hqc b(String paramString, int paramInt)
  {
    a(paramString, new hrd(paramInt));
    return this;
  }
  
  public hqc b(String paramString, long paramLong)
  {
    a(paramString, new hre(paramLong));
    return this;
  }
  
  public hqc b(String paramString1, String paramString2)
  {
    a(paramString1, new hrh(paramString2));
    return this;
  }
  
  public hqc b(String paramString, boolean paramBoolean)
  {
    a(paramString, new hra(paramBoolean));
    return this;
  }
  
  public String b(String paramString)
  {
    return a(paramString, null);
  }
  
  public boolean b()
  {
    return d("logged_out");
  }
  
  public hqc c()
  {
    e = true;
    return this;
  }
  
  public Set<String> c()
  {
    String str;
    return (Set)a(str, null);
  }
  
  public int d()
  {
    int k = b;
    if ((e) && (b != -1)) {}
    for (int i = 1; i != 0; i = 0)
    {
      Iterator localIterator1 = f.c().iterator();
      while (localIterator1.hasNext()) {
        ((hpx)localIterator1.next()).c(b);
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        j = f.b(b("account_name"), b("effective_gaia_id"));
        if (j == b) {
          break label648;
        }
        if (j == -1)
        {
          break label648;
          if (j != 0) {
            break label152;
          }
          throw new byt("Duplicate account.");
        }
      }
      int j = 0;
      continue;
      label152:
      if ((k == -1) || (i != 0))
      {
        j = f.d();
        f.h(j);
      }
      for (;;)
      {
        SharedPreferences.Editor localEditor = f.b.edit();
        Object localObject2;
        if (i != 0)
        {
          localObject2 = f;
          i = b;
          String str1 = 12 + i + ".";
          String str2 = 12 + j + ".";
          Iterator localIterator2 = b.getAll().entrySet().iterator();
          while (localIterator2.hasNext())
          {
            Object localObject3 = (Map.Entry)localIterator2.next();
            String str3 = (String)((Map.Entry)localObject3).getKey();
            if (str3.startsWith(str1))
            {
              localObject2 = String.valueOf(str2);
              str3 = String.valueOf(str3.substring(str1.length()));
              if (str3.length() != 0) {}
              for (localObject2 = ((String)localObject2).concat(str3);; localObject2 = new String((String)localObject2))
              {
                localObject3 = ((Map.Entry)localObject3).getValue();
                if (!(localObject3 instanceof String)) {
                  break label406;
                }
                localEditor.putString((String)localObject2, (String)localObject3);
                break;
              }
              label406:
              if ((localObject3 instanceof Boolean)) {
                localEditor.putBoolean((String)localObject2, ((Boolean)localObject3).booleanValue());
              } else if ((localObject3 instanceof Integer)) {
                localEditor.putInt((String)localObject2, ((Integer)localObject3).intValue());
              } else if ((localObject3 instanceof Long)) {
                localEditor.putLong((String)localObject2, ((Long)localObject3).longValue());
              } else if ((localObject3 instanceof Float)) {
                localEditor.putFloat((String)localObject2, ((Float)localObject3).floatValue());
              } else if ((localObject3 instanceof Set)) {
                localEditor.putStringSet((String)localObject2, (Set)localObject3);
              }
            }
          }
          f.g(b);
        }
        a(j, localEditor);
        localEditor.apply();
        f.e();
        if (j != b)
        {
          localObject2 = f.c().iterator();
          while (((Iterator)localObject2).hasNext()) {
            ((hpx)((Iterator)localObject2).next()).b(j);
          }
        }
        f.f();
        return j;
        j = k;
      }
      label648:
      j = 1;
    }
  }
  
  public boolean d(String paramString)
  {
    return a(paramString, false);
  }
  
  public hqc f(String paramString)
  {
    a(paramString, hqq.c);
    return this;
  }
  
  public hqc g(String paramString)
  {
    hqq localhqq = f;
    int i = b;
    String str = String.valueOf(a);
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = str.concat(paramString);; paramString = new String(str)) {
      return new hqc(localhqq, i, paramString, c);
    }
  }
}

/* Location:
 * Qualified Name:     hqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */