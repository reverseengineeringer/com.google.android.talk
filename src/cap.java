import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.apps.hangouts.fragments.ConversationParticipantsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class cap
  implements View.OnClickListener
{
  public cap(ConversationParticipantsFragment paramConversationParticipantsFragment) {}
  
  public void onClick(View paramView)
  {
    String str = null;
    int i = aal.a((Integer)paramView.getTag(), 0);
    paramView = a.getActivity();
    switch (i)
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
      Object localObject1;
      do
      {
        return;
        paramView = a;
        localObject1 = paramView.getFragmentManager().a();
        str = d;
        localObject2 = new cde();
        Bundle localBundle = new Bundle();
        localBundle.putString("name", str);
        ((cde)localObject2).setArguments(localBundle);
        ((cde)localObject2).setTargetFragment(paramView, 0);
        ((cde)localObject2).a((bz)localObject1, null);
        return;
        a.a();
        return;
        if ((!a.g) || (a.f == null)) {
          break label365;
        }
        RealTimeChatService.a(a.a.a(), a.f.b.a, a.f.b.b, a.f.e, false, true);
        Toast.makeText(paramView, paramView.getString(StressMode.iM, new Object[] { a.f.e }), 0).show();
        a.g = false;
        if (a.e == null) {
          break;
        }
        localObject1 = gw.a();
        a.e.a = paramView.getString(StressMode.ar, new Object[] { ((gw)localObject1).a(a.f.e, hh.e) });
      } while (a.e.g == null);
      ((TextView)a.e.g.findViewById(aen.gM)).setText(a.e.a);
      return;
      ezi.e("Babel", "no participants found when trying to unblock", new Object[0]);
      return;
      Object localObject2 = a;
      if (f != null)
      {
        localObject1 = ezc.d(f.e);
        paramView = str;
        if (c == 1)
        {
          if (!h) {
            break label495;
          }
          paramView = ((ConversationParticipantsFragment)localObject2).getString(StressMode.hK);
        }
      }
      for (;;)
      {
        paramView = ikt.a(((ConversationParticipantsFragment)localObject2).getString(StressMode.hO, new Object[] { localObject1 }), paramView, ((ConversationParticipantsFragment)localObject2).getString(StressMode.hM), ((ConversationParticipantsFragment)localObject2).getString(StressMode.U), aal.hS);
        paramView.setTargetFragment((av)localObject2, 0);
        paramView.a(((ConversationParticipantsFragment)localObject2).getFragmentManager(), "block_user");
        aal.a(b, 1818);
        return;
        localObject1 = null;
        break;
        if (i) {
          paramView = ((ConversationParticipantsFragment)localObject2).getString(StressMode.hL);
        } else {
          paramView = ((ConversationParticipantsFragment)localObject2).getString(StressMode.hN);
        }
      }
    case 4: 
      label365:
      label495:
      ConversationParticipantsFragment.a(a, paramView.getString(StressMode.eH), a.b(), a.c(), 103, 2);
      return;
    }
    ConversationParticipantsFragment.a(a, paramView.getString(StressMode.eE), a.e(), a.d(), 102, 1);
  }
}

/* Location:
 * Qualified Name:     cap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */