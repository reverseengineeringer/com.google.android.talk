import com.google.android.libraries.hangouts.video.internal.GlRemoteRenderer;
import com.google.android.libraries.hangouts.video.internal.MediaCodecDecoder;
import com.google.android.libraries.hangouts.video.internal.Renderer;

final class hga
  implements Runnable
{
  hga(hfu paramhfu) {}
  
  public void run()
  {
    int i;
    if ((a.b != null) && (a.b.g() != -1))
    {
      i = 1;
      if ((!(a.e instanceof GlRemoteRenderer)) || (i == 0)) {
        break label115;
      }
    }
    for (Object localObject = a.c;; localObject = a.d)
    {
      if (a.p == null) {
        break label143;
      }
      hlk.a(3, "vclib", "%s: Need to unbind from current surface.", new Object[] { a.c() });
      hla localhla = a.p;
      a.a(localhla, new hgb(this, (Renderer)localObject, localhla));
      label115:
      do
      {
        return;
        i = 0;
        break;
      } while ((!(a.e instanceof hff)) || (i != 0));
    }
    label143:
    hlk.a(3, "vclib", "%s: Switching from %s to %s", new Object[] { a.c(), a.e.getClass().getSimpleName(), localObject.getClass().getSimpleName() });
    a.e = ((Renderer)localObject);
  }
}

/* Location:
 * Qualified Name:     hga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */