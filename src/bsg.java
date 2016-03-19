import android.content.ContentResolver;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;
import java.util.List;

final class bsg
  implements hsb
{
  bsg(bse parambse) {}
  
  public void onActivityResult(int paramInt, Intent paramIntent)
  {
    int j = 1;
    if ((paramInt == -1) && (paramIntent != null))
    {
      blb localblb = (blb)paramIntent.getParcelableExtra("result_media_attachment");
      Object localObject = (bmw)ilh.a(a.context, bmw.class);
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(localblb);
      ((bmw)localObject).a(localArrayList);
      paramIntent = bmo.b(Uri.parse(paramIntent.getStringExtra("photo_url")));
      localObject = a.context.getContentResolver();
      if (aal.a(a.context, "babel_save_camera_images_to_hangouts", true)) {
        bmo.a((ContentResolver)localObject, paramIntent, c);
      }
      int i;
      if (c == bkr.c)
      {
        paramInt = 1;
        paramIntent = (bvc)a.binder.a(bvc.class);
        if (paramInt == 0) {
          break label187;
        }
        i = 0;
        label157:
        if (paramInt == 0) {
          break label192;
        }
      }
      label187:
      label192:
      for (paramInt = j;; paramInt = 0)
      {
        paramIntent.a(2339, i, paramInt, Integer.valueOf(h));
        return;
        paramInt = 0;
        break;
        i = 1;
        break label157;
      }
    }
    ((bvc)a.binder.a(bvc.class)).a(2340);
  }
}

/* Location:
 * Qualified Name:     bsg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */