import android.text.Html;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Iterator;
import java.util.List;

final class boq
  implements bjd
{
  boq(bng parambng) {}
  
  public void a()
  {
    a.ap();
  }
  
  public void a(bjb parambjb)
  {
    a.i.a(parambjb);
    a.bv.a(parambjb);
    a.ap();
    if (a == null)
    {
      bng localbng = a;
      hbs.a("Expected null", a);
      parambjb = i.a();
      Object localObject = dtw.a(e);
      ((dtw)localObject).a(dtt.b(e));
      localObject = axt.newBuilder().a((dtw)localObject);
      localObject = ihb.newBuilder().a(((axu)localObject).a()).a();
      ebi localebi = ebi.b();
      e = localebi.a();
      RealTimeChatService.a(localebi, new dwb(context).a(at.g()).a((ihb)localObject).a(bfw.c).b(b).a());
    }
    a.w();
    a.getActivity().invalidateOptionsMenu();
    aal.a(a.at, 2262);
  }
  
  public void a(List<bjb> paramList, bjb parambjb)
  {
    int j = 0;
    Object localObject1 = String.valueOf(a);
    Object localObject2 = String.valueOf(a.getLoaderManager());
    ezi.c("Babel", String.valueOf(localObject1).length() + 37 + String.valueOf(localObject2).length() + "Finished variant engine for " + (String)localObject1 + " loader: " + (String)localObject2, new Object[0]);
    a.i.a(parambjb);
    a.J();
    a.L();
    a.ah();
    a.aq();
    parambjb = (bhx)a.bA;
    boolean bool;
    if ((a.ao()) || (aal.f(a.d())))
    {
      bool = true;
      parambjb.a(bool);
      if ((a.aP == null) && (paramList.size() > 1) && (!aal.a(djd.a)))
      {
        parambjb = paramList.iterator();
        do
        {
          i = j;
          if (!parambjb.hasNext()) {
            break;
          }
          localObject1 = (bjb)parambjb.next();
        } while ((h == null) || (TextUtils.isEmpty(h.b())));
        i = 1;
        if (i != 0)
        {
          parambjb = (ViewGroup)a.getView().findViewById(aen.dT);
          a.aP = LayoutInflater.from(a.getActivity()).inflate(aal.gO, parambjb).findViewById(aen.gX);
          parambjb = (TextView)a.aP.findViewById(aen.gY);
          if (parambjb != null)
          {
            parambjb.setText(Html.fromHtml(a.getString(StressMode.rN)));
            parambjb.setMovementMethod(LinkMovementMethod.getInstance());
          }
          a.aP.setOnTouchListener(new bor(this));
        }
      }
      parambjb = a.getActivity();
      if (parambjb != null) {
        parambjb.y_();
      }
      localObject1 = a.i.a();
      if (a == null)
      {
        localObject2 = a;
        hbs.a("Expected null", a);
        bjb localbjb = i.a();
        Object localObject3 = dtw.a(e);
        ((dtw)localObject3).a(dtt.b(e));
        localObject3 = axt.newBuilder().a((dtw)localObject3);
        localObject3 = ihb.newBuilder().a(((axu)localObject3).a()).a();
        ebi localebi = ebi.b();
        e = localebi.a();
        RealTimeChatService.a(localebi, new dwb(context).a(at.g()).a((ihb)localObject3).a(bfw.c).b(b).a());
      }
      a.bv.a((bjb)localObject1);
      if (!a.aG)
      {
        a.aG = true;
        a.lifecycle.a(new bpc(a));
        a.lifecycle.a(a.aB);
        a.lifecycle.a(a.bs);
        localObject1 = (bjf)a.binder.a(bjf.class);
        localObject2 = a.lifecycle;
        localObject1.getClass();
        ((inz)localObject2).a(new bjh((bjf)localObject1, parambjb, a.at.g(), a.an()));
      }
      parambjb = a.at;
      if (paramList.size() <= 1) {
        break label732;
      }
    }
    label732:
    for (int i = 2260;; i = 2261)
    {
      aal.a(parambjb, i);
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     boq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */