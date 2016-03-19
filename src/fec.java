import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.apps.hangouts.views.OverlayedAvatarView;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;

public final class fec
  extends Handler
{
  private final WeakReference<ParticipantsGalleryView> a;
  
  public fec(ParticipantsGalleryView paramParticipantsGalleryView)
  {
    super(Looper.getMainLooper());
    a = new WeakReference(paramParticipantsGalleryView);
  }
  
  public void handleMessage(Message paramMessage)
  {
    if (what != 0) {}
    ParticipantsGalleryView localParticipantsGalleryView;
    do
    {
      return;
      localParticipantsGalleryView = (ParticipantsGalleryView)a.get();
    } while (localParticipantsGalleryView == null);
    i = false;
    fdz localfdz = new fdz(localParticipantsGalleryView, h.size());
    label52:
    Object localObject1;
    label115:
    Object localObject2;
    int j;
    boolean bool;
    if (h.size() > 0)
    {
      paramMessage = (fef)h.poll();
      i = true;
      if ((paramMessage instanceof fed))
      {
        localObject1 = (fed)paramMessage;
        if (ParticipantsGalleryView.a)
        {
          if (c)
          {
            paramMessage = "set";
            localObject2 = String.valueOf(OverlayedAvatarView.a(b));
            String str = String.valueOf(a.b);
            new StringBuilder(String.valueOf(paramMessage).length() + 50 + String.valueOf(localObject2).length() + String.valueOf(str).length()).append("[PartGallery] change participant state  ").append(paramMessage).append(" ").append((String)localObject2).append(" bit for ").append(str);
          }
        }
        else
        {
          if (!c) {
            break label601;
          }
          localObject2 = a;
          j = b;
          bool = d;
          paramMessage = localParticipantsGalleryView.c((cyx)localObject2);
          if (paramMessage != null) {
            break label1195;
          }
          paramMessage = localParticipantsGalleryView.b((cyx)localObject2);
        }
      }
    }
    label601:
    label1180:
    label1189:
    label1195:
    for (int i = 1;; i = 0)
    {
      int k = paramMessage.b();
      int m = paramMessage.d(j);
      int n = OverlayedAvatarView.b(m);
      int i1 = OverlayedAvatarView.b(k);
      if (localParticipantsGalleryView.d((cyx)localObject2))
      {
        paramMessage.f(m);
        if (!ParticipantsGalleryView.a) {
          break label1189;
        }
        localParticipantsGalleryView.a(null, paramMessage, 47 + "SetState (COALESCED) " + k + " -> " + m);
        bool = false;
      }
      for (;;)
      {
        localfdz.a(bool);
        if (j != 2) {
          break label52;
        }
        if (ParticipantsGalleryView.a)
        {
          paramMessage = String.valueOf(b);
          new StringBuilder(String.valueOf(paramMessage).length() + 25).append("Focus state set for user ").append(paramMessage);
        }
        if (b == null) {
          break label52;
        }
        b.a();
        break label52;
        paramMessage = "unset";
        break label115;
        if (n == i1)
        {
          paramMessage.e(m);
          if (ParticipantsGalleryView.a) {
            localParticipantsGalleryView.a(null, paramMessage, 43 + "SetState (HI EQ) " + k + " -> " + m);
          }
          bool = false;
        }
        else if ((n == 4) && (i1 == 2))
        {
          paramMessage.e(m);
          if (ParticipantsGalleryView.a) {
            localParticipantsGalleryView.a(null, paramMessage, 42 + "SetState (F->T) " + k + " -> " + m);
          }
          bool = true;
        }
        else
        {
          if (i != 0) {
            localParticipantsGalleryView.a((cyx)localObject2, paramMessage, m, bool);
          }
          for (;;)
          {
            bool = true;
            break;
            localParticipantsGalleryView.a(localfdz, (cyx)localObject2, paramMessage, k, m);
          }
          paramMessage = a;
          i = b;
          bool = d;
          localObject1 = localParticipantsGalleryView.c(paramMessage);
          int i2;
          if (localObject1 != null)
          {
            j = ((OverlayedAvatarView)localObject1).b();
            k = ((OverlayedAvatarView)localObject1).c(i);
            m = OverlayedAvatarView.b(k);
            n = OverlayedAvatarView.b(j);
            if (localParticipantsGalleryView.d(paramMessage))
            {
              ((OverlayedAvatarView)localObject1).f(k);
              if (!ParticipantsGalleryView.a) {
                break label1180;
              }
              localParticipantsGalleryView.a(null, (OverlayedAvatarView)localObject1, 49 + "UnsetState (COALESCED) " + j + " -> " + k);
              bool = false;
              i2 = 1;
            }
          }
          for (;;)
          {
            if (i2 != 0) {
              localfdz.a(bool);
            }
            if ((localObject1 == null) || (i != 2)) {
              break label52;
            }
            if (ParticipantsGalleryView.a)
            {
              paramMessage = String.valueOf(b);
              new StringBuilder(String.valueOf(paramMessage).length() + 27).append("Focus state unset for user ").append(paramMessage);
            }
            if (b == null) {
              break label52;
            }
            b.a();
            break label52;
            if (m == n)
            {
              ((OverlayedAvatarView)localObject1).e(k);
              if (ParticipantsGalleryView.a) {
                localParticipantsGalleryView.a(null, (OverlayedAvatarView)localObject1, 45 + "UnsetState (HI EQ) " + j + " -> " + k);
              }
              bool = false;
              i2 = 1;
            }
            else if ((m == 2) && (n == 4))
            {
              ((OverlayedAvatarView)localObject1).e(k);
              if (ParticipantsGalleryView.a) {
                localParticipantsGalleryView.a(null, (OverlayedAvatarView)localObject1, 44 + "UnsetState (T->F) " + j + " -> " + k);
              }
              bool = true;
              i2 = 1;
            }
            else
            {
              if (k == 0) {}
              for (bool = localParticipantsGalleryView.b(paramMessage, j, bool);; bool = localParticipantsGalleryView.a(localfdz, paramMessage, (OverlayedAvatarView)localObject1, j, k))
              {
                i2 = bool;
                bool = true;
                break;
              }
              if (!(paramMessage instanceof fea)) {
                break label52;
              }
              localObject1 = (fea)paramMessage;
              if (ParticipantsGalleryView.a)
              {
                if (c) {}
                for (paramMessage = "set";; paramMessage = "unset")
                {
                  new StringBuilder(String.valueOf(paramMessage).length() + 71).append("[PartGallery] batch change participant state  ").append(paramMessage).append(" watermark bit for users:");
                  paramMessage = a.iterator();
                  while (paramMessage.hasNext())
                  {
                    localObject2 = String.valueOf(nextb);
                    new StringBuilder(String.valueOf(localObject2).length() + 2).append("  ").append((String)localObject2);
                  }
                }
              }
              if (c)
              {
                localParticipantsGalleryView.b(localfdz, a, b);
                break label52;
              }
              localParticipantsGalleryView.a(localfdz, a, b);
              break label52;
              break;
              bool = false;
              i2 = 1;
            }
          }
          bool = false;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     fec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */