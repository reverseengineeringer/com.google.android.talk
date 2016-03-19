import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class eyr
{
  private static final boolean a = false;
  
  static
  {
    imx localimx = ezi.t;
  }
  
  public static int a(int paramInt)
  {
    return paramInt;
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    if (paramInt1 == -1) {
      return paramInt3;
    }
    Object localObject = aal.oJ.getSharedPreferences("notificationRequestCodes.v1", 0);
    if (paramString == null) {
      paramString = String.valueOf("|");
    }
    String str1;
    String str2;
    for (paramString = String.valueOf(paramString).length() + 22 + paramInt1 + paramString + paramInt3;; paramString = String.valueOf(str1).length() + 22 + String.valueOf(str2).length() + String.valueOf(paramString).length() + paramInt1 + str1 + paramInt3 + str2 + paramString)
    {
      int j = ((SharedPreferences)localObject).getInt(paramString, 0);
      int i = j;
      if (j == 0)
      {
        j = ((SharedPreferences)localObject).getInt("maxRequestCode", 1001) + 1;
        localObject = ((SharedPreferences)localObject).edit();
        ((SharedPreferences.Editor)localObject).putInt("maxRequestCode", j + paramInt2 - 1);
        ((SharedPreferences.Editor)localObject).putInt(paramString, j);
        ((SharedPreferences.Editor)localObject).apply();
        i = j;
        if (a)
        {
          new StringBuilder(String.valueOf(paramString).length() + 118).append("New Request code assigned for account=").append(paramInt1).append(" numReserved=").append(paramInt2).append(" type=").append(paramInt3).append(" assigned=").append(j).append(" (key=").append(paramString).append(")");
          i = j;
        }
      }
      return i;
      str1 = String.valueOf("|");
      str2 = String.valueOf("|");
    }
  }
}

/* Location:
 * Qualified Name:     eyr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */