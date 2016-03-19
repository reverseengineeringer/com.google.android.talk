import android.util.SparseArray;
import com.google.android.apps.hangouts.fragments.HiddenContactsFragment;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class fcq
{
  public fcq(HiddenContactsFragment paramHiddenContactsFragment) {}
  
  public void a(fcp paramfcp)
  {
    String str = paramfcp.b();
    paramfcp = aa;
    if (!aal.a(a.e, paramfcp))
    {
      a.a();
      int i = RealTimeChatService.a(a.a.a(), paramfcp);
      a.d.append(i, str);
      a.e.append(i, paramfcp);
    }
    a.b.notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     fcq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */