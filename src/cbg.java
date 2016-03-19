import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.util.Pair;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public final class cbg
  extends kh
{
  private static final boolean e = false;
  private static final Integer[] f = { Integer.valueOf(aal.cy), Integer.valueOf(aal.cA), Integer.valueOf(aal.cz), Integer.valueOf(aal.cB), Integer.valueOf(aal.cC) };
  final cbj a;
  final cbd b;
  final exw c;
  int d = 0;
  private final Context g;
  private final SparseArray<List<Integer>> h;
  private final boolean i;
  private final Integer j;
  private int k = 0;
  
  static
  {
    imx localimx = ezi.f;
  }
  
  public cbg(Context paramContext, cbd paramcbd, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, Integer paramInteger)
  {
    g = paramContext;
    a(paramInt1, paramInt2);
    a = new cbj(g);
    b = paramcbd;
    c = new exw(paramContext, paramInt3);
    h = new SparseArray(6);
    i = paramBoolean;
    j = paramInteger;
    paramContext = new HashSet();
    if ((Build.VERSION.SDK_INT >= 19) && (aal.a(aal.oJ, "babel_prefer_emoji_system_font_rendering", true)))
    {
      paramInt1 = m;
      if (paramInt1 != 0)
      {
        paramContext.add(Integer.valueOf(1041637));
        paramContext.add(Integer.valueOf(1041638));
        paramContext.add(Integer.valueOf(1041639));
        paramContext.add(Integer.valueOf(1041640));
        paramContext.add(Integer.valueOf(1041641));
        paramContext.add(Integer.valueOf(1041642));
        paramContext.add(Integer.valueOf(1041643));
        paramContext.add(Integer.valueOf(1041644));
        paramContext.add(Integer.valueOf(1041645));
        paramContext.add(Integer.valueOf(1041646));
        paramContext.add(Integer.valueOf(1042478));
        paramContext.add(Integer.valueOf(1042479));
        paramContext.add(Integer.valueOf(1042480));
        paramContext.add(Integer.valueOf(1042481));
        paramContext.add(Integer.valueOf(1042482));
        paramContext.add(Integer.valueOf(1042483));
        paramContext.add(Integer.valueOf(1042484));
        paramContext.add(Integer.valueOf(1042485));
        paramContext.add(Integer.valueOf(1042486));
        paramContext.add(Integer.valueOf(1042487));
        paramContext.add(Integer.valueOf(1042476));
      }
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 >= f.length) {
        return;
      }
      paramcbd = g.getResources().obtainTypedArray(aal.a(f[paramInt1], 0));
      paramInteger = new LinkedList();
      paramInt2 = 0;
      for (;;)
      {
        if (paramInt2 < paramcbd.length())
        {
          paramInt3 = Integer.parseInt(paramcbd.getString(paramInt2), 16);
          if (!paramContext.contains(Integer.valueOf(paramInt3))) {
            paramInteger.add(Integer.valueOf(paramInt3));
          }
          paramInt2 += 1;
          continue;
          paramInt1 = 0;
          break;
        }
      }
      paramcbd.recycle();
      h.append(paramInt1 + 1, paramInteger);
      paramInt1 += 1;
    }
  }
  
  private int f()
  {
    Resources localResources = g.getResources();
    int m = localResources.getDimensionPixelSize(aal.dU);
    return Math.max(0, localResources.getDimensionPixelSize(aal.ey) - m);
  }
  
  private int g()
  {
    Resources localResources = g.getResources();
    int m = localResources.getDimensionPixelSize(aal.dU);
    if (i) {}
    for (m = localResources.getDimensionPixelSize(aal.ey) - m;; m = 0) {
      return Math.max(0, m);
    }
  }
  
  public int a(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    paramInt = ((List)h.get(paramInt)).size();
    if (d <= 0) {
      return 1;
    }
    return (paramInt - 1) / d + 1;
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (e) {
      new StringBuilder(35).append("Instantiate emoji view: ").append(paramInt);
    }
    long l1 = SystemClock.elapsedRealtime();
    Object localObject1 = (LayoutInflater)paramViewGroup.getContext().getSystemService("layout_inflater");
    Object localObject2 = b(paramInt);
    int i3 = aal.a((Integer)first, 0);
    int m;
    int n;
    label92:
    label109:
    GridView localGridView;
    int i1;
    label147:
    int i2;
    if (i3 == 0)
    {
      m = 1;
      if ((m == 0) || (a.a().size() != 0)) {
        break label456;
      }
      n = 1;
      if (n == 0) {
        break label462;
      }
      localObject1 = ((LayoutInflater)localObject1).inflate(aal.fG, paramViewGroup, false);
      localGridView = (GridView)((View)localObject1).findViewById(aen.bT);
      int i4 = f();
      int i5 = g();
      if (!i) {
        break label477;
      }
      i1 = k;
      int i6 = f();
      int i7 = g();
      if (!i) {
        break label483;
      }
      i2 = k;
      label172:
      localGridView.setPadding(i4, i5 + i1, i6, i2 + i7);
      if (m == 0) {
        break label489;
      }
    }
    label456:
    label462:
    label477:
    label483:
    label489:
    for (localObject2 = new cbn(this, g.getResources());; localObject2 = new cbh(this, g.getResources(), (List)h.get(i3), aal.a((Integer)second, 0)))
    {
      if (n != 0)
      {
        localGridView.setVisibility(8);
        ViewGroup localViewGroup = (ViewGroup)((View)localObject1).findViewById(aen.fD);
        localViewGroup.setVisibility(0);
        ImageView localImageView = new ImageView(localViewGroup.getContext());
        localImageView.setImageResource(R.drawable.bq);
        localViewGroup.addView(localImageView, 0);
        ((cbn)localObject2).a((View)localObject1);
        if (j != null)
        {
          m = aal.a(j, 0);
          localImageView.setColorFilter(m + 1610612736, PorterDuff.Mode.SRC_ATOP);
          ((TextView)((View)localObject1).findViewById(aen.fE)).setTextColor(m);
        }
      }
      localGridView.setOnItemClickListener(new cbi(this, i3));
      localGridView.setAdapter((ListAdapter)localObject2);
      localGridView.setTag(Integer.valueOf(paramInt));
      paramViewGroup.addView((View)localObject1);
      if (ezi.a("Babel", 3))
      {
        long l2 = SystemClock.elapsedRealtime();
        paramInt = ((cbf)localObject2).getCount();
        ezi.a("Babel", 119 + "Emoji: Category Adapter instantiateItem @" + l2 + " took: " + (l2 - l1) + " Adapter has " + paramInt + " items.", new Object[0]);
      }
      return localObject1;
      m = 0;
      break;
      n = 0;
      break label92;
      localObject1 = ((LayoutInflater)localObject1).inflate(aal.fF, paramViewGroup, false);
      break label109;
      i1 = 0;
      break label147;
      i2 = 0;
      break label172;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Resources localResources = g.getResources();
    int i1 = f();
    int n = g();
    int i2 = localResources.getDimensionPixelSize(aal.dS);
    int m = localResources.getDimensionPixelSize(aal.dX);
    paramInt1 = (paramInt1 - i1 * 2) / i2;
    n = (paramInt2 - n * 2) / m;
    k = ((paramInt2 - m * n) / 2);
    d = (n * paramInt1);
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramObject = (View)paramObject;
    paramViewGroup.removeView((View)paramObject);
    ((cbf)((GridView)((View)paramObject).findViewById(aen.bT)).getAdapter()).a();
  }
  
  public boolean a(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public int b()
  {
    int m = 0;
    int n = 0;
    while (m < 6)
    {
      n += a(m);
      m += 1;
    }
    return n;
  }
  
  public Pair<Integer, Integer> b(int paramInt)
  {
    int m = 0;
    int i1;
    for (int n = 0; m < 6; n = i1)
    {
      i1 = n + a(m);
      if (i1 > paramInt) {
        return new Pair(Integer.valueOf(m), Integer.valueOf(paramInt - n));
      }
      m += 1;
    }
    return new Pair(Integer.valueOf(1), Integer.valueOf(0));
  }
  
  public int c(Object paramObject)
  {
    return -2;
  }
  
  public int d(int paramInt)
  {
    int n = 0;
    int i1;
    for (int m = 0; n < 6; m = i1 + m)
    {
      if (n == paramInt) {
        return m;
      }
      i1 = a(n);
      n += 1;
    }
    ezi.d("Babel", 33 + "categoryId not found: " + paramInt, new Object[0]);
    return 0;
  }
  
  public void e()
  {
    c.b();
  }
}

/* Location:
 * Qualified Name:     cbg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */