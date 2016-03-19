import android.os.Handler;
import com.google.android.apps.hangouts.views.ParticipantsGalleryView;

public final class fdz
{
  private int a = 0;
  private boolean b = false;
  private final ParticipantsGalleryView c;
  
  public fdz(ParticipantsGalleryView paramParticipantsGalleryView, int paramInt)
  {
    c = paramParticipantsGalleryView;
    a = paramInt;
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool1 = true;
    if (paramBoolean) {
      b = true;
    }
    int i = a - 1;
    a = i;
    Object localObject;
    if (i == 0)
    {
      boolean bool2 = b;
      localObject = c;
      if (d != 0) {
        break label121;
      }
      paramBoolean = bool1;
      if (paramBoolean != f)
      {
        f = paramBoolean;
        if (b != null) {
          b.a(f);
        }
      }
      localObject = c.g;
      if (!bool2) {
        break label126;
      }
    }
    label121:
    label126:
    for (long l = c.c;; l = 0L)
    {
      ((Handler)localObject).sendEmptyMessageDelayed(0, l);
      return;
      paramBoolean = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     fdz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */