import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.views.AudioAttachmentView;

public final class fap
  implements View.OnClickListener
{
  public fap(AudioAttachmentView paramAudioAttachmentView) {}
  
  public void onClick(View paramView)
  {
    if (a.d != null)
    {
      switch (a.d.b())
      {
      default: 
        return;
      case 0: 
      case 1: 
      case 5: 
        a.d.k();
        return;
      }
      a.d.l();
      return;
    }
    ezi.d("Babel", "playPauseButtonClicked: audioPlaybackController is null", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     fap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */