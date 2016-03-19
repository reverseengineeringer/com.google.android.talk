import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.google.android.apps.hangouts.conversation.v2.stickerpicker.impl.SlidingTabLayout;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class but
  extends img
{
  ViewPager a;
  private bdp aj;
  private hbw<Void, Void, Void> ak;
  SlidingTabLayout b;
  buw c;
  hpu d;
  eit e;
  Map<String, bit> f = new HashMap();
  ceh g;
  cei h;
  public List<dro> i = new ArrayList();
  
  private void a()
  {
    if (!g.a())
    {
      if (!f.isEmpty())
      {
        Iterator localIterator = f.values().iterator();
        while (localIterator.hasNext())
        {
          bit localbit = (bit)localIterator.next();
          e.b(localbit);
        }
        f.clear();
      }
      if (ak != null) {
        ak.cancel(true);
      }
    }
  }
  
  public void a(int paramInt)
  {
    String str = aj.a("babel_stickers_account_id", "108618507921641169817");
    Object localObject1 = new bfz(context, paramInt);
    i = ((bfz)localObject1).a(true);
    if (!i.isEmpty())
    {
      localObject2 = new dro();
      e = ((bfz)localObject1).B();
      if ((e != null) && (!e.isEmpty()))
      {
        b = "Recent";
        a = "Recent";
        c = ((drp)e.get(0));
        i.add(0, localObject2);
      }
    }
    localObject1 = context;
    boolean bool = i.isEmpty();
    Object localObject2 = dvd.e(paramInt);
    if ((((eot)ilh.a((Context)localObject1, eot.class)).a(paramInt)) || (dvd.d((bfd)localObject2))) {}
    long l1;
    long l2;
    do
    {
      return;
      l1 = bff.i((Context)localObject1, (bfd)localObject2);
      l2 = aal.a((Context)localObject1, "babel_stickers_query_limit_ms", eea.i);
    } while ((!bool) && (l2 + l1 >= System.currentTimeMillis()));
    ezi.c("Babel_StickersPagerFrag", 63 + "Sticker update initiated. last:" + l1 + " empty:" + bool, new Object[0]);
    RealTimeChatService.o((bfd)localObject2, str);
  }
  
  public void a(String paramString)
  {
    PreferenceManager.getDefaultSharedPreferences(getActivity()).edit().putString("selected_sticker_album_id", paramString).commit();
  }
  
  public String c()
  {
    ba localba = getActivity();
    if (localba == null) {
      return null;
    }
    return PreferenceManager.getDefaultSharedPreferences(localba).getString("selected_sticker_album_id", null);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str = paramIntent.getStringExtra("album_id");
      if (str != null) {
        a(str);
      }
    }
    getParentFragment().onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    d = ((hpu)binder.a(hpu.class));
    aj = ((bdp)binder.a(bdp.class));
    e = ((eit)binder.a(eit.class));
    g = ((ceh)binder.a(ceh.class));
    h = ((cei)binder.a(cei.class));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(aal.lc, paramViewGroup, false);
    a = ((ViewPager)paramLayoutInflater.findViewById(aen.hT));
    b = ((SlidingTabLayout)paramLayoutInflater.findViewById(aen.hS));
    b.a();
    b.a(aal.kZ, aen.hQ);
    b.a(a);
    int j = paramLayoutInflater.getResources().getDimensionPixelSize(aal.kT);
    b.getViewTreeObserver().addOnGlobalLayoutListener(new buu(this, j));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    if ((a.getChildCount() > 0) && (a.c() <= i.size())) {
      a(i.get(a.c())).a);
    }
    a();
    if (c != null)
    {
      c.e();
      c = null;
    }
    a.a(null);
    if (i != null) {
      i.clear();
    }
  }
  
  public void onResume()
  {
    if ((a != null) && (c == null))
    {
      int j = d.a();
      a.setVisibility(8);
      b.setVisibility(8);
      a();
      ak = new buv(this, j, this);
      ak.a(new Void[0]);
    }
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     but
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */