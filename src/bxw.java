import android.os.Bundle;

final class bxw
  implements fif
{
  bxw(bxv parambxv) {}
  
  public void a(int paramInt)
  {
    boolean bool = bxv.a;
    if (a.c != null) {
      a.c = null;
    }
  }
  
  public void a_(Bundle paramBundle)
  {
    boolean bool = bxv.a;
    if (a.getActivity() == null) {
      ezi.a("Babel", "Google API client connected but MakePhoneCallFragment is detached.", new Object[0]);
    }
    do
    {
      return;
      paramBundle = a.b;
      long l = aal.a(aal.oJ, "babel_gms_sync_allowance", 28800L);
      int[] arrayOfInt = dvd.d(true);
      int j = arrayOfInt.length;
      int i = 0;
      while (i < j)
      {
        bfd localbfd = dvd.e(arrayOfInt[i]);
        glu.h.a(paramBundle, localbfd.a(), localbfd.U(), l);
        i += 1;
      }
    } while ((!a.h) || (a.c != null) || (!a.e()));
    a.c();
  }
}

/* Location:
 * Qualified Name:     bxw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */