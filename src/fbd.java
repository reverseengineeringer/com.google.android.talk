import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.AvatarView;
import com.google.android.apps.hangouts.views.ContactDetailItemView;
import java.util.Locale;

public final class fbd
  extends fbe
{
  private static final boolean b = false;
  private final LinearLayout c;
  private final int d;
  private final TextView e;
  private final AvatarView f;
  private final View g;
  private final ContactDetailItemView h;
  private final TextView i;
  private final TextView j;
  private final bfd k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private int q;
  private int r;
  private int s;
  private bzq t;
  private bzi u;
  private String v;
  private final SpannableStringBuilder w = new SpannableStringBuilder();
  
  static
  {
    imx localimx = ezi.u;
  }
  
  public fbd(Context paramContext, bfd parambfd)
  {
    this(paramContext, parambfd, (byte)0);
  }
  
  private fbd(Context paramContext, bfd parambfd, byte paramByte)
  {
    super(paramContext, null);
    k = parambfd;
    paramContext = LayoutInflater.from(paramContext).inflate(aal.fa, this);
    c = ((LinearLayout)paramContext.findViewById(aen.dY));
    d = c.getPaddingTop();
    e = ((TextView)paramContext.findViewById(aen.eq));
    f = ((AvatarView)paramContext.findViewById(aen.az));
    g = paramContext.findViewById(aen.aE);
    h = ((ContactDetailItemView)paramContext.findViewById(aen.ba));
    i = ((TextView)paramContext.findViewById(aen.gL));
    j = ((TextView)paramContext.findViewById(aen.fh));
  }
  
  private boolean a(int paramInt)
  {
    return (s & paramInt) != 0;
  }
  
  public bzq a()
  {
    return t;
  }
  
  public void a(String paramString)
  {
    if (paramString == null)
    {
      v = null;
      return;
    }
    v = paramString.toUpperCase(Locale.getDefault());
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, bzq parambzq, bzi parambzi, int paramInt3)
  {
    l = paramString1;
    m = paramString2;
    n = paramString3;
    o = paramString4;
    t = parambzq;
    q = paramInt1;
    r = paramInt2;
    p = null;
    u = parambzi;
    s = paramInt3;
    if (b)
    {
      paramString1 = String.valueOf(m);
      if (paramString1.length() != 0) {
        "Redrawing call contact item: mName=".concat(paramString1);
      }
    }
    else
    {
      if (!a(2)) {
        break label524;
      }
      e.setVisibility(0);
      a(e, m, w, v);
      label120:
      if (!a(1)) {
        break label542;
      }
      c.setPadding(c.getPaddingLeft(), d, c.getPaddingRight(), c.getPaddingBottom());
      f.setVisibility(0);
      f.a(o, m, k);
      paramString1 = f;
      if (q != 1) {
        break label536;
      }
      paramInt1 = 3;
      label203:
      paramString1.a(paramInt1);
      g.setVisibility(8);
      label218:
      paramString2 = null;
      if ((q != 1) || (TextUtils.isEmpty(p))) {
        break label601;
      }
      paramString1 = new bzr(p);
      label250:
      h.setText("");
      if (paramString1 != null) {
        h.a(paramString1, v);
      }
      j.setText("");
      j.setContentDescription(null);
      if ((u == null) || (!a(8))) {
        break label832;
      }
      paramInt1 = R.drawable.aD;
      long l1 = u.c();
      long l2 = System.currentTimeMillis();
      paramString1 = aal.b(l1, l2, false);
      paramString2 = aal.b(l1, l2, true);
      switch (u.d())
      {
      default: 
        ezi.e("Babel", "unsupported call type!", new Object[0]);
        label393:
        i.setVisibility(0);
        i.setText(paramString1);
        i.setCompoundDrawablesWithIntrinsicBounds(paramInt1, 0, 0, 0);
        if ((!u.f()) && (!TextUtils.isEmpty(u.e())))
        {
          j.setText(getResources().getString(StressMode.bv, new Object[] { u.e() }));
          j.setContentDescription(getResources().getString(StressMode.bw, new Object[] { u.e() }));
        }
        break;
      }
    }
    for (;;)
    {
      invalidate();
      return;
      new String("Redrawing call contact item: mName=");
      break;
      label524:
      e.setVisibility(8);
      break label120;
      label536:
      paramInt1 = 2;
      break label203;
      label542:
      c.setPadding(c.getPaddingLeft(), 0, c.getPaddingRight(), c.getPaddingBottom());
      g.setVisibility(0);
      f.setVisibility(8);
      f.a(null, null, null);
      break label218;
      label601:
      paramString1 = paramString2;
      if (t == null) {
        break label250;
      }
      paramString1 = t.e();
      if (paramString1 != null)
      {
        if (!i())
        {
          paramString3 = ezm.a(ezm.g(a));
          paramString1 = paramString2;
          if (paramString3 == null) {
            break label250;
          }
          paramString1 = new bzr(new Locale(Locale.getDefault().getLanguage(), paramString3).getDisplayCountry());
          break label250;
        }
        break label250;
      }
      paramString1 = m;
      ezi.e("Babel", String.valueOf(paramString1).length() + 45 + "Call contact item " + paramString1 + " doesn't have phone number!", new Object[0]);
      paramString1 = paramString2;
      break label250;
      paramInt1 = R.drawable.aD;
      i.setContentDescription(getResources().getString(StressMode.bm, new Object[] { paramString2 }));
      break label393;
      paramInt1 = R.drawable.aF;
      i.setContentDescription(getResources().getString(StressMode.bo, new Object[] { paramString2 }));
      break label393;
      paramInt1 = R.drawable.aE;
      i.setContentDescription(getResources().getString(StressMode.bn, new Object[] { paramString2 }));
      break label393;
      label832:
      i.setVisibility(8);
      i.setText("");
      i.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
    }
  }
  
  public bzi b()
  {
    return u;
  }
  
  public String c()
  {
    return l;
  }
  
  public String d()
  {
    if (u != null) {
      return u.a();
    }
    return null;
  }
  
  public String e()
  {
    if (i()) {
      return m;
    }
    return null;
  }
  
  public String f()
  {
    return n;
  }
  
  public String g()
  {
    return o;
  }
  
  public int h()
  {
    return q;
  }
  
  public boolean i()
  {
    return (r != 2) && (!a(16));
  }
}

/* Location:
 * Qualified Name:     fbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */