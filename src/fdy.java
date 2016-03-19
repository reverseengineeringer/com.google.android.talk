import com.google.android.apps.hangouts.views.OverlayedAvatarView;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;

public final class fdy
  implements Runnable
{
  public fdy(ParticipantsGalleryView paramParticipantsGalleryView, OverlayedAvatarView paramOverlayedAvatarView, cyx paramcyx, fdz paramfdz, int paramInt1, int paramInt2) {}
  
  public void run()
  {
    int i = a.c();
    a.f(0);
    if (i != 0)
    {
      a.e(i);
      f.a(a, f.b(i), i, b.e, b.h);
    }
    for (;;)
    {
      f.e(b);
      c.a(true);
      if (ParticipantsGalleryView.a)
      {
        ??? = f;
        OverlayedAvatarView localOverlayedAvatarView = a;
        int j = d;
        int k = e;
        ((ParticipantsGalleryView)???).a(null, localOverlayedAvatarView, 57 + "Move (end) " + j + " -> " + k + "(actual " + i + ")");
      }
      return;
      synchronized (f.e)
      {
        f.e.remove(b.b);
        f.a();
      }
    }
  }
}

/* Location:
 * Qualified Name:     fdy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */