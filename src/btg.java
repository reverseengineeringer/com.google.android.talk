import android.content.Context;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.VideoView;
import com.google.android.apps.hangouts.conversation.v2.gallerypicker.impl.GalleryItemView;

final class btg
  extends aao
{
  bso p;
  GalleryItemView q;
  ImageView r;
  VideoView s;
  View t;
  View u;
  View v;
  TextView w;
  
  public btg(View paramView)
  {
    super(paramView);
    q = ((GalleryItemView)paramView.findViewById(aal.kG));
    r = ((ImageView)paramView.findViewById(aal.kB));
    r.setBackgroundColor(paramView.getResources().getColor(aen.hL));
    r.setAlpha(255);
    s = ((VideoView)paramView.findViewById(aal.kE));
    t = paramView.findViewById(aal.kD);
    t.setVisibility(0);
    u = paramView.findViewById(aal.kC);
    u.setVisibility(4);
    v = paramView.findViewById(aal.kF);
    v.setVisibility(4);
    w = ((TextView)paramView.findViewById(aal.kK));
  }
  
  public void a(Context paramContext)
  {
    w.setContentDescription(null);
    new bth(this, paramContext).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new bso[] { p });
  }
  
  public void b(boolean paramBoolean)
  {
    w.setVisibility(8);
    if (paramBoolean)
    {
      r.setVisibility(8);
      v.setVisibility(0);
      s.setVisibility(0);
      return;
    }
    r.setVisibility(0);
    v.setVisibility(8);
    s.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     btg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */