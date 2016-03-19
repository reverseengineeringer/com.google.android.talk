import android.content.Context;
import android.text.TextUtils;

public final class ede
  extends dyx
{
  public ede(bfd parambfd)
  {
    super(parambfd);
  }
  
  public void p_()
  {
    long l = exa.a();
    String str = dwt.a().e();
    if (TextUtils.isEmpty(str))
    {
      ezi.d("Babel", "Unregister account with invalid gcm registration id", new Object[0]);
      return;
    }
    a(new dpj(2, l, str, false, aal.oJ.getPackageName(), null, true, 0, false, false, false, 0, 0, false, null));
  }
}

/* Location:
 * Qualified Name:     ede
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */