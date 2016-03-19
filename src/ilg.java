import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ilg
  implements ilq
{
  private static final int a = 7;
  private static final int b = 7;
  private final ilq[] c;
  
  public ilg(Context paramContext, Set<String> paramSet)
  {
    Object localObject2 = paramContext.getPackageName();
    try
    {
      localObject1 = paramContext.getPackageManager().getApplicationInfo((String)localObject2, 128);
      if (localObject1 == null)
      {
        paramContext = null;
        localObject2 = new ArrayList();
        localHashSet = new HashSet();
        if (paramContext == null) {
          break label325;
        }
        Iterator localIterator = metaData.keySet().iterator();
        for (;;)
        {
          if (!localIterator.hasNext()) {
            break label325;
          }
          localObject1 = (String)localIterator.next();
          if (((String)localObject1).startsWith("MODULE.")) {
            ((List)localObject2).add(a(paramContext.getString((String)localObject1)));
          }
          if (!((String)localObject1).startsWith("MODULE:")) {
            break;
          }
          ((List)localObject2).add(a(((String)localObject1).substring(a)));
        }
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        HashSet localHashSet;
        Log.wtf(String.format("Could not find application info for package: %s", new Object[] { localObject2 }), paramContext);
        Object localObject1 = null;
        continue;
        paramContext = metaData;
        continue;
        if (((String)localObject1).startsWith("module:"))
        {
          String str1 = ((String)localObject1).substring(b);
          localHashSet.add(str1);
          if ((paramSet == null) || (!paramSet.contains(str1)))
          {
            localObject1 = String.valueOf("gen_binder.");
            String str2 = String.valueOf(str1.replace('.', '$'));
            if (str2.length() != 0) {}
            for (localObject1 = ((String)localObject1).concat(str2);; localObject1 = new String((String)localObject1))
            {
              ((List)localObject2).add(a((String)localObject1));
              if ((paramSet == null) || (!Log.isLoggable("Binder", 5))) {
                break;
              }
              localObject1 = String.valueOf(str1);
              if (((String)localObject1).length() == 0) {
                break label312;
              }
              "***WARNING*** Root module does not include ".concat((String)localObject1);
              break;
            }
            label312:
            new String("***WARNING*** Root module does not include ");
          }
        }
      }
      label325:
      c = ((ilq[])((List)localObject2).toArray(new ilq[((List)localObject2).size()]));
    }
  }
  
  private static ilq a(String paramString)
  {
    try
    {
      ilq localilq = (ilq)Class.forName(paramString).newInstance();
      return localilq;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "Failed to add stitch module ".concat(paramString);; paramString = new String("Failed to add stitch module ")) {
        throw new RuntimeException(paramString, localIllegalAccessException);
      }
    }
    catch (InstantiationException localInstantiationException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "Failed to add stitch module ".concat(paramString);; paramString = new String("Failed to add stitch module ")) {
        throw new RuntimeException(paramString, localInstantiationException);
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() == 0) {}
    }
    for (paramString = "Failed to add stitch module ".concat(paramString);; paramString = new String("Failed to add stitch module ")) {
      throw new RuntimeException(paramString, localClassNotFoundException);
    }
  }
  
  public void a(Context paramContext, Class<?> paramClass, ilh paramilh)
  {
    int i = 0;
    while (i < c.length)
    {
      c[i].a(paramContext, paramClass, paramilh);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     ilg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */