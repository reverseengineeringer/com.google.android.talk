import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class ezd
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.release();
  }
}

/* Location:
 * Qualified Name:     ezd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */