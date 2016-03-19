import android.view.Surface;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import com.google.android.libraries.hangouts.video.internal.Renderer;
import com.google.android.libraries.hangouts.video.internal.RendererManager;

public final class hff
  extends Renderer
{
  private final MediaCodecDecoder a;
  
  public hff(RendererManager paramRendererManager, MediaCodecDecoder paramMediaCodecDecoder)
  {
    mRendererManager = paramRendererManager;
    mRendererID = mRendererManager.a(3);
    a = paramMediaCodecDecoder;
    RendererManager.a(this);
  }
  
  public void a()
  {
    mRendererManager.notifyFrameRendered(mRendererID);
  }
  
  public void a(Surface paramSurface, Runnable paramRunnable)
  {
    a.a(paramSurface, paramRunnable);
  }
  
  public void b()
  {
    int i = mRendererID;
    RendererManager.b(this);
    mRendererID = -1;
    mRendererManager.releaseRenderer(i);
  }
}

/* Location:
 * Qualified Name:     hff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */