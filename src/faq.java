import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.views.AudioAttachmentView;

public final class faq
  implements View.OnClickListener
{
  public faq(AudioAttachmentView paramAudioAttachmentView) {}
  
  public void onClick(View paramView)
  {
    if (a.d != null)
    {
      int i = a.d.b();
      if ((i == 0) || (i == 1))
      {
        ezi.d("Babel", "speakerphoneButton.onClick: button should be hidden, but isn't.", new Object[0]);
        return;
      }
      a.d.d();
      a.e();
      return;
    }
    ezi.d("Babel", "speakerphoneButton.onClick: audioPlaybackController is null", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     faq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */