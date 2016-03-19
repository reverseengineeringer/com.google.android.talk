import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.peoplelistv2.impl.EditParticipantsView;
import com.google.android.apps.hangouts.peoplelistv2.impl.ScrollViewCustom;
import java.util.concurrent.TimeUnit;

public final class dad
  extends cat
{
  hpu a;
  String aj;
  dhm ak;
  int al;
  int am;
  private dbh an;
  private ViewGroup ao;
  private ImageView ap;
  private axs aq = new dah(this);
  private View.OnClickListener ar = new daj(this);
  private final bjq as = new dae(this);
  private final fck at = new daf(this);
  cau b;
  axq c;
  ViewGroup d;
  eap e = new dai(this);
  bjp f;
  ObjectAnimator g;
  ObjectAnimator h;
  bkw i;
  
  public static cat a(bkw parambkw, String paramString, dhm paramdhm, ihb paramihb)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("EditParticipantsFragmentImpl.conversation_type", parambkw);
    localBundle.putString("EditParticipantsFragmentImpl.conversation_id", paramString);
    localBundle.putSerializable("EditParticipantsFragmentImpl.mode", paramdhm);
    localBundle.putSerializable("EditParticipantsFragmentImpl.audience", paramihb);
    parambkw = new dad();
    parambkw.setArguments(localBundle);
    return parambkw;
  }
  
  private boolean c()
  {
    boolean bool = false;
    bfd localbfd = dvd.e(a.a());
    eot localeot = (eot)ilh.a(context, eot.class);
    int j;
    if ((localeot.p()) && (!aal.h(localbfd.L())))
    {
      j = 1;
      if ((aal.e(localbfd.L())) || (!localeot.q())) {
        break label109;
      }
      k = localbfd.g();
      if (!dvp.C.b(k)) {
        break label109;
      }
    }
    label109:
    for (int k = 1;; k = 0)
    {
      if ((j != 0) || (k != 0)) {
        bool = true;
      }
      return bool;
      j = 0;
      break;
    }
  }
  
  public void a(cau paramcau)
  {
    b = paramcau;
    if (an != null)
    {
      an.a(c);
      an.b(b());
    }
  }
  
  boolean a()
  {
    return (int)d.getTranslationX() == 0;
  }
  
  boolean b()
  {
    if (ak == dhm.h) {}
    while ((i == bkw.b) && (!c())) {
      return false;
    }
    return true;
  }
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    setHasOptionsMenu(true);
    binder.a(fck.class, at);
    if (Build.VERSION.SDK_INT >= 21) {
      paramActivity.getWindow().setStatusBarColor(getResources().getColor(aal.oe));
    }
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    binder.a(bjq.class, as);
    a = ((hpu)binder.a(hpu.class));
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ((ScrollViewCustom)((cdu)getActivity()).l().findViewById(StressMode.tM)).a(getResources().getDimensionPixelSize(aal.ok));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    i = ((bkw)paramBundle.getSerializable("EditParticipantsFragmentImpl.conversation_type"));
    aj = paramBundle.getString("EditParticipantsFragmentImpl.conversation_id");
    ak = ((dhm)paramBundle.getSerializable("EditParticipantsFragmentImpl.mode"));
    paramBundle = (ihb)paramBundle.getSerializable("EditParticipantsFragmentImpl.audience");
    if ((ak == dhm.c) || (ak == dhm.d) || (ak == dhm.e) || (ak == dhm.f)) {}
    for (boolean bool = true;; bool = false)
    {
      c = new axq(paramBundle, bool);
      c.a(aq);
      f = ((bjr)binder.a(bjr.class)).a(context, lifecycle, 0, this, c, i);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(aal.oq, paramViewGroup, false);
    paramBundle = ((cdu)getActivity()).l();
    paramBundle.b("");
    paramBundle.setPadding(paramBundle.getPaddingLeft(), 0, paramBundle.getPaddingRight(), 0);
    ba localba = getActivity();
    paramBundle.setBackgroundColor(localba.getResources().getColor(aal.of));
    EditParticipantsView localEditParticipantsView = (EditParticipantsView)paramLayoutInflater.inflate(aal.or, paramBundle, false);
    localEditParticipantsView.a(c);
    localEditParticipantsView.a(b());
    localEditParticipantsView.a(dvd.e(a.a()));
    paramBundle.addView(localEditParticipantsView);
    d = ((ViewGroup)localba.findViewById(aen.fa));
    if ((i != bkw.b) || (c())) {}
    for (int j = 1;; j = 0)
    {
      if (j != 0)
      {
        d.setVisibility(0);
        d.bringToFront();
      }
      ao = ((ViewGroup)localba.findViewById(aen.eZ));
      if (Build.VERSION.SDK_INT >= 21)
      {
        ao.setTranslationZ(ao.getResources().getDimensionPixelSize(aal.ol));
        ao.setStateListAnimator(AnimatorInflater.loadStateListAnimator(ao.getContext(), aal.ob));
      }
      ao.setBackgroundDrawable(ao.getResources().getDrawable(fii.d));
      paramLayoutInflater.inflate(aal.oA, ao, true);
      ap = ((ImageView)ao.findViewById(StressMode.tP));
      ao.setOnClickListener(ar);
      an = ((dbh)getChildFragmentManager().a(dbh.class.getName()));
      if (an == null)
      {
        an = new dbh();
        if (b != null)
        {
          an.a(c);
          an.b(b());
        }
        getChildFragmentManager().a().a(StressMode.tN, an, dbh.class.getName()).b();
      }
      am = getActivity().getResources().getDimensionPixelSize(aal.om);
      if ((Build.VERSION.SDK_INT >= 17) && (getActivity().getResources().getConfiguration().getLayoutDirection() == 1)) {
        am = (-am);
      }
      if (c.b() <= 0) {
        d.setTranslationX(am);
      }
      if (ak == dhm.d)
      {
        paramLayoutInflater = new epb(context).a(getString(aen.ju)).a(TimeUnit.SECONDS.toMillis(10L)).b();
        ((epc)binder.a(epc.class)).a(paramLayoutInflater);
      }
      j = getActivity().getResources().getInteger(aal.oo);
      h = ObjectAnimator.ofFloat(d, View.TRANSLATION_X, new float[] { 0.0F });
      h.setInterpolator(new axe(axi.a));
      h.setDuration(j);
      g = ObjectAnimator.ofFloat(d, View.TRANSLATION_X, new float[] { am });
      g.setInterpolator(new axe(axi.b));
      g.setDuration(j);
      if ((ak != dhm.g) && (ak != dhm.e) && (ak != dhm.f)) {
        break;
      }
      ap.setImageDrawable(getResources().getDrawable(fii.n));
      ap.setContentDescription(getString(aen.jN));
      return paramViewGroup;
    }
    ap.setContentDescription(getString(aen.jM));
    return paramViewGroup;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
  }
}

/* Location:
 * Qualified Name:     dad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */