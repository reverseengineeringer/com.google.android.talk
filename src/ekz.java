import android.net.Uri;
import android.text.TextUtils;

final class ekz
  implements ijg
{
  ekz(eky parameky, ejs paramejs, int paramInt, String paramString) {}
  
  public boolean a(ijc paramijc, Object paramObject)
  {
    paramijc = (String)paramObject;
    paramObject = a.b();
    if (paramObject == null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = TextUtils.isEmpty(paramijc);
      if ((b == 1) && ((bool1 != bool2) || ((paramObject != null) && (!((Uri)paramObject).equals(Uri.parse(paramijc)))))) {
        aal.a(dvd.e(d.a.a()), 1599);
      }
      ((hpz)ilh.a(a.y(), hpz.class)).b(d.a.a()).b(c, paramijc).d();
      a.a(paramijc);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     ekz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */