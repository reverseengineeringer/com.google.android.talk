import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.conversation.v2.gallerypicker.impl.GalleryItemView;
import java.util.ArrayList;
import java.util.List;

final class bte
  implements View.OnClickListener
{
  bte(btb parambtb, int paramInt) {}
  
  public void onClick(View paramView)
  {
    int j = 0;
    btb localbtb = b;
    paramView = (View)paramView.getParent();
    int k = a;
    Object localObject1 = (GalleryItemView)paramView.findViewById(aal.kG);
    Object localObject2 = (bso)e.get(k);
    int i;
    label150:
    Object localObject3;
    label179:
    boolean bool;
    label190:
    label224:
    blb localblb;
    if (!g)
    {
      if (localbtb.d() >= 10)
      {
        ((epc)ilh.a(c, epc.class)).a(new epb(c).a(c.getResources().getQuantityString(aal.kL, 10, new Object[] { Integer.valueOf(10) })).b());
        i = 1;
        if (i != 0) {
          return;
        }
        if (b != bsq.b) {
          break label310;
        }
        i = 1;
        localObject3 = a;
        if (i == 0) {
          break label315;
        }
        ((bvc)ilh.a(c, bvc.class)).b(k);
      }
    }
    else
    {
      if (g) {
        break label334;
      }
      bool = true;
      g = bool;
      ((GalleryItemView)localObject1).a(paramView, (bso)localObject2, true);
      localObject1 = new ArrayList();
      localObject2 = localbtb.c();
      i = j;
      if (i >= ((List)localObject2).size()) {
        break label347;
      }
      localObject3 = (bso)((List)localObject2).get(i);
      localblb = new blb();
      if (b != bsq.b) {
        break label340;
      }
    }
    label310:
    label315:
    label334:
    label340:
    for (paramView = bkr.b;; paramView = bkr.c)
    {
      c = paramView;
      b = a;
      ((List)localObject1).add(localblb);
      i += 1;
      break label224;
      i = 0;
      break;
      i = 0;
      break label150;
      hbw.a(new btf(localbtb, (String)localObject3, k));
      break label179;
      bool = false;
      break label190;
    }
    label347:
    localbtb.a((List)localObject2);
    d.a(c, (List)localObject1, new bps((List)localObject2));
  }
}

/* Location:
 * Qualified Name:     bte
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */