package com.google.android.apps.hangouts.fragments;

import aal;
import aen;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.widget.SwitchCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import ba;
import beu;
import bew;
import bfd;
import bkw;
import bzn;
import cap;
import cbp;
import ccv;
import ccw;
import ccx;
import cj;
import ck;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import cyx;
import czb;
import dhm;
import dvd;
import ejs;
import ekq;
import eku;
import enn;
import eyt;
import ezc;
import ezi;
import fch;
import fe;
import gw;
import hbs;
import hh;
import hpu;
import iku;
import ilh;
import ill;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class ConversationParticipantsFragment
  extends cbp
  implements ck<Cursor>, iku
{
  public hpu a;
  private String aA;
  private String aB;
  private boolean aC = false;
  private final fch aD = new fch(this);
  private final cap aE = new cap(this);
  private List<ccw> aF;
  private String aj;
  private String[] ak;
  private ListView al;
  private bzn am;
  private ccx an;
  private int ao;
  private int ap;
  private final beu aq = new beu();
  private long ar;
  private boolean as;
  private ccw at;
  private ccw au;
  private ccw av;
  private ccw aw;
  private String ax;
  private String ay;
  private cyx az;
  public bfd b;
  public int c;
  public String d;
  public ccw e;
  public cyx f;
  public boolean g;
  public boolean h;
  public boolean i;
  
  private static String a(Intent paramIntent)
  {
    paramIntent = paramIntent.getParcelableExtra("android.intent.extra.ringtone.PICKED_URI");
    if (paramIntent == null) {
      return "";
    }
    return paramIntent.toString();
  }
  
  private static String a(String paramString, Uri paramUri)
  {
    if ((paramUri != null) && (paramUri.toString().equals(paramString))) {
      paramUri = null;
    }
    do
    {
      return paramUri;
      paramUri = paramString;
    } while (paramString != null);
    return "";
  }
  
  private static void a(ccw paramccw, String paramString)
  {
    if (g != null)
    {
      b = paramString;
      ((TextView)g.findViewById(aen.gy)).setText(paramString);
    }
  }
  
  private void a(String paramString, Uri paramUri1, Uri paramUri2, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent("android.intent.action.RINGTONE_PICKER").putExtra("android.intent.extra.ringtone.TYPE", paramInt2).putExtra("android.intent.extra.ringtone.TITLE", paramString);
    if (eyt.a.equals(paramUri1)) {
      paramString = ejs.a(aal.hM);
    }
    for (;;)
    {
      startActivityForResult(localIntent.putExtra("android.intent.extra.ringtone.EXISTING_URI", paramString).putExtra("android.intent.extra.ringtone.DEFAULT_URI", paramUri2), paramInt1);
      return;
      paramString = paramUri1;
      if (eyt.b.equals(paramUri1)) {
        paramString = ejs.a(aal.hL);
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    aw = new ccw(context.getString(StressMode.eE), eyt.a(context, e()), false, false, 5);
    aw.a(paramBoolean);
  }
  
  public void a()
  {
    int j = 0;
    if (ap == 30) {
      ap = 10;
    }
    for (au.d = false;; au.d = true)
    {
      String[] arrayOfString = ak;
      int k = arrayOfString.length;
      while (j < k)
      {
        String str = arrayOfString[j];
        RealTimeChatService.a(b, str, ap);
        j += 1;
      }
      ap = 30;
    }
    if (au.g != null)
    {
      ((SwitchCompat)au.g.findViewById(aen.gz)).setChecked(au.d);
      if (av != null) {
        av.a(au.d);
      }
      if (aw != null) {
        aw.a(au.d);
      }
    }
  }
  
  public void a(fe<Cursor> paramfe, Cursor paramCursor)
  {
    boolean bool2 = true;
    switch (paramfe.o())
    {
    }
    label270:
    label339:
    do
    {
      return;
      aq.a(paramCursor);
      if (c == 1)
      {
        paramfe = aq.b().iterator();
        int j = 0;
        while (paramfe.hasNext())
        {
          cyx localcyx = (cyx)paramfe.next();
          if (Boolean.TRUE.equals(i)) {
            g = true;
          }
          if ((f == null) || (TextUtils.isEmpty(c)))
          {
            f = localcyx;
            if (f.e == null) {
              f.e = "";
            }
          }
          int k = j + 1;
          j = k;
          if (az == null)
          {
            bool1 = aal.f(ao);
            if ((!bool1) || (!TextUtils.equals(b.b, ax)))
            {
              j = k;
              if (!bool1)
              {
                j = k;
                if (!TextUtils.equals(b.a, ay)) {}
              }
            }
            else
            {
              az = localcyx;
              j = k;
            }
          }
        }
        if (j <= 1) {
          break;
        }
        bool1 = true;
        h = bool1;
        if ((!h) && (f != null))
        {
          if (TextUtils.isEmpty(f.c)) {
            break label449;
          }
          bool1 = true;
          i = bool1;
        }
      }
      if ((e != null) && (f != null))
      {
        paramfe = gw.a();
        if (!g) {
          break label455;
        }
        e.a = getActivity().getString(StressMode.aE, new Object[] { paramfe.a(f.e, hh.e) });
        if (e.g != null) {
          ((TextView)e.g.findViewById(aen.gM)).setText(e.a);
        }
      }
      an.a(paramCursor);
    } while ((!aal.f(ao)) || (aq.b().size() != 1));
    if (ap == 30) {}
    for (boolean bool1 = bool2;; bool1 = false)
    {
      a(bool1);
      aF.add(aw);
      return;
      bool1 = false;
      break;
      label449:
      bool1 = false;
      break label270;
      label455:
      e.a = getActivity().getString(StressMode.ar, new Object[] { paramfe.a(f.e, hh.e) });
      break label339;
    }
  }
  
  public void a(String paramString)
  {
    int j;
    if (c == 2)
    {
      j = 1;
      if (j != 0) {
        break label71;
      }
      paramString = String.valueOf("should not call setConversationName on a conversation which is not a group conversation ");
      String str = String.valueOf(aj);
      if (str.length() == 0) {
        break label59;
      }
      paramString = paramString.concat(str);
      label42:
      ezi.e("Babel", paramString, new Object[0]);
    }
    label59:
    label71:
    do
    {
      do
      {
        return;
        j = 0;
        break;
        paramString = new String(paramString);
        break label42;
      } while (TextUtils.equals(d, paramString));
      d = paramString;
      RealTimeChatService.c(b, aj, d);
    } while (at.g == null);
    at.a = getResources().getString(StressMode.az);
    at.b = paramString;
    ((TextView)at.g.findViewById(aen.gy)).setText(at.a);
    ((TextView)at.g.findViewById(aen.gy)).setText(paramString);
  }
  
  public Uri b()
  {
    if (aA != null) {
      return ezc.c(aA);
    }
    return c();
  }
  
  public void b(String paramString)
  {
    if (paramString.equals("block_user"))
    {
      if ((c == 1) && (f != null))
      {
        RealTimeChatService.b(b, ak);
        paramString = new long[ak.length];
        int j = 0;
        while (j < ak.length)
        {
          paramString[j] = ar;
          j += 1;
        }
        RealTimeChatService.a(b, ak, paramString, true, false);
        paramString = aq.b().iterator();
        while (paramString.hasNext())
        {
          cyx localcyx = (cyx)paramString.next();
          if (localcyx != f) {
            RealTimeChatService.a(a.a(), b.a, b.b, e, true, true);
          }
        }
        aal.a(getActivity(), b, f.e, f.b.a, f.b.b, true);
        aal.a(b, 1819);
      }
    }
    else {
      return;
    }
    ezi.e("Babel", "no participants found when trying to block", new Object[0]);
  }
  
  public Uri c()
  {
    eku localeku = ekq.a(ao);
    return ((ekq)ilh.a(context, ekq.class)).a(b.g(), localeku);
  }
  
  public Uri d()
  {
    return ezc.c(aal.b(b));
  }
  
  public Uri e()
  {
    if (aB != null) {
      return ezc.c(aB);
    }
    return d();
  }
  
  public void f() {}
  
  protected boolean isEmpty()
  {
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == -1) {
      switch (paramInt1)
      {
      default: 
        hbs.a(28 + "Bad request code " + paramInt1);
      }
    }
    for (;;)
    {
      if (an != null) {
        an.notifyDataSetChanged();
      }
      return;
      String str = a(paramIntent);
      if (!str.equals(aB)) {
        aal.a(b, 1600);
      }
      paramIntent = ak[0];
      aB = str;
      str = a(str, d());
      RealTimeChatService.e(b, paramIntent, str);
      a(aw, eyt.a(context, e()));
      continue;
      str = a(paramIntent);
      paramIntent = ak[0];
      aA = str;
      str = a(str, c());
      RealTimeChatService.d(b, paramIntent, str);
      a(av, eyt.a(context, b()));
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Intent localIntent = paramActivity.getIntent();
    aj = localIntent.getStringExtra("conversation_id");
    d = localIntent.getStringExtra("conversation_name");
    ap = localIntent.getIntExtra("notification_level", 10);
    c = localIntent.getIntExtra("client_conversation_type", 0);
    ar = localIntent.getLongExtra("latest_timestamp", 0L);
    as = localIntent.getBooleanExtra("has_unknown_sender", false);
    aA = localIntent.getStringExtra("chat_ringtone_uri");
    aB = localIntent.getStringExtra("hangout_ringtone_uri");
    ak = localIntent.getStringArrayExtra("merged_conversation_ids");
    ax = localIntent.getStringExtra("preferred_chat_id");
    ay = localIntent.getStringExtra("preferred_gaia_id");
    az = null;
    if (ak.length == 0) {
      ezi.e("Babel", "should not have mergedConversationIds.length == 0", new Object[0]);
    }
    paramActivity.setTitle(d);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hpu)binder.a(hpu.class));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getActivity().getIntent();
    b = dvd.e(a.a());
    ao = paramBundle.getIntExtra("transport_type", b.E());
    getActivity().setResult(0);
    setHasOptionsMenu(true);
    aq.d(null, null);
  }
  
  public fe<Cursor> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    aq.d(b, aj);
    return aq.a(bew.a);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(aal.gZ, paramMenu);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(aal.fq, paramViewGroup, false);
    boolean bool2 = aal.f(ao);
    paramBundle = new ArrayList();
    if ((!bool2) && (c == 2))
    {
      at = new ccw(context.getString(StressMode.az), d, false, false, 1);
      paramBundle.add(at);
    }
    if (ap == 30) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      au = new ccw(context.getString(StressMode.aA), null, true, bool1, 2);
      paramBundle.add(au);
      av = new ccw(context.getString(StressMode.eH), eyt.a(context, b()), false, false, 4);
      av.a(bool1);
      paramBundle.add(av);
      if (aal.g(ao))
      {
        a(bool1);
        paramBundle.add(aw);
      }
      if ((c == 1) && (!as))
      {
        e = new ccw(null, null, false, false, 3);
        paramBundle.add(e);
      }
      aF = paramBundle;
      paramBundle = new ccv(context, aF, aE);
      an = new ccx(context, b, f, bool2, aD);
      am = new bzn(context, paramBundle, an);
      al = ((ListView)paramViewGroup.findViewById(aen.dU));
      paramLayoutInflater = paramLayoutInflater.inflate(aal.gm, al, false);
      al.addHeaderView(paramLayoutInflater);
      al.setAdapter(am);
      getLoaderManager().a(1025, new Bundle(), this).s();
      return paramViewGroup;
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    al.setAdapter(null);
    am.b();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
  }
  
  public void onLoaderReset(fe<Cursor> paramfe)
  {
    switch (paramfe.o())
    {
    default: 
      return;
    }
    an.a(null);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    Object localObject;
    if ((paramMenuItem.getItemId() == aen.fp) || (paramMenuItem.getItemId() == aen.fs))
    {
      if (aC) {
        return false;
      }
      if (aq.d()) {
        return false;
      }
      ba localba;
      if (c == 2)
      {
        localObject = dhm.d;
        paramMenuItem = aq.f();
        localba = getActivity();
        if (!aal.f(ao)) {
          break label190;
        }
      }
      label190:
      for (bkw localbkw = bkw.b;; localbkw = bkw.a)
      {
        paramMenuItem = aal.a(b, aj, paramMenuItem, (dhm)localObject, localbkw);
        localObject = (Intent)localba.getIntent().getParcelableExtra("share_intent");
        if (localObject != null)
        {
          ((Intent)localObject).putExtra("conversation_id", aj);
          paramMenuItem.putExtra("share_intent", (Parcelable)localObject);
        }
        localba.startActivityForResult(paramMenuItem, 101);
        aC = true;
        return true;
        if (az == null) {
          return false;
        }
        localObject = dhm.c;
        paramMenuItem = new ArrayList();
        paramMenuItem.add(az);
        break;
      }
    }
    if (paramMenuItem.getItemId() == aen.fo)
    {
      if (aq.d()) {
        return false;
      }
      int j;
      if (c == 2)
      {
        j = 1;
        if (j != 0) {
          break label294;
        }
        paramMenuItem = String.valueOf("should not call forkGroupConversation on a conversation which is not a group conversation ");
        localObject = String.valueOf(aj);
        if (((String)localObject).length() == 0) {
          break label282;
        }
      }
      label282:
      for (paramMenuItem = paramMenuItem.concat((String)localObject);; paramMenuItem = new String(paramMenuItem))
      {
        ezi.e("Babel", paramMenuItem, new Object[0]);
        return false;
        j = 0;
        break;
      }
      label294:
      getActivity();
      if (aal.f(ao)) {}
      for (paramMenuItem = bkw.b;; paramMenuItem = bkw.a)
      {
        startActivity(aal.a(b, aj, aq.f(), dhm.b, paramMenuItem));
        getActivity().finish();
        return true;
      }
    }
    return false;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool1 = true;
    boolean bool2 = true;
    MenuItem localMenuItem1 = paramMenu.findItem(aen.fp);
    MenuItem localMenuItem2 = paramMenu.findItem(aen.fs);
    paramMenu = paramMenu.findItem(aen.fo);
    boolean bool3 = aal.f(ao);
    if (c == 2)
    {
      if (!bool3)
      {
        bool1 = true;
        localMenuItem1.setVisible(bool1);
        localMenuItem2.setVisible(false);
        if (bool3) {
          break label99;
        }
      }
      label99:
      for (bool1 = bool2;; bool1 = false)
      {
        paramMenu.setVisible(bool1);
        return;
        bool1 = false;
        break;
      }
    }
    localMenuItem1.setVisible(false);
    if ((!b.k()) && ((!bool3) || (enn.a(b.g(), ao))) && (!as)) {}
    for (;;)
    {
      localMenuItem2.setVisible(bool1);
      paramMenu.setVisible(false);
      return;
      bool1 = false;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    aC = false;
  }
  
  public void q() {}
  
  public void r() {}
  
  public void s() {}
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.fragments.ConversationParticipantsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */