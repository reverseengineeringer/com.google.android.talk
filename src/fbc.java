import android.widget.Toast;
import com.google.android.apps.hangouts.fragments.BlockedContactsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class fbc
{
  public fbc(BlockedContactsFragment paramBlockedContactsFragment) {}
  
  public void a(fbb paramfbb)
  {
    a.a();
    String str = paramfbb.b();
    if (str == null)
    {
      Toast.makeText(a.context, StressMode.iI, 0).show();
      return;
    }
    paramfbb = paramfbb.a();
    bfd localbfd = dvd.l();
    if ((!((eot)a.binder.a(eot.class)).a(a.a.g())) || (localbfd == null)) {
      localbfd = a.a;
    }
    int i = RealTimeChatService.a(a.d.a(), a, b, str, false, false);
    a.e.put(Integer.valueOf(i), new bye(paramfbb, str));
    a.b.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     fbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */