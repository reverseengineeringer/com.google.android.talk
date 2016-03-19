import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.Toast;
import com.google.android.apps.hangouts.hangout.HangoutActivity;
import com.google.android.apps.hangouts.hangout.HangoutFragment;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class cgl
  extends hku
{
  public cgl(HangoutFragment paramHangoutFragment)
  {
    super((byte)0);
  }
  
  private void a(au paramau)
  {
    a.an = true;
    a.ap = a.f.h();
    paramau.a(a.getFragmentManager(), null);
  }
  
  public void a(Intent paramIntent)
  {
    if (a.al != 2) {
      return;
    }
    paramIntent.setFlags(paramIntent.getFlags() & 0xEFFFFFFF);
    a.an = true;
    a.startActivityForResult(paramIntent, 0);
  }
  
  public void a(cey paramcey)
  {
    Object localObject1 = a.f.k();
    Object localObject2;
    int i;
    if (localObject1 != null)
    {
      localObject2 = aal.h();
      if (localObject2 != null)
      {
        i = ((bfd)localObject2).g();
        if (dvp.U.b(i))
        {
          if ((!((hjk)localObject1).g()) || (paramcey != cey.c)) {
            break label112;
          }
          a.a(false);
          Toast.makeText(a.getActivity(), StressMode.sG, 0).show();
          ((hjk)localObject1).a(false);
        }
      }
    }
    for (;;)
    {
      i = aal.a((Integer)cex.a.get(paramcey), -1);
      if (i != -1) {
        aal.c(i);
      }
      return;
      label112:
      if ((!((hjk)localObject1).g()) && (paramcey == cey.d))
      {
        localObject1 = (cmu)ilh.a(a.context, cmu.class);
        localObject2 = a.context;
        ((cmu)localObject1).a(new cmt().a(0).a(((Context)localObject2).getResources().getString(StressMode.sE)).a().b(((Context)localObject2).getResources().getString(StressMode.sF)).b(((Context)localObject2).getResources().getColor(aal.dj)).a(new cmx()).b());
      }
    }
  }
  
  public void a(cgw paramcgw)
  {
    int j = 0;
    int i = a.al;
    new StringBuilder(27).append("onHangoutEnded: ").append(i);
    if (a.al == 3) {}
    int k;
    cze localcze;
    do
    {
      return;
      k = paramcgw.O();
      if (ezi.a("Babel_calls", 3)) {
        ezi.a("Babel_calls", 50 + "HangoutFragment.onHangoutEnded: reason=" + k, new Object[0]);
      }
      localcze = (cze)a.binder.b(cze.class);
      i = j;
      if (!a.h)
      {
        i = j;
        if (localcze != null)
        {
          i = j;
          if (localcze.a(a.ak.g())) {
            i = 1;
          }
        }
      }
      if (HangoutFragment.b(k)) {
        break label264;
      }
      a.a(3);
      if (k != 1014) {
        break;
      }
    } while ((a.getActivity().C_().a("out_of_balance_dialog_fragment_tag") instanceof cig));
    new cig().a(a.getFragmentManager(), "out_of_balance_dialog_fragment_tag");
    return;
    if (k == 19)
    {
      a(new cif());
      return;
    }
    a.a(paramcgw.P(), k);
    for (;;)
    {
      cfx.a(a.d, a.e);
      return;
      label264:
      if (i != 0)
      {
        a.a(3);
        a(localcze.b(a.ak.g()));
        return;
      }
      a.d.n();
    }
  }
  
  public void a(hke paramhke, Set<hkd> paramSet)
  {
    a.v();
    a.a(paramhke, paramSet);
  }
  
  public void a(hkw paramhkw)
  {
    a.e = a.f.r().e();
    int i = ((hpu)a.binder.a(hpu.class)).a();
    ((con)a.binder.a(con.class)).a(i, coo.a);
    a.d.y_();
  }
  
  public void a(hkx paramhkx)
  {
    if (paramhkx.g()) {
      a.b();
    }
  }
  
  public void a(hky paramhky)
  {
    int j;
    switch (cgk.a[paramhky.a().ordinal()])
    {
    default: 
      paramhky = String.valueOf(paramhky.a());
      ezi.e("Babel_calls", String.valueOf(paramhky).length() + 39 + "Error: invalid quality event reported: " + paramhky, new Object[0]);
      return;
    case 1: 
      j = 2477;
      paramhky = aal.h();
      hjk localhjk = a.f.k();
      i = j;
      if (!a.aq)
      {
        i = j;
        if (localhjk != null)
        {
          i = j;
          if (paramhky != null)
          {
            int k = paramhky.g();
            i = j;
            if (dvp.B.b(k))
            {
              a.aq = true;
              a.a(false);
              Toast.makeText(a.getActivity(), StressMode.sH, 1).show();
              localhjk.a(false);
            }
          }
        }
      }
      break;
    }
    for (int i = j;; i = 2478)
    {
      aal.c(i);
      return;
    }
  }
  
  public void a(String paramString)
  {
    if (a.al == 2) {
      a.e = a.f.r().e();
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (!paramBoolean) {
      a.r();
    }
  }
  
  public void b(int paramInt)
  {
    a.v();
    if ((paramInt & 0x1) == 0) {
      a.a(null, false);
    }
  }
  
  public void b(hkx paramhkx)
  {
    if (paramhkx.g()) {
      a.b();
    }
  }
  
  public void c(hkx paramhkx)
  {
    if (paramhkx.g()) {
      a.b();
    }
  }
  
  public boolean c(int paramInt)
  {
    return paramInt == 7;
  }
  
  public void e()
  {
    int i = a.al;
    new StringBuilder(29).append("onHangoutExiting: ").append(i);
    int j;
    if (a.al != 3)
    {
      j = a.f.r().O();
      cze localcze = (cze)a.binder.b(cze.class);
      if ((localcze == null) || (!localcze.a(a.ak.g()))) {
        break label116;
      }
    }
    label116:
    for (i = 1;; i = 0)
    {
      if ((HangoutFragment.b(j)) && (i == 0)) {
        a.d.n();
      }
      return;
    }
  }
  
  public void f()
  {
    Intent localIntent = a.d.getIntent();
    if (!localIntent.hasExtra("recent_call_timestamp")) {}
    do
    {
      List localList;
      do
      {
        return;
        localObject = a.f.r();
        hbs.b("Expected non-null", localObject);
        localList = ((cgw)localObject).F();
      } while ((((cgw)localObject).J() != 1) || (localList.size() != 1));
      localObject = ((cgw)localObject).T();
    } while (((List)localObject).size() != 1);
    Object localObject = ((chb)((List)localObject).get(0)).b();
    RealTimeChatService.a(a.ak.g(), localIntent.getLongExtra("recent_call_timestamp", 0L), (String)localObject, TextUtils.isEmpty((CharSequence)localObject));
  }
  
  public void g()
  {
    a.b(false);
  }
}

/* Location:
 * Qualified Name:     cgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */