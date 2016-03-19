import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import java.util.ArrayList;
import java.util.List;

final class bui
  implements AdapterView.OnItemClickListener
{
  bui(buh parambuh) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramLong = 0L;
    paramView = a;
    ezi.a("Babel_Stickers", 23 + "sticker pos=" + paramInt, new Object[0]);
    bul localbul = (bul)((bum)c.getAdapter()).getItem(paramInt);
    paramView.a(a, "Recent".equals(d));
    Object localObject1;
    Object localObject2;
    if (c != null)
    {
      paramAdapterView = String.valueOf(c);
      if (paramAdapterView.length() != 0)
      {
        paramAdapterView = "file://".concat(paramAdapterView);
        localObject1 = new Intent();
        ((Intent)localObject1).putExtra("album_id", d);
        ((Intent)localObject1).putExtra("photo_url", paramAdapterView);
        localObject2 = a;
        if (localObject2 != null) {
          break label300;
        }
      }
    }
    for (;;)
    {
      ((Intent)localObject1).putExtra("picasa_photo_id", paramLong);
      localObject1 = (bmw)binder.a(bmw.class);
      localObject2 = new ArrayList();
      blj localblj = new blj();
      c = bkr.d;
      f = d;
      e = a;
      b = paramAdapterView;
      a = paramAdapterView;
      d = eye.b(context.getContentResolver(), Uri.parse(paramAdapterView));
      ((List)localObject2).add(localblj);
      ((bmw)localObject1).a((List)localObject2);
      binder.a(bub.class);
      return;
      paramAdapterView = new String("file://");
      break;
      paramAdapterView = b;
      break;
      label300:
      paramLong = aal.a(Long.valueOf((String)localObject2), 0L);
    }
  }
}

/* Location:
 * Qualified Name:     bui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */