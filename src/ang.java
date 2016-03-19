import android.app.ActivityManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.Log;

public final class ang
{
  private final int a;
  private final int b;
  private final Context c;
  private final int d;
  
  ang(Context paramContext, ActivityManager paramActivityManager, ani paramani, float paramFloat1, float paramFloat2, int paramInt, float paramFloat3, float paramFloat4)
  {
    c = paramContext;
    int i = paramInt;
    if (a(paramActivityManager)) {
      i = paramInt / 2;
    }
    d = i;
    paramInt = paramActivityManager.getMemoryClass();
    boolean bool1 = a(paramActivityManager);
    float f = paramInt << 10 << 10;
    int k;
    label136:
    String str1;
    String str2;
    if (bool1)
    {
      paramInt = Math.round(f * paramFloat4);
      int j = paramani.a() * paramani.b() << 2;
      i = Math.round(j * paramFloat2);
      j = Math.round(j * paramFloat1);
      k = paramInt - d;
      if (j + i > k) {
        break label354;
      }
      b = j;
      a = i;
      if (Log.isLoggable("MemorySizeCalculator", 3))
      {
        paramContext = String.valueOf("Calculation complete, Calculated memory cache size: ");
        paramani = String.valueOf(a(b));
        str1 = String.valueOf(a(a));
        str2 = String.valueOf(a(d));
        if (j + i <= paramInt) {
          break label392;
        }
      }
    }
    label354:
    label392:
    for (bool1 = true;; bool1 = false)
    {
      String str3 = String.valueOf(a(paramInt));
      paramInt = paramActivityManager.getMemoryClass();
      boolean bool2 = a(paramActivityManager);
      new StringBuilder(String.valueOf(paramContext).length() + 125 + String.valueOf(paramani).length() + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length()).append(paramContext).append(paramani).append(", pool size: ").append(str1).append(", byte array size: ").append(str2).append(", memory class limited? ").append(bool1).append(", max size: ").append(str3).append(", memoryClass: ").append(paramInt).append(", isLowMemoryDevice: ").append(bool2);
      return;
      paramFloat4 = paramFloat3;
      break;
      paramFloat3 = k / (paramFloat2 + paramFloat1);
      b = Math.round(paramFloat3 * paramFloat1);
      a = Math.round(paramFloat3 * paramFloat2);
      break label136;
    }
  }
  
  private String a(int paramInt)
  {
    return Formatter.formatFileSize(c, paramInt);
  }
  
  private static boolean a(ActivityManager paramActivityManager)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramActivityManager.isLowRamDevice();
    }
    return Build.VERSION.SDK_INT < 11;
  }
  
  public int a()
  {
    return b;
  }
  
  public int b()
  {
    return a;
  }
  
  public int c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     ang
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */