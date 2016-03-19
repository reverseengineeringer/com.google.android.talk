package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.database.Cursor;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import axj;
import ba;
import beu;
import bew;
import bfd;
import bg;
import bz;
import bzw;
import bzy;
import bzz;
import caa;
import cbp;
import ccc;
import ccd;
import cce;
import ccg;
import cch;
import cci;
import ccj;
import cj;
import ck;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.views.AvatarView;
import com.google.android.apps.hangouts.views.FixedParticipantsGalleryView;
import cyx;
import czb;
import dvd;
import eap;
import emf;
import fe;
import fic;
import fid;
import glu;
import glx;
import hpu;
import ilh;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class InvitationFragment
  extends cbp
  implements View.OnClickListener, ck<Cursor>
{
  public ccj a;
  public bzw aj;
  private bzy ak;
  private AvatarView al;
  private TextView am;
  private final fic an;
  private FixedParticipantsGalleryView ao;
  private List<czb> ap;
  private final eap aq;
  public hpu b;
  public String c;
  public czb d;
  public String e;
  public bfd f;
  public int g;
  public ImageView h;
  public final ArrayList<TextView> i = new ArrayList();
  
  public InvitationFragment()
  {
    fid localfid = new fid(aal.oJ);
    localfid.a(glu.c, new glx().a(117).a());
    localfid.a(new ccc(this));
    localfid.a(new ccd(this));
    an = localfid.b();
    aq = new cce(this);
  }
  
  private void a(View paramView)
  {
    if (paramView == null) {
      return;
    }
    boolean bool = TextUtils.isEmpty(c);
    paramView = paramView.findViewById(aen.bZ);
    if (bool) {}
    for (int j = 0;; j = 8)
    {
      paramView.setVisibility(j);
      return;
    }
  }
  
  private void a(bzy parambzy)
  {
    ak = parambzy;
    if (aj != null) {
      aj.a(ak);
    }
  }
  
  private void b()
  {
    if ((ap != null) && (g == 2))
    {
      ao.setVisibility(0);
      ao.a(f, ap, d);
      return;
    }
    ao.setVisibility(8);
    ao.a();
  }
  
  public void a()
  {
    ((emf)binder.b(emf.class)).a(context, aj, d.a, e, al.b());
  }
  
  public String getConversationId()
  {
    return c;
  }
  
  public int getConversationType()
  {
    return g;
  }
  
  public czb getInviterId()
  {
    return d;
  }
  
  public void initialize(Bundle paramBundle)
  {
    c = paramBundle.getString("conversation_id");
    d = aal.b(paramBundle);
    if ((!TextUtils.isEmpty(c)) && (d == null)) {
      throw new InvalidParameterException("InvitationFragment requires a valid inviter id");
    }
    f = dvd.e(b.a());
    g = paramBundle.getInt("client_conversation_type", 0);
    Object localObject = getLoaderManager();
    ((cj)localObject).a(1001);
    localObject = ((cj)localObject).a(1001, null, this);
    if (localObject != null) {
      ((fe)localObject).s();
    }
    a(getView());
    if ((d != null) && (!TextUtils.isEmpty(d.a))) {
      RealTimeChatService.b(f, d.a);
    }
    if (!TextUtils.isEmpty(c)) {
      aal.a(context, f.g(), paramBundle.getLong("invite_timestamp", 0L));
    }
    if (h != null) {
      h.setImageBitmap(null);
    }
    if (al != null) {
      al.a(null, null, null);
    }
    if (am != null) {
      am.setText("");
    }
    paramBundle = i.iterator();
    while (paramBundle.hasNext()) {
      ((TextView)paramBundle.next()).setVisibility(8);
    }
    if (!an.e()) {
      an.b();
    }
    if (f != null)
    {
      if (aj != null) {
        restartFragment(new axj(c, g));
      }
      new ccg(this).execute(new Void[0]);
    }
  }
  
  public boolean isEmpty()
  {
    return false;
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((hpu)binder.a(hpu.class));
    f = dvd.e(b.a());
  }
  
  public boolean onBackPressed()
  {
    return false;
  }
  
  public void onClick(View paramView)
  {
    if (f == null) {}
    do
    {
      do
      {
        return;
      } while (c == null);
      if (paramView.getId() == aen.fk)
      {
        RealTimeChatService.a(b.a(), c, true, false, false);
        a.b(c);
        aal.a(f, 1551);
        return;
      }
      if (paramView.getId() == aen.fz)
      {
        paramView = caa.a(b.a(), e);
        paramView.a(new cci(this));
        paramView.a(getFragmentManager(), null);
        return;
      }
    } while ((paramView != al) || (d == null));
    a();
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    }
    do
    {
      return null;
    } while ((f == null) || (c == null) || (d == null));
    return beu.a(f, c, bew.b);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.gf, paramViewGroup, false);
    aj = ((bzw)getChildFragmentManager().a(bzw.class.getName()));
    if (aj == null) {
      aj = ((bzz)binder.a(bzz.class)).a();
    }
    a(ak);
    h = ((ImageView)paramLayoutInflater.findViewById(aen.bs));
    al = ((AvatarView)paramLayoutInflater.findViewById(aen.fb));
    al.setOnClickListener(this);
    am = ((TextView)paramLayoutInflater.findViewById(aen.eq));
    i.add((TextView)paramLayoutInflater.findViewById(aen.eE));
    i.add((TextView)paramLayoutInflater.findViewById(aen.eF));
    i.add((TextView)paramLayoutInflater.findViewById(aen.eG));
    paramLayoutInflater.findViewById(aen.fz).setOnClickListener(this);
    paramLayoutInflater.findViewById(aen.fk).setOnClickListener(this);
    ao = ((FixedParticipantsGalleryView)paramLayoutInflater.findViewById(aen.cr));
    b();
    a(paramLayoutInflater);
    RealTimeChatService.a(aq);
    aal.a(f, 1550);
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    RealTimeChatService.b(aq);
    if ((an.e()) || (an.f())) {
      an.d();
    }
  }
  
  public void onHiddenChanged(boolean paramBoolean)
  {
    new StringBuilder(22).append("onHiddenChanged: ").append(paramBoolean);
    super.onHiddenChanged(paramBoolean);
    if ((getView() == null) || (getActivity() == null)) {}
    do
    {
      do
      {
        return;
      } while (!paramBoolean);
      c = null;
      d = null;
      h.setImageBitmap(null);
      ao.a();
    } while (getLoaderManager().b(1001) == null);
    getLoaderManager().a(1001);
  }
  
  public void onLoadFinished(fe<Cursor> paramfe, Cursor paramCursor)
  {
    switch (paramfe.o())
    {
    }
    do
    {
      return;
    } while (paramCursor == null);
    Object localObject1 = f;
    Object localObject2 = c;
    paramfe = new beu();
    paramfe.d((bfd)localObject1, (String)localObject2);
    paramfe.a(paramCursor);
    paramCursor = new ArrayList();
    localObject1 = paramfe.b().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (cyx)((Iterator)localObject1).next();
      if (!paramfe.c(b)) {
        if (!d.a(b))
        {
          paramCursor.add(b);
        }
        else
        {
          e = e;
          if (TextUtils.isEmpty(e)) {
            e = getActivity().getString(StressMode.cx);
          }
          al.a(h, e, f);
          al.setContentDescription(getActivity().getString(StressMode.iE, new Object[] { e }));
          am.setText(e);
          Object localObject4 = getActivity().getText(StressMode.ig);
          localObject2 = SpannableString.valueOf(TextUtils.expandTemplate((CharSequence)localObject4, new CharSequence[] { e }));
          Object localObject3 = (URLSpan[])((SpannableString)localObject2).getSpans(0, ((SpannableString)localObject2).length(), URLSpan.class);
          localObject4 = new SpannableStringBuilder(TextUtils.expandTemplate((CharSequence)localObject4, new CharSequence[] { e }));
          if (localObject3.length > 0)
          {
            ((SpannableStringBuilder)localObject4).clearSpans();
            localObject3 = localObject3[0];
            int j = ((SpannableString)localObject2).getSpanStart(localObject3);
            int k = ((SpannableString)localObject2).getSpanEnd(localObject3);
            ((SpannableStringBuilder)localObject4).setSpan(new cch(this), j, k, 33);
          }
        }
      }
    }
    ap = paramCursor;
    b();
    getLoaderManager().a(1001);
  }
  
  public void onLoaderReset(fe<Cursor> paramfe) {}
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if ((!an.e()) && (!an.f())) {
      an.b();
    }
  }
  
  public void restartFragment(axj paramaxj)
  {
    if (getActivity() == null) {
      return;
    }
    aj = ((bzz)binder.a(bzz.class)).a();
    aj.a(ak);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("conversation_parameters", paramaxj);
    aj.setArguments(localBundle);
    aj.U();
    getChildFragmentManager().a().b(aen.dw, aj, bzw.class.getName()).b();
  }
  
  public void setHostInterface(ccj paramccj, bzy parambzy)
  {
    a = paramccj;
    a(parambzy);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.InvitationFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */