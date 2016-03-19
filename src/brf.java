import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.VideoView;
import com.google.android.apps.hangouts.conversation.v2.PreviewImageActivity;

final class brf
  implements MediaPlayer.OnPreparedListener
{
  brf(bre parambre) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.setVolume(0.0F, 0.0F);
    paramMediaPlayer.setLooping(true);
    a.e.l.start();
  }
}

/* Location:
 * Qualified Name:     brf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */