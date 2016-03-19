import com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import com.google.android.libraries.hangouts.video.internal.Renderer;

final class hgb
  implements Runnable
{
  hgb(hga paramhga, Renderer paramRenderer, hla paramhla) {}
  
  public void run()
  {
    hlk.a(3, "vclib", "%s: Switching from %s to %s", new Object[] { c.a.c(), c.a.e.getClass().getSimpleName(), a.getClass().getSimpleName() });
    c.a.e = a;
    if ((c.a.b != null) && ((a instanceof GlRemoteRenderer))) {
      c.a.b.a(c.a.d.b(), null);
    }
    c.a.a(b);
  }
}

/* Location:
 * Qualified Name:     hgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */