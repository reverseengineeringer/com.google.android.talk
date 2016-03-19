import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import com.google.android.apps.hangouts.hangout.ParticipantTrayView;

public final class cis
  extends GestureDetector.SimpleOnGestureListener
{
  public cis(ParticipantTrayView paramParticipantTrayView) {}
  
  public boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if ((Math.abs(paramMotionEvent1.getY() - paramMotionEvent2.getY()) > Math.abs(paramMotionEvent1.getX() - paramMotionEvent2.getX())) && (paramFloat2 > 0.0F) && (a.b.c() == 2))
    {
      ezi.a("Babel_calls", "Flinging the participant tray view down", new Object[0]);
      aal.c(2957);
      a.a(false);
      a.c = true;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     cis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */