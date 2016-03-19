import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.util.Collection;
import java.util.Iterator;

final class bpc
  implements ios, iov, ioz
{
  bpc(bng parambng) {}
  
  public void X_()
  {
    a.aY = true;
    a.aZ = 3;
    a.aN.b();
    a.Z();
    if (!a.ao())
    {
      a.ab();
      a.ac();
    }
    a.c = new bpd(this);
    a.aS.post(a.c);
    if (a.aX != null) {
      a.a(a.aX, a.at);
    }
    a.aw();
  }
  
  public void a()
  {
    if (a.i.a().a == null) {}
    for (;;)
    {
      return;
      a.aS.removeCallbacks(a.c);
      a.c = null;
      a.aS.removeCallbacks(a.by);
      a.aY = false;
      ??? = a;
      Object localObject2 = i.g().b().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        cyx localcyx = (cyx)((Iterator)localObject2).next();
        aQ.a(localcyx);
      }
      a.aD = null;
      if (RealTimeChatService.a)
      {
        ??? = String.valueOf(RealTimeChatService.e);
        localObject2 = RealTimeChatService.d;
        new StringBuilder(String.valueOf(???).length() + 39 + String.valueOf(localObject2).length()).append("unsetFocusedConversation from ").append((String)???).append(" account:").append((String)localObject2);
      }
      synchronized (RealTimeChatService.c)
      {
        RealTimeChatService.d = null;
        RealTimeChatService.e = null;
        a.ad();
        if (a.R() != null) {
          continue;
        }
        a.a(a.ai());
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */