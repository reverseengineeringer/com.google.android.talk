import android.view.View;
import android.view.View.OnLongClickListener;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;
import com.google.android.apps.hangouts.hangout.RemoteParticipantPopupMenu;

final class cix
  implements View.OnLongClickListener
{
  cix(ciu paramciu) {}
  
  public boolean onLongClick(View paramView)
  {
    a.e.a(a);
    paramView = a;
    if (!a.g())
    {
      e.f();
      j.setVisibility(0);
      RemoteParticipantPopupMenu localRemoteParticipantPopupMenu = j;
      paramView.getContext();
      localRemoteParticipantPopupMenu.a(c, a, b.r());
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     cix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */