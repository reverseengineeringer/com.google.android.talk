import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import java.util.WeakHashMap;

public final class irm
{
  private static final Map<Class<?>, irm> c = new WeakHashMap();
  private static final Map<Class<?>, irm> d = new WeakHashMap();
  public final boolean a;
  final List<String> b;
  private final Class<?> e;
  private final IdentityHashMap<String, iry> f = new IdentityHashMap();
  
  private irm(Class<?> paramClass, boolean paramBoolean)
  {
    e = paramClass;
    a = paramBoolean;
    boolean bool;
    Object localObject1;
    TreeSet localTreeSet;
    int i;
    label111:
    Field localField;
    iry localiry;
    if ((!paramBoolean) || (!paramClass.isEnum()))
    {
      bool = true;
      localObject1 = String.valueOf(paramClass);
      fii.a(bool, String.valueOf(localObject1).length() + 31 + "cannot ignore case on an enum: " + (String)localObject1);
      localTreeSet = new TreeSet(new irn(this));
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      i = 0;
      if (i >= j) {
        break label281;
      }
      localField = arrayOfField[i];
      localiry = iry.a(localField);
      if (localiry != null)
      {
        localObject1 = localiry.b();
        if (!paramBoolean) {
          break label417;
        }
        localObject1 = ((String)localObject1).toLowerCase().intern();
      }
    }
    label178:
    label186:
    label264:
    label271:
    label281:
    label417:
    for (;;)
    {
      Object localObject2 = (iry)f.get(localObject1);
      String str;
      if (localObject2 == null)
      {
        bool = true;
        if (!paramBoolean) {
          break label264;
        }
        str = "case-insensitive ";
        if (localObject2 != null) {
          break label271;
        }
      }
      for (localObject2 = null;; localObject2 = ((iry)localObject2).a())
      {
        fii.a(bool, "two fields have the same %sname <%s>: %s and %s", new Object[] { str, localObject1, localField, localObject2 });
        f.put(localObject1, localiry);
        localTreeSet.add(localObject1);
        i += 1;
        break label111;
        bool = false;
        break;
        bool = false;
        break label178;
        str = "";
        break label186;
      }
      paramClass = paramClass.getSuperclass();
      if (paramClass != null)
      {
        paramClass = a(paramClass, paramBoolean);
        localTreeSet.addAll(b);
        paramClass = f.entrySet().iterator();
        while (paramClass.hasNext())
        {
          localObject1 = (Map.Entry)paramClass.next();
          str = (String)((Map.Entry)localObject1).getKey();
          if (!f.containsKey(str)) {
            f.put(str, ((Map.Entry)localObject1).getValue());
          }
        }
      }
      if (localTreeSet.isEmpty()) {}
      for (paramClass = Collections.emptyList();; paramClass = Collections.unmodifiableList(new ArrayList(localTreeSet)))
      {
        b = paramClass;
        return;
      }
    }
  }
  
  public static irm a(Class<?> paramClass)
  {
    return a(paramClass, false);
  }
  
  public static irm a(Class<?> paramClass, boolean paramBoolean)
  {
    if (paramClass == null) {
      return null;
    }
    if (paramBoolean) {}
    for (;;)
    {
      synchronized (d)
      {
        irm localirm2 = (irm)???.get(paramClass);
        irm localirm1 = localirm2;
        if (localirm2 == null)
        {
          localirm1 = new irm(paramClass, paramBoolean);
          ???.put(paramClass, localirm1);
        }
        return localirm1;
      }
      ??? = c;
    }
  }
  
  public iry a(String paramString)
  {
    String str = paramString;
    if (paramString != null)
    {
      str = paramString;
      if (a) {
        str = paramString.toLowerCase();
      }
      str = str.intern();
    }
    return (iry)f.get(str);
  }
  
  public boolean a()
  {
    return e.isEnum();
  }
  
  public Field b(String paramString)
  {
    paramString = a(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.a();
  }
  
  public Collection<iry> b()
  {
    return Collections.unmodifiableCollection(f.values());
  }
}

/* Location:
 * Qualified Name:     irm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */