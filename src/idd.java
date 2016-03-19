import android.content.Context;
import android.graphics.RectF;
import android.net.Uri;
import android.provider.Settings.Secure;

public final class idd
{
  public static final Uri a = Uri.parse("https://lh3.googleusercontent.com");
  public static int b = -1;
  static Context c;
  private static idf d = new idf();
  
  static int a(Context paramContext)
  {
    int i = 0;
    if (paramContext == null) {}
    int j;
    do
    {
      do
      {
        return i;
        paramContext = Settings.Secure.getString(c.getContentResolver(), "android_id");
      } while (paramContext == null);
      j = Math.abs(paramContext.hashCode());
      i = j;
    } while (j != 0);
    return 1;
  }
  
  private static String a(float paramFloat)
  {
    float f;
    if (paramFloat >= 0.0D)
    {
      f = paramFloat;
      if (paramFloat <= 1.0D) {}
    }
    else
    {
      f = Math.max(0.0F, Math.min(1.0F, paramFloat));
    }
    String str2 = Integer.toString((int)(65535.0F * f), 16);
    String str1 = String.valueOf("0000".substring(0, 4 - str2.length()));
    str2 = String.valueOf(str2);
    if (str2.length() != 0) {
      return str1.concat(str2);
    }
    return new String(str1);
  }
  
  public static String a(RectF paramRectF)
  {
    new RectF();
    String str1 = String.valueOf(a(left));
    String str2 = String.valueOf(a(top));
    String str3 = String.valueOf(a(right));
    paramRectF = String.valueOf(a(bottom));
    return String.valueOf(str1).length() + 11 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(paramRectF).length() + "-fcrop64=1," + str1 + str2 + str3 + paramRectF;
  }
  
  public static String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    String str = a(paramString, paramInt1, 0, paramInt2, paramInt3, -1, -1, null, ide.a, paramInt4);
    if (str != null) {}
    do
    {
      return str;
      if (paramInt2 != 0) {
        break;
      }
      str = paramString;
    } while (paramInt3 == 0);
    return idg.a(paramInt2, paramInt3, paramString);
  }
  
  private static String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, RectF paramRectF, int paramInt7, int paramInt8)
  {
    return d.a(paramString, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramInt6, paramRectF, paramInt7, paramInt8);
  }
  
  public static String a(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, RectF paramRectF)
  {
    paramRectF = a(paramString, paramInt1, 0, paramInt2, paramInt3, paramInt4, paramInt5, paramRectF, ide.a, -1);
    if (paramRectF != null) {}
    do
    {
      return paramRectF;
      if (paramInt2 != 0) {
        break;
      }
      paramRectF = paramString;
    } while (paramInt3 == 0);
    return idg.a(paramInt2, paramInt3, paramString);
  }
  
  public static String a(String paramString, int paramInt1, int paramInt2, RectF paramRectF)
  {
    String str = a(paramString, paramInt1, paramInt2, 0, 0, -1, -1, paramRectF, ide.a, -1);
    paramRectF = str;
    if (str == null) {
      paramRectF = idg.a(paramInt2, paramString);
    }
    return paramRectF;
  }
  
  public static String a(String paramString, int paramInt, RectF paramRectF)
  {
    String str = a(paramString, paramInt, 0, 0, 0, -1, -1, paramRectF, ide.a, -1);
    paramRectF = str;
    if (str == null) {
      paramRectF = idg.a(-1, paramString);
    }
    return paramRectF;
  }
  
  public static boolean a(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return d.a(paramString);
  }
}

/* Location:
 * Qualified Name:     idd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */