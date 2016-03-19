import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;

final class feo
  implements View.OnClickListener
{
  feo(fen paramfen, av paramav) {}
  
  public void onClick(View paramView)
  {
    if (TextUtils.isEmpty(b.c))
    {
      if (ezi.a("Babel", 3)) {
        ezi.b("Babel", "VideoAttachmentHandler could not load video", new Object[0]);
      }
      b.g();
    }
    if (!TextUtils.isEmpty(b.c)) {
      if (ezi.a("Babel", 3))
      {
        paramView = String.valueOf(b.c);
        if (paramView.length() == 0) {
          break label117;
        }
      }
    }
    label117:
    for (paramView = "VideoAttachmentHandler loaded urlString: ".concat(paramView);; paramView = new String("VideoAttachmentHandler loaded urlString: "))
    {
      ezi.b("Babel", paramView, new Object[0]);
      a.startActivity(aal.b(b.c, "video/mp4"));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     feo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */