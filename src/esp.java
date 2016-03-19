import android.content.Context;
import android.os.Build.VERSION;

final class esp
  implements awp
{
  private Context a;
  
  public esp(Context paramContext)
  {
    a = paramContext;
  }
  
  private static boolean a(int paramInt, String paramString)
  {
    String str = dvd.e(paramInt).v();
    if (str != null) {}
    for (str = ezm.g(str); (str != null) && (str.equals(paramString)); str = null) {
      return true;
    }
    return false;
  }
  
  public boolean a()
  {
    awo localawo = (awo)ilh.a(a, awo.class);
    String str = ezm.f();
    int[] arrayOfInt = dvd.e();
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = arrayOfInt[i];
      if ((localawo.f(k)) && (a(k, str))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean a(String paramString)
  {
    if (Build.VERSION.SDK_INT < 22) {
      return false;
    }
    int i = ((hpz)ilh.a(a, hpz.class)).b(paramString);
    if (i == -1) {
      return false;
    }
    if (!((awo)ilh.a(a, awo.class)).f(i)) {
      return false;
    }
    return a(i, ezm.f());
  }
}

/* Location:
 * Qualified Name:     esp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */