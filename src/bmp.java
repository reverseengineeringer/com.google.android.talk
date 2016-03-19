import android.content.ContentResolver;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.PorterDuff.Mode;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;
import java.util.List;

public final class bmp
  extends img
  implements View.OnClickListener, TabHost.OnTabChangeListener, bks
{
  ArrayList<bmt> a = new ArrayList();
  private ContentObserver aj;
  public int b = -1;
  bkt c;
  int d = -1;
  private bmv e;
  private TabWidget f;
  private String g = "";
  private SharedPreferences h;
  private final hvj i = new hvj(this);
  
  private void a(bu parambu)
  {
    parambu.setOnTabChangedListener(null);
    parambu.clearAllTabs();
    int j = 0;
    while (j < a.size())
    {
      Object localObject = a.get(j)).a;
      TabHost.TabSpec localTabSpec = parambu.newTabSpec(((brc)localObject).c().getName());
      localObject = View.inflate(getActivity(), ((brc)localObject).a(), null);
      ezc.a((View)localObject, true);
      localTabSpec.setIndicator((View)localObject);
      parambu.a(localTabSpec, bql.class);
      ((View)localObject).setOnClickListener(new bmu(this, j));
      j += 1;
    }
    parambu.setOnTabChangedListener(this);
  }
  
  private <T extends brc> boolean a(ArrayList<bmt> paramArrayList, Class<T> paramClass, bpq parambpq, int paramInt)
  {
    paramClass = (brc)binder.b(paramClass);
    if ((paramClass != null) && (paramClass.a(s(), parambpq)))
    {
      paramArrayList.add(new bmt(paramClass, paramInt));
      return true;
    }
    return false;
  }
  
  private bmv d(int paramInt)
  {
    Object localObject = a.get(paramInt)).a;
    localObject = img.instantiate(context, ((brc)localObject).c().getName());
    bmv localbmv = (bmv)localObject;
    bg localbg = getChildFragmentManager();
    localbg.a().b(aal.jK, (av)localObject).a().b();
    localbg.b();
    return localbmv;
  }
  
  private List<bmt> e()
  {
    ArrayList localArrayList = new ArrayList();
    bpq localbpq = (bpq)binder.b(bpq.class);
    a(localArrayList, bsh.class, localbpq, 2294);
    a(localArrayList, bsn.class, localbpq, 2159);
    if (!a(localArrayList, btj.class, localbpq, 2160)) {
      a(localArrayList, bsa.class, localbpq, 2160);
    }
    a(localArrayList, bvf.class, localbpq, 3023);
    a(localArrayList, btu.class, localbpq, 1922);
    a(localArrayList, bto.class, localbpq, 2265);
    return localArrayList;
  }
  
  private void f()
  {
    c.a();
    aal.a(new bms(this), 67L);
  }
  
  private void q()
  {
    getView().findViewById(aal.jK).setVisibility(8);
    c(-1);
    r();
    d().setStripEnabled(false);
    if (b != -1) {
      c.c();
    }
  }
  
  private void r()
  {
    if (e != null)
    {
      View localView = getView();
      if (localView != null) {
        ((ViewGroup)localView.findViewById(aal.jK)).removeAllViews();
      }
      e = null;
    }
  }
  
  private bfd s()
  {
    return dvd.e(((hpu)binder.a(hpu.class)).a());
  }
  
  public void a()
  {
    if ((e != null) && (e.b())) {
      b();
    }
  }
  
  public void a(int paramInt)
  {
    d = paramInt;
    SharedPreferences.Editor localEditor = h.edit();
    localEditor.putInt(g, paramInt);
    localEditor.apply();
  }
  
  public void b()
  {
    b(-1);
  }
  
  public void b(int paramInt)
  {
    if (paramInt == -1)
    {
      q();
      r();
      b = -1;
    }
    while (!isResumed()) {
      return;
    }
    if (b != paramInt)
    {
      r();
      bmt localbmt = (bmt)a.get(paramInt);
      brb localbrb = a.b();
      if (localbrb != null)
      {
        if (!a.isEmpty()) {}
        for (boolean bool = true;; bool = false)
        {
          hbs.a("Expected condition to be true", bool);
          if (((dcj)binder.a(dcj.class)).a(a)) {
            break;
          }
          dck localdck = (dck)binder.a(dck.class);
          Bundle localBundle = new Bundle();
          localBundle.putString("permission_picker_name", localbmt.a());
          localdck.a(new dco(aal.jP, b, localBundle), a);
          return;
        }
      }
      e = d(paramInt);
      aal.a(s(), b);
    }
    if (e == null) {
      e = d(paramInt);
    }
    if (b != paramInt)
    {
      if (!e.a()) {
        break label249;
      }
      f();
    }
    for (;;)
    {
      b = paramInt;
      return;
      label249:
      c.a();
      q();
    }
  }
  
  public void c()
  {
    if (getView() == null) {}
    List localList;
    do
    {
      return;
      localList = e();
    } while (a.equals(localList));
    b(-1);
    a.clear();
    a.addAll(localList);
    a((bu)getView().findViewById(aal.jJ));
  }
  
  void c(int paramInt)
  {
    Object localObject1 = d();
    int j = 0;
    while (j < ((TabWidget)localObject1).getTabCount())
    {
      Object localObject2 = (LinearLayout)((TabWidget)localObject1).getChildTabViewAt(j);
      if (localObject2 != null)
      {
        localObject2 = (ImageView)((LinearLayout)localObject2).findViewWithTag("icon");
        ((ImageView)localObject2).setColorFilter(getResources().getColor(aal.jz), PorterDuff.Mode.SRC_IN);
        ((ImageView)localObject2).setBackground(null);
      }
      j += 1;
    }
    if (paramInt >= 0)
    {
      localObject1 = (LinearLayout)((TabWidget)localObject1).getChildTabViewAt(paramInt);
      if (localObject1 != null)
      {
        localObject1 = (ImageView)((LinearLayout)localObject1).findViewWithTag("icon");
        ((ImageView)localObject1).setColorFilter(getResources().getColor(aal.jy), PorterDuff.Mode.SRC_IN);
        ((ImageView)localObject1).setBackgroundResource(aal.jE);
      }
    }
  }
  
  TabWidget d()
  {
    return (TabWidget)aen.a(f);
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    c = ((bkt)binder.a(bkt.class));
    ((hvh)binder.a(hvh.class)).a(i);
    ((dck)binder.a(dck.class)).a(aal.jP, new bmr(this));
    a.addAll(e());
  }
  
  public void onClick(View paramView)
  {
    f();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aj = new bmq(this, new Handler());
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    h = context.getSharedPreferences("attachment_prefs", 0);
    int j;
    if (getActivitygetResourcesgetConfigurationorientation == 2)
    {
      j = 1;
      if (j == 0) {
        break label183;
      }
    }
    label183:
    for (paramBundle = "attachment_area_height_landscape";; paramBundle = "attachment_area_height_portrait")
    {
      g = paramBundle;
      j = getResources().getDimensionPixelSize(aal.jB);
      d = h.getInt(g, j);
      paramLayoutInflater = paramLayoutInflater.inflate(aal.kc, paramViewGroup, false);
      paramViewGroup = (bu)paramLayoutInflater.findViewById(aal.jJ);
      paramViewGroup.a(getActivity(), getChildFragmentManager(), aal.jN);
      f = paramViewGroup.getTabWidget();
      d().setStripEnabled(false);
      d().setDividerDrawable(aal.jD);
      d().setLeftStripDrawable(aal.jD);
      d().setRightStripDrawable(aal.jD);
      a(paramViewGroup);
      return paramLayoutInflater;
      j = 0;
      break;
    }
  }
  
  public void onPause()
  {
    context.getContentResolver().unregisterContentObserver(aj);
    c.a();
    b(-1);
    super.onPause();
  }
  
  public void onResume()
  {
    b(-1);
    super.onResume();
    context.getContentResolver().registerContentObserver(Settings.Secure.getUriFor("default_input_method"), false, aj);
  }
  
  public void onTabChanged(String paramString)
  {
    int j = 0;
    while (j < a.size())
    {
      if (a.get(j)).a.c().getName().equals(paramString))
      {
        b(j);
        return;
      }
      j += 1;
    }
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = "Unknown ".concat(paramString);; paramString = new String("Unknown ")) {
      throw new IllegalStateException(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     bmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */