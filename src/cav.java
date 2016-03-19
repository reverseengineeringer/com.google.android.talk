import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.ViewPager;
import android.util.Pair;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.views.EmojiCategoryPageIndicatorView;
import java.util.Map;

public class cav
  extends img
  implements lt
{
  private static final ksm<Integer, Integer> a = new kso().a(Integer.valueOf(0), Integer.valueOf(R.drawable.aV)).a(Integer.valueOf(1), Integer.valueOf(R.drawable.aR)).a(Integer.valueOf(2), Integer.valueOf(R.drawable.aP)).a(Integer.valueOf(3), Integer.valueOf(R.drawable.aN)).a(Integer.valueOf(4), Integer.valueOf(R.drawable.aT)).a(Integer.valueOf(5), Integer.valueOf(R.drawable.aX)).a();
  private TabHost aj;
  private View ak;
  private LinearLayout al;
  private TextView am;
  private TextView an;
  private View ao;
  private EmojiCategoryPageIndicatorView ap;
  private final ViewTreeObserver.OnGlobalLayoutListener aq = new cax(this);
  private final ViewTreeObserver.OnGlobalLayoutListener ar = new cay(this);
  final Map<String, Integer> b = new hq();
  cbd c;
  ViewPager d;
  cbg e;
  int f = -1;
  public final View.OnClickListener g = new caw(this);
  final Runnable h = new caz(this);
  final Handler i = new Handler();
  
  private void a()
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)al.getLayoutParams();
    height = Math.round(getActivity().getResources().getDimensionPixelSize(aal.dT) * 0.15F);
    al.setLayoutParams(localLayoutParams);
  }
  
  private void a(TabHost paramTabHost, String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    ImageView localImageView = a(paramTabHost.getContext(), paramInt3);
    localImageView.setContentDescription(getString(paramInt2));
    TabHost.TabSpec localTabSpec = paramTabHost.newTabSpec(paramString);
    localTabSpec.setContent(paramInt1);
    localTabSpec.setIndicator(localImageView);
    paramTabHost.addTab(localTabSpec);
    b.put(paramString, Integer.valueOf(paramInt3));
  }
  
  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(d(), paramViewGroup, false);
    aj = ((TabHost)paramLayoutInflater.findViewById(aen.bS));
    aj.setup();
    a(aj, "Recent", aen.fB, aal.ce, 0);
    a(aj, "People", aen.cc, aal.cc, 1);
    a(aj, "Objects", aen.ew, aal.cb, 2);
    a(aj, "Nature", aen.er, aal.ca, 3);
    a(aj, "Places", aen.eU, aal.cd, 4);
    a(aj, "Symbols", aen.gA, aal.cf, 5);
    aj.setOnTabChangedListener(new cbb(this));
    aj.getTabWidget().setStripEnabled(true);
    d = ((ViewPager)paramLayoutInflater.findViewById(aen.bY));
    d.getViewTreeObserver().addOnGlobalLayoutListener(ar);
    ap = ((EmojiCategoryPageIndicatorView)paramLayoutInflater.findViewById(aen.bR));
    paramViewGroup = getResources();
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)ap.getLayoutParams();
    height = ((int)paramViewGroup.getDimension(aal.dW));
    ap.setLayoutParams(localLayoutParams);
    ak = paramLayoutInflater.findViewById(aen.bW);
    ak.setOnTouchListener(new cbc(this));
    return paramLayoutInflater;
  }
  
  public ImageView a(Context paramContext, int paramInt)
  {
    paramContext = new ImageView(paramContext);
    paramInt = aal.a((Integer)a.get(Integer.valueOf(paramInt)), 0);
    paramContext.setImageDrawable(getResources().getDrawable(paramInt));
    paramContext.setLayoutParams(new LinearLayout.LayoutParams(0, -2, 1.0F));
    paramInt = getResources().getDimensionPixelOffset(aal.dY);
    paramContext.setPadding(paramInt, paramInt, paramInt, paramInt);
    return paramContext;
  }
  
  public void a(int paramInt)
  {
    a(aal.a((Integer)e.b(paramInt).first, 0), false);
    s();
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    Pair localPair1 = e.b(paramInt1);
    paramInt1 = aal.a((Integer)first, 0);
    paramInt2 = aal.a(Integer.valueOf(e.a(paramInt1)), 0);
    int j = d.c();
    Pair localPair2 = e.b(j);
    j = aal.a((Integer)second, 0);
    int k = e.a(aal.a((Integer)first, 0));
    if (paramInt1 == f) {
      ap.a(paramInt2, aal.a((Integer)second, 0), paramFloat);
    }
    do
    {
      return;
      if (paramInt1 > f)
      {
        ap.a(k, j, paramFloat);
        return;
      }
    } while (paramInt1 >= f);
    ap.a(k, j, paramFloat - 1.0F);
  }
  
  void a(int paramInt, boolean paramBoolean)
  {
    if ((f == paramInt) && (!paramBoolean)) {
      return;
    }
    f = paramInt;
    int j = e.d(paramInt);
    int k = d.c();
    k = aal.a((Integer)e.b(k).first, 0);
    if ((paramBoolean) || (k != paramInt)) {
      d.a(j, false);
    }
    Object localObject = d.findViewWithTag(Integer.valueOf(j));
    if (localObject != null) {
      ((View)localObject).sendAccessibilityEvent(2048);
    }
    if ((paramBoolean) || (aj.getCurrentTab() != paramInt)) {
      aj.setCurrentTab(paramInt);
    }
    paramInt = f;
    long l1 = SystemClock.elapsedRealtime();
    localObject = getActivity().getSharedPreferences("recentEmoji", 0).edit();
    ((SharedPreferences.Editor)localObject).putInt("lastCategoryKey", paramInt);
    ((SharedPreferences.Editor)localObject).apply();
    if (ezi.a("Babel", 3))
    {
      long l2 = SystemClock.elapsedRealtime();
      ezi.a("Babel", 91 + "Emoji: Fragment write category " + paramInt + " @" + l2 + " took: " + (l2 - l1), new Object[0]);
    }
    c(f);
  }
  
  public void a(cbd paramcbd)
  {
    c = paramcbd;
  }
  
  public void b(int paramInt) {}
  
  public int c()
  {
    return d.getHeight();
  }
  
  public void c(int paramInt) {}
  
  public int d()
  {
    return aal.fE;
  }
  
  public Integer e()
  {
    return null;
  }
  
  public int f()
  {
    return -1;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    int j = getActivity().getResources().getDimensionPixelSize(aal.dT);
    paramConfiguration = getView();
    if (paramConfiguration != null) {
      paramConfiguration.setLayoutParams(new FrameLayout.LayoutParams(-1, j));
    }
    d.getViewTreeObserver().addOnGlobalLayoutListener(aq);
    if (al != null) {
      a();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (ezi.a("Babel", 3))
    {
      long l = SystemClock.elapsedRealtime();
      ezi.a("Babel", 46 + "Emoji: Fragment onCreate @" + l, new Object[0]);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    long l1 = SystemClock.elapsedRealtime();
    paramLayoutInflater = a(paramLayoutInflater, paramViewGroup);
    al = ((LinearLayout)paramLayoutInflater.findViewById(aen.bQ));
    a();
    am = ((TextView)paramLayoutInflater.findViewById(aen.bU));
    am.setOnClickListener(g);
    an = ((TextView)paramLayoutInflater.findViewById(aen.bV));
    an.setOnClickListener(g);
    ao = paramLayoutInflater.findViewById(aen.bX);
    ao.setOnClickListener(new cba(this));
    if (ezi.a("Babel", 3))
    {
      long l2 = SystemClock.elapsedRealtime();
      ezi.a("Babel", 77 + "Emoji: Fragment onCreateView @" + l2 + " took: " + (l2 - l1), new Object[0]);
    }
    return paramLayoutInflater;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    aen.a(d, aq);
    aen.a(d, ar);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    if (e != null) {
      e.e();
    }
  }
  
  public boolean q()
  {
    return true;
  }
  
  Point r()
  {
    Point localPoint = new Point();
    getActivity().getWindowManager().getDefaultDisplay().getSize(localPoint);
    return localPoint;
  }
  
  void s()
  {
    if (ap == null) {
      return;
    }
    int j = d.c();
    Pair localPair = e.b(j);
    j = aal.a((Integer)second, 0);
    int k = e.a(aal.a((Integer)first, 0));
    ap.a(k, j, 0.0F);
  }
  
  public TabWidget t()
  {
    return aj.getTabWidget();
  }
}

/* Location:
 * Qualified Name:     cav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */