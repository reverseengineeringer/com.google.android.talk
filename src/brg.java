import android.os.Build.VERSION;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import android.support.rastermill.FrameSequenceDrawable.OnFinishedListener;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;

final class brg
  implements bhv
{
  private final FrameSequenceDrawable.OnFinishedListener a;
  private final bfd b;
  private final ImageView c;
  private bhs d;
  
  public brg(FrameSequenceDrawable.OnFinishedListener paramOnFinishedListener, bfd parambfd, ImageView paramImageView)
  {
    a = paramOnFinishedListener;
    b = parambfd;
    c = paramImageView;
  }
  
  public void a()
  {
    if (d != null) {
      d.b();
    }
  }
  
  public void a(bhs parambhs)
  {
    d = parambhs;
  }
  
  public void a(eys parameys, exs paramexs, boolean paramBoolean1, bhs parambhs, boolean paramBoolean2)
  {
    if (parameys != null)
    {
      ezi.e("Babel", "Unexpected refCountedBitmap returned on a STICKER_REQUEST", new Object[0]);
      parameys.b();
    }
    if (parambhs != d) {}
    do
    {
      return;
      d = null;
    } while ((!paramBoolean1) || (paramexs == null));
    if ((parambhs.l() instanceof Integer)) {}
    for (int i = aal.a((Integer)parambhs.l(), 0);; i = 1)
    {
      parameys = (RelativeLayout.LayoutParams)c.getLayoutParams();
      if (Build.VERSION.SDK_INT >= 17)
      {
        parameys.removeRule(9);
        parameys.removeRule(11);
        parameys.removeRule(14);
        switch (i)
        {
        default: 
          parameys.addRule(11, -1);
        }
      }
      for (;;)
      {
        c.setLayoutParams(parameys);
        c.setVisibility(0);
        parameys = new FrameSequenceDrawable(FrameSequence.decodeByteArray(paramexs.c()));
        parameys.setOnFinishedListener(a);
        c.setImageDrawable(parameys);
        parameys.start();
        aal.a(b, 2019);
        return;
        parameys.addRule(9, 0);
        parameys.addRule(11, 0);
        parameys.addRule(14, 0);
        break;
        parameys.addRule(9, -1);
        continue;
        parameys.addRule(14, -1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     brg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */