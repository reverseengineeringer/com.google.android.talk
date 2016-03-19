import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.lang.reflect.Array;
import java.util.Arrays;

public final class bwn
  implements bwl
{
  String a;
  String b;
  boolean c;
  
  bwn(String paramString1, String paramString2, boolean paramBoolean)
  {
    a = paramString1;
    b = paramString2;
    c = paramBoolean;
  }
  
  private String a()
  {
    String str1 = String.valueOf("FEATURE_ENABLED.");
    String str2 = String.valueOf(a);
    if (str2.length() != 0) {
      return str1.concat(str2);
    }
    return new String(str1);
  }
  
  public <T> T a(Context paramContext, Class<? extends T> paramClass1, Class<? extends T> paramClass2)
  {
    if (a(paramContext)) {}
    for (paramClass2 = ilh.b(paramContext, paramClass2); paramClass2 != null; paramClass2 = null) {
      return paramClass2;
    }
    return (T)ilh.a(paramContext, paramClass1);
  }
  
  public <T> T a(T paramT)
  {
    if (a(paramT))
    {
      T ?;
      return ?;
    }
    return null;
  }
  
  public boolean a(Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
    if (!paramContext.contains(a())) {
      return c;
    }
    return paramContext.getBoolean(a(), false);
  }
  
  public <T> T[] a(Context paramContext, Class<T> paramClass, T paramT)
  {
    if (a(paramContext))
    {
      paramContext = (Object[])Array.newInstance(paramClass, 1);
      paramContext[0] = paramT;
      return paramContext;
    }
    return (Object[])Array.newInstance(paramClass, 0);
  }
  
  public <T> T[] a(Context paramContext, Class<T> paramClass, T... paramVarArgs)
  {
    if (a(paramContext)) {
      return Arrays.copyOf(paramVarArgs, 2);
    }
    return (Object[])Array.newInstance(paramClass, 0);
  }
}

/* Location:
 * Qualified Name:     bwn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */