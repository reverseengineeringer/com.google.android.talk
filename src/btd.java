import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.VideoView;

final class btd
  implements MediaPlayer.OnPreparedListener
{
  btd(btb parambtb, btg parambtg) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.setVolume(0.0F, 0.0F);
    paramMediaPlayer.setLooping(true);
    a.s.start();
  }
}

/* Location:
 * Qualified Name:     btd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */