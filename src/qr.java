import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.v4.widget.NestedScrollView;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public final class qr
{
  private boolean A = false;
  private CharSequence B;
  private CharSequence C;
  private CharSequence D;
  private int E = 0;
  private Drawable F;
  private ImageView G;
  private TextView H;
  private TextView I;
  private View J;
  private int K;
  private int L;
  private int M = 0;
  private final View.OnClickListener N = new qs(this);
  final sa a;
  ListView b;
  Button c;
  Message d;
  Button e;
  Message f;
  Button g;
  Message h;
  NestedScrollView i;
  ListAdapter j;
  int k = -1;
  int l;
  int m;
  int n;
  int o;
  Handler p;
  private final Context q;
  private final Window r;
  private CharSequence s;
  private CharSequence t;
  private View u;
  private int v;
  private int w;
  private int x;
  private int y;
  private int z;
  
  public qr(Context paramContext, sa paramsa, Window paramWindow)
  {
    q = paramContext;
    a = paramsa;
    r = paramWindow;
    p = new rb(paramsa);
    paramContext = paramContext.obtainStyledAttributes(null, sb.H, aen.G, 0);
    K = paramContext.getResourceId(sb.I, 0);
    L = paramContext.getResourceId(sb.J, 0);
    l = paramContext.getResourceId(sb.L, 0);
    m = paramContext.getResourceId(sb.M, 0);
    n = paramContext.getResourceId(sb.N, 0);
    o = paramContext.getResourceId(sb.K, 0);
    paramContext.recycle();
  }
  
  private static ViewGroup a(View paramView1, View paramView2)
  {
    if (paramView1 == null) {
      if (!(paramView2 instanceof ViewStub)) {
        break label71;
      }
    }
    label71:
    for (paramView1 = ((ViewStub)paramView2).inflate();; paramView1 = paramView2)
    {
      return (ViewGroup)paramView1;
      if (paramView2 != null)
      {
        ViewParent localViewParent = paramView2.getParent();
        if ((localViewParent instanceof ViewGroup)) {
          ((ViewGroup)localViewParent).removeView(paramView2);
        }
      }
      if ((paramView1 instanceof ViewStub)) {
        paramView1 = ((ViewStub)paramView1).inflate();
      }
      for (;;)
      {
        return (ViewGroup)paramView1;
      }
    }
  }
  
  private static boolean c(View paramView)
  {
    if (paramView.onCheckIsTextEditor()) {
      return true;
    }
    if (!(paramView instanceof ViewGroup)) {
      return false;
    }
    paramView = (ViewGroup)paramView;
    int i1 = paramView.getChildCount();
    while (i1 > 0)
    {
      int i2 = i1 - 1;
      i1 = i2;
      if (c(paramView.getChildAt(i2))) {
        return true;
      }
    }
    return false;
  }
  
  public void a()
  {
    int i4 = 0;
    a.a();
    int i1;
    Object localObject1;
    Object localObject5;
    Object localObject4;
    Object localObject3;
    Object localObject2;
    label107:
    label114:
    label219:
    label349:
    label396:
    label441:
    label486:
    label492:
    label549:
    label566:
    int i3;
    label583:
    int i2;
    if ((L != 0) && (M == 1))
    {
      i1 = L;
      a.setContentView(i1);
      localObject1 = r.findViewById(aal.aO);
      localObject5 = ((View)localObject1).findViewById(aal.aY);
      localObject4 = ((View)localObject1).findViewById(aal.aF);
      localObject3 = ((View)localObject1).findViewById(aal.aE);
      localObject2 = (ViewGroup)((View)localObject1).findViewById(aal.aH);
      if (u == null) {
        break label814;
      }
      localObject1 = u;
      if (localObject1 == null) {
        break label849;
      }
      i1 = 1;
      if ((i1 == 0) || (!c((View)localObject1))) {
        r.setFlags(131072, 131072);
      }
      if (i1 == 0) {
        break label854;
      }
      Object localObject6 = (FrameLayout)r.findViewById(aal.aG);
      ((FrameLayout)localObject6).addView((View)localObject1, new ViewGroup.LayoutParams(-1, -1));
      if (A) {
        ((FrameLayout)localObject6).setPadding(w, x, y, z);
      }
      if (b != null) {
        getLayoutParamsweight = 0.0F;
      }
      localObject1 = ((ViewGroup)localObject2).findViewById(aal.aY);
      View localView = ((ViewGroup)localObject2).findViewById(aal.aF);
      localObject6 = ((ViewGroup)localObject2).findViewById(aal.aE);
      localObject1 = a((View)localObject1, (View)localObject5);
      localObject4 = a(localView, (View)localObject4);
      localObject3 = a((View)localObject6, (View)localObject3);
      i = ((NestedScrollView)r.findViewById(aal.aR));
      i.setFocusable(false);
      i.setNestedScrollingEnabled(false);
      I = ((TextView)((ViewGroup)localObject4).findViewById(16908299));
      if (I != null)
      {
        if (t == null) {
          break label864;
        }
        I.setText(t);
      }
      c = ((Button)((ViewGroup)localObject3).findViewById(16908313));
      c.setOnClickListener(N);
      if (!TextUtils.isEmpty(B)) {
        break label951;
      }
      c.setVisibility(8);
      i1 = 0;
      e = ((Button)((ViewGroup)localObject3).findViewById(16908314));
      e.setOnClickListener(N);
      if (!TextUtils.isEmpty(C)) {
        break label975;
      }
      e.setVisibility(8);
      g = ((Button)((ViewGroup)localObject3).findViewById(16908315));
      g.setOnClickListener(N);
      if (!TextUtils.isEmpty(D)) {
        break label1001;
      }
      g.setVisibility(8);
      if (i1 == 0) {
        break label1027;
      }
      i1 = 1;
      if (i1 == 0) {
        ((ViewGroup)localObject3).setVisibility(8);
      }
      if (J == null) {
        break label1032;
      }
      localObject5 = new ViewGroup.LayoutParams(-1, -2);
      ((ViewGroup)localObject1).addView(J, 0, (ViewGroup.LayoutParams)localObject5);
      r.findViewById(aal.aX).setVisibility(8);
      if ((localObject2 == null) || (((ViewGroup)localObject2).getVisibility() == 8)) {
        break label1221;
      }
      i1 = 1;
      if ((localObject1 == null) || (((ViewGroup)localObject1).getVisibility() == 8)) {
        break label1226;
      }
      i3 = 1;
      if ((localObject3 == null) || (((ViewGroup)localObject3).getVisibility() == 8)) {
        break label1231;
      }
      i2 = 1;
      label600:
      if ((i2 == 0) && (localObject4 != null))
      {
        localObject1 = ((ViewGroup)localObject4).findViewById(aal.aV);
        if (localObject1 != null) {
          ((View)localObject1).setVisibility(0);
        }
      }
      if ((i3 != 0) && (i != null)) {
        i.setClipToPadding(true);
      }
      if (i1 == 0)
      {
        if (b == null) {
          break label1236;
        }
        localObject1 = b;
        label666:
        if (localObject1 != null)
        {
          if (i3 == 0) {
            break label1245;
          }
          i1 = 1;
          label677:
          i3 = i4;
          if (i2 != 0) {
            i3 = 2;
          }
          i1 = i3 | i1;
          localObject2 = r.findViewById(aal.aQ);
          localObject3 = r.findViewById(aal.aP);
          if (Build.VERSION.SDK_INT < 23) {
            break label1250;
          }
          ks.a.a((View)localObject1, i1, 3);
          if (localObject2 != null) {
            ((ViewGroup)localObject4).removeView((View)localObject2);
          }
          if (localObject3 != null) {
            ((ViewGroup)localObject4).removeView((View)localObject3);
          }
        }
      }
    }
    for (;;)
    {
      localObject1 = b;
      if ((localObject1 != null) && (j != null))
      {
        ((ListView)localObject1).setAdapter(j);
        i1 = k;
        if (i1 >= 0)
        {
          ((ListView)localObject1).setItemChecked(i1, true);
          ((ListView)localObject1).setSelection(i1);
        }
      }
      return;
      i1 = K;
      break;
      label814:
      if (v != 0)
      {
        localObject1 = LayoutInflater.from(q).inflate(v, (ViewGroup)localObject2, false);
        break label107;
      }
      localObject1 = null;
      break label107;
      label849:
      i1 = 0;
      break label114;
      label854:
      ((ViewGroup)localObject2).setVisibility(8);
      break label219;
      label864:
      I.setVisibility(8);
      i.removeView(I);
      if (b != null)
      {
        localObject5 = (ViewGroup)i.getParent();
        i1 = ((ViewGroup)localObject5).indexOfChild(i);
        ((ViewGroup)localObject5).removeViewAt(i1);
        ((ViewGroup)localObject5).addView(b, i1, new ViewGroup.LayoutParams(-1, -1));
        break label349;
      }
      ((ViewGroup)localObject4).setVisibility(8);
      break label349;
      label951:
      c.setText(B);
      c.setVisibility(0);
      i1 = 1;
      break label396;
      label975:
      e.setText(C);
      e.setVisibility(0);
      i1 |= 0x2;
      break label441;
      label1001:
      g.setText(D);
      g.setVisibility(0);
      i1 |= 0x4;
      break label486;
      label1027:
      i1 = 0;
      break label492;
      label1032:
      G = ((ImageView)r.findViewById(16908294));
      if (!TextUtils.isEmpty(s)) {
        i1 = 1;
      }
      for (;;)
      {
        if (i1 != 0)
        {
          H = ((TextView)r.findViewById(aal.aD));
          H.setText(s);
          if (E != 0)
          {
            G.setImageResource(E);
            break;
            i1 = 0;
            continue;
          }
          if (F != null)
          {
            G.setImageDrawable(F);
            break;
          }
          H.setPadding(G.getPaddingLeft(), G.getPaddingTop(), G.getPaddingRight(), G.getPaddingBottom());
          G.setVisibility(8);
          break;
        }
      }
      r.findViewById(aal.aX).setVisibility(8);
      G.setVisibility(8);
      ((ViewGroup)localObject1).setVisibility(8);
      break label549;
      label1221:
      i1 = 0;
      break label566;
      label1226:
      i3 = 0;
      break label583;
      label1231:
      i2 = 0;
      break label600;
      label1236:
      localObject1 = i;
      break label666;
      label1245:
      i1 = 0;
      break label677;
      label1250:
      localObject1 = localObject2;
      if (localObject2 != null)
      {
        localObject1 = localObject2;
        if ((i1 & 0x1) == 0)
        {
          ((ViewGroup)localObject4).removeView((View)localObject2);
          localObject1 = null;
        }
      }
      localObject2 = localObject3;
      if (localObject3 != null)
      {
        localObject2 = localObject3;
        if ((i1 & 0x2) == 0)
        {
          ((ViewGroup)localObject4).removeView((View)localObject3);
          localObject2 = null;
        }
      }
      if ((localObject1 != null) || (localObject2 != null)) {
        if (t != null)
        {
          i.a(new pg(this, (View)localObject1, (View)localObject2));
          i.post(new qt(this, (View)localObject1, (View)localObject2));
        }
        else if (b != null)
        {
          b.setOnScrollListener(new qu(this, (View)localObject1, (View)localObject2));
          b.post(new qv(this, (View)localObject1, (View)localObject2));
        }
        else
        {
          if (localObject1 != null) {
            ((ViewGroup)localObject4).removeView((View)localObject1);
          }
          if (localObject2 != null) {
            ((ViewGroup)localObject4).removeView((View)localObject2);
          }
        }
      }
    }
  }
  
  public void a(int paramInt)
  {
    u = null;
    v = paramInt;
    A = false;
  }
  
  public void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    if (paramOnClickListener != null) {
      paramMessage = p.obtainMessage(paramInt, paramOnClickListener);
    }
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Button does not exist");
    case -1: 
      B = paramCharSequence;
      d = paramMessage;
      return;
    case -2: 
      C = paramCharSequence;
      f = paramMessage;
      return;
    }
    D = paramCharSequence;
    h = paramMessage;
  }
  
  public void a(Drawable paramDrawable)
  {
    F = paramDrawable;
    E = 0;
    if (G != null)
    {
      if (paramDrawable != null) {
        G.setImageDrawable(paramDrawable);
      }
    }
    else {
      return;
    }
    G.setVisibility(8);
  }
  
  public void a(View paramView)
  {
    J = paramView;
  }
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    u = paramView;
    v = 0;
    A = true;
    w = paramInt1;
    x = paramInt2;
    y = paramInt3;
    z = paramInt4;
  }
  
  public void a(CharSequence paramCharSequence)
  {
    s = paramCharSequence;
    if (H != null) {
      H.setText(paramCharSequence);
    }
  }
  
  public boolean a(KeyEvent paramKeyEvent)
  {
    return (i != null) && (i.a(paramKeyEvent));
  }
  
  public void b(int paramInt)
  {
    F = null;
    E = paramInt;
    if (G != null)
    {
      if (paramInt != 0) {
        G.setImageResource(E);
      }
    }
    else {
      return;
    }
    G.setVisibility(8);
  }
  
  public void b(View paramView)
  {
    u = paramView;
    v = 0;
    A = false;
  }
  
  public void b(CharSequence paramCharSequence)
  {
    t = paramCharSequence;
    if (I != null) {
      I.setText(paramCharSequence);
    }
  }
  
  public boolean b(KeyEvent paramKeyEvent)
  {
    return (i != null) && (i.a(paramKeyEvent));
  }
  
  public int c(int paramInt)
  {
    TypedValue localTypedValue = new TypedValue();
    q.getTheme().resolveAttribute(paramInt, localTypedValue, true);
    return resourceId;
  }
}

/* Location:
 * Qualified Name:     qr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */