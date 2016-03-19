import android.content.ContentResolver;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class fgd
{
  static final Pattern a = Pattern.compile(" +");
  private static final Pattern b = Pattern.compile("\\W");
  private static fgd c = new fgd(new fge[0]);
  private static Object d;
  private final fge[] e;
  private final Pattern f;
  
  private fgd(fge[] paramArrayOffge)
  {
    Arrays.sort(paramArrayOffge);
    StringBuilder localStringBuilder = new StringBuilder("(");
    int i = 0;
    while (i < paramArrayOffge.length)
    {
      if (i > 0) {
        localStringBuilder.append(")|(");
      }
      localStringBuilder.append(b.matcher(b).replaceAll("\\\\$0"));
      i += 1;
    }
    f = Pattern.compile(")");
    e = paramArrayOffge;
  }
  
  public static fgd a(ContentResolver paramContentResolver)
  {
    for (;;)
    {
      Object localObject1;
      try
      {
        localObject1 = gvj.a(paramContentResolver);
        if (localObject1 == d)
        {
          if (Log.isLoggable("UrlRules", 2)) {
            new StringBuilder("Using cached rules, versionToken: ").append(localObject1);
          }
          paramContentResolver = c;
          return paramContentResolver;
        }
        Object localObject2 = gvj.a(paramContentResolver, new String[] { "url:" });
        paramContentResolver = new ArrayList();
        localObject2 = ((Map)localObject2).entrySet().iterator();
        if (((Iterator)localObject2).hasNext())
        {
          Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
          try
          {
            String str = ((String)((Map.Entry)localObject3).getKey()).substring(4);
            localObject3 = (String)((Map.Entry)localObject3).getValue();
            if ((localObject3 == null) || (((String)localObject3).length() == 0)) {
              continue;
            }
            if (Log.isLoggable("UrlRules", 2)) {
              new StringBuilder("  Rule ").append(str).append(": ").append((String)localObject3);
            }
            paramContentResolver.add(new fge(str, (String)localObject3));
          }
          catch (fgf localfgf)
          {
            Log.e("UrlRules", "Invalid rule from Gservices", localfgf);
          }
          continue;
        }
        c = new fgd((fge[])paramContentResolver.toArray(new fge[paramContentResolver.size()]));
      }
      finally {}
      d = localObject1;
      if (Log.isLoggable("UrlRules", 2)) {
        new StringBuilder("New rules stored, versionToken: ").append(localObject1);
      }
      paramContentResolver = c;
    }
  }
  
  public fge a(String paramString)
  {
    paramString = f.matcher(paramString);
    if (paramString.lookingAt())
    {
      int i = 0;
      while (i < e.length)
      {
        if (paramString.group(i + 1) != null) {
          return e[i];
        }
        i += 1;
      }
    }
    return fge.e;
  }
}

/* Location:
 * Qualified Name:     fgd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */