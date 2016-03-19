import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.api.Scope;
import java.util.Set;

public final class fii
  implements ac
{
  public static final int a = 2131559031;
  public static final int b = 2131559134;
  public static final int c = 2131559135;
  public static final int d = 2130838934;
  public static final int e = 2130838969;
  public static final int f = 2130838991;
  public static final int g = 2130838992;
  public static final int h = 2130838998;
  public static final int i = 2130839024;
  public static final int j = 2130839030;
  public static final int k = 2130839031;
  public static final int l = 2130839049;
  public static final int m = 2130839054;
  public static final int n = 2130839058;
  public static final int o = 2131558598;
  public static final int p = 2131558552;
  public static final int q = 2131558785;
  public static final int r = 2131558553;
  public static final int s = 2131364496;
  public static final int t = 2131364495;
  public static final int u = 2131364498;
  public static final int v = 2131364494;
  private boolean w;
  private Set<Scope> x;
  
  public static int a(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 >= paramInt2))
    {
      if (paramInt1 < 0) {}
      for (String str = a("%s (%s) must not be negative", new Object[] { "index", Integer.valueOf(paramInt1) });; str = a("%s (%s) must be less than size (%s)", new Object[] { "index", Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }))
      {
        throw new IndexOutOfBoundsException(str);
        if (paramInt2 < 0) {
          throw new IllegalArgumentException(26 + "negative size: " + paramInt2);
        }
      }
    }
    return paramInt1;
  }
  
  public static <T> T a(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException();
    }
    return paramT;
  }
  
  public static <T> T a(T paramT, Object paramObject)
  {
    if (paramT == null) {
      throw new NullPointerException(String.valueOf(paramObject));
    }
    return paramT;
  }
  
  private static String a(int paramInt1, int paramInt2, String paramString)
  {
    if (paramInt1 < 0) {
      return a("%s (%s) must not be negative", new Object[] { paramString, Integer.valueOf(paramInt1) });
    }
    if (paramInt2 < 0) {
      throw new IllegalArgumentException(26 + "negative size: " + paramInt2);
    }
    return a("%s (%s) must not be greater than size (%s)", new Object[] { paramString, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
  }
  
  public static String a(String paramString, Object... paramVarArgs)
  {
    int i1 = 0;
    paramString = String.valueOf(paramString);
    StringBuilder localStringBuilder = new StringBuilder(paramString.length() + paramVarArgs.length * 16);
    int i2 = 0;
    while (i1 < paramVarArgs.length)
    {
      int i3 = paramString.indexOf("%s", i2);
      if (i3 == -1) {
        break;
      }
      localStringBuilder.append(paramString.substring(i2, i3));
      localStringBuilder.append(paramVarArgs[i1]);
      i2 = i3 + 2;
      i1 += 1;
    }
    localStringBuilder.append(paramString.substring(i2));
    if (i1 < paramVarArgs.length)
    {
      localStringBuilder.append(" [");
      localStringBuilder.append(paramVarArgs[i1]);
      i1 += 1;
      while (i1 < paramVarArgs.length)
      {
        localStringBuilder.append(", ");
        localStringBuilder.append(paramVarArgs[i1]);
        i1 += 1;
      }
      localStringBuilder.append(']');
    }
    return localStringBuilder.toString();
  }
  
  public static void a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < 0) || (paramInt2 < paramInt1) || (paramInt2 > paramInt3))
    {
      String str;
      if ((paramInt1 < 0) || (paramInt1 > paramInt3)) {
        str = a(paramInt1, paramInt3, "start index");
      }
      for (;;)
      {
        throw new IndexOutOfBoundsException(str);
        if ((paramInt2 < 0) || (paramInt2 > paramInt3)) {
          str = a(paramInt2, paramInt3, "end index");
        } else {
          str = a("end index (%s) must not be less than start index (%s)", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(paramInt1) });
        }
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException();
    }
  }
  
  public static void a(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(String.valueOf(paramObject));
    }
  }
  
  public static void a(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalArgumentException(a(paramString, paramVarArgs));
    }
  }
  
  public static int b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > paramInt2)) {
      throw new IndexOutOfBoundsException(a(paramInt1, paramInt2, "index"));
    }
    return paramInt1;
  }
  
  public static void b(boolean paramBoolean)
  {
    if (!paramBoolean) {
      throw new IllegalStateException();
    }
  }
  
  public static void b(boolean paramBoolean, Object paramObject)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramObject));
    }
  }
  
  public static void b(boolean paramBoolean, String paramString, Object... paramVarArgs)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(a(paramString, paramVarArgs));
    }
  }
  
  public void a(ViewGroup paramViewGroup, View paramView, Rect paramRect)
  {
    paramViewGroup.offsetDescendantRectToMyCoords(paramView, paramRect);
  }
  
  public boolean a()
  {
    return w;
  }
  
  public Set<Scope> b()
  {
    return x;
  }
}

/* Location:
 * Qualified Name:     fii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */