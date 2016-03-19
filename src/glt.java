import android.os.Handler;
import android.text.TextUtils;

public final class glt
{
  public glt(eie parameie) {}
  
  public void a(String paramString1, String paramString2, int paramInt)
  {
    if (ezi.a("BabelPeopleCache", 3)) {
      if (!TextUtils.isEmpty(paramString1)) {
        break label133;
      }
    }
    label133:
    for (paramString1 = "";; paramString1 = ezi.b(paramString1))
    {
      ezi.b("BabelPeopleCache", String.valueOf(paramString1).length() + 68 + String.valueOf(paramString2).length() + "GmsPeopleCache.onDataChanged. Account: " + paramString1 + " gaiaId: " + paramString2 + " scopes: " + paramInt, new Object[0]);
      long l = eie.g();
      if (l != 0L)
      {
        a.e.removeCallbacks(a.i);
        a.e.postDelayed(a.i, l);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     glt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */