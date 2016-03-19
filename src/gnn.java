import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.regex.Pattern;

public abstract class gnn<T>
{
  public static gnp a = new gnp(Bundle.EMPTY);
  public static gno b = new gno(Bundle.EMPTY);
  private final char c;
  private final char d;
  private final String e;
  private final String f;
  private final Bundle g;
  
  gnn(Bundle paramBundle)
  {
    g = paramBundle;
    c = '\001';
    d = '\002';
    e = Pattern.quote(String.valueOf(c));
    f = Pattern.quote(String.valueOf(d));
  }
  
  private static double a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return 0.0D;
    }
    try
    {
      double d1 = Double.parseDouble(paramString);
      return d1;
    }
    catch (NumberFormatException paramString)
    {
      aal.a("PhoneEmailDecoder", "NumberFormatException", paramString);
    }
    return 0.0D;
  }
  
  private static int a(String paramString, char paramChar, int paramInt1, int paramInt2)
  {
    paramChar = paramString.indexOf(paramChar, paramInt1);
    if ((paramChar >= 0) && (paramChar < paramInt2)) {
      return paramChar;
    }
    return -1;
  }
  
  private final void a(ArrayList<T> paramArrayList, String paramString)
  {
    int k = paramString.length();
    int i = 0;
    if (i < k)
    {
      int j = paramString.indexOf(d, i);
      if (j >= 0) {}
      for (;;)
      {
        int m = a(paramString, c, i, j);
        int n = a(paramString, c, m + 1, j);
        if ((m >= 0) && (n >= 0)) {
          a(paramArrayList, paramString.substring(i, m), paramString.substring(m + 1, n), paramString.substring(n + 1, j), 0.0D, 0.0D, 0.0D, 0.0D, 0.0D, null, null, null, null, null);
        }
        i = j + 1;
        break;
        j = paramString.length();
      }
    }
  }
  
  private void a(ArrayList<T> paramArrayList, String paramString1, String paramString2, String paramString3, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8)
  {
    if (TextUtils.isEmpty(paramString3)) {
      return;
    }
    String str = g.getString(paramString1);
    paramString1 = str;
    if (TextUtils.isEmpty(str)) {
      paramString1 = paramString2;
    }
    paramArrayList.add(a(paramString3, paramString1, paramDouble1, paramDouble2, paramDouble3, paramDouble4, paramDouble5, paramString4, paramString5, paramString6, paramString7, paramString8));
  }
  
  private final void b(ArrayList<T> paramArrayList, String paramString)
  {
    paramString = TextUtils.split(paramString, f);
    int j = paramString.length;
    int i = 0;
    if (i < j)
    {
      String[] arrayOfString = TextUtils.split(paramString[i], e);
      if (arrayOfString.length < 13) {
        aal.q(5);
      }
      for (;;)
      {
        i += 1;
        break;
        a(paramArrayList, arrayOfString[0], arrayOfString[1], arrayOfString[2], a(arrayOfString[3]), a(arrayOfString[4]), a(arrayOfString[5]), a(arrayOfString[6]), a(arrayOfString[7]), gpd.a(arrayOfString[8]), gpd.a(arrayOfString[9]), gpd.a(arrayOfString[10]), gpd.a(arrayOfString[11]), gpd.a(arrayOfString[12]));
      }
    }
  }
  
  protected abstract T a(String paramString1, String paramString2, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7);
  
  public final ArrayList<T> a(String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (TextUtils.isEmpty(paramString)) {
      return localArrayList;
    }
    if (paramBoolean)
    {
      b(localArrayList, paramString);
      return localArrayList;
    }
    a(localArrayList, paramString);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     gnn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */