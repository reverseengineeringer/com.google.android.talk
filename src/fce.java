import android.content.Context;
import android.content.res.Resources;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.views.AvatarView;
import java.util.Locale;

public final class fce
  extends fbe
{
  bdy b;
  private SpannableStringBuilder c = new SpannableStringBuilder();
  private bfd d;
  private int e;
  private AvatarView f;
  private ImageView g;
  private TextView h;
  private TextView i;
  private ImageView j;
  private boolean k;
  private ViewGroup l;
  private fct m;
  private feg n;
  
  public fce(Context paramContext, bfd parambfd)
  {
    this(paramContext, parambfd, null, true);
  }
  
  public fce(Context paramContext, bfd parambfd, axq paramaxq)
  {
    this(paramContext, parambfd, paramaxq, false);
  }
  
  private fce(Context paramContext, bfd parambfd, axq paramaxq, boolean paramBoolean)
  {
    super(paramContext);
    d = parambfd;
    if (paramaxq != null) {
      new fci(this, paramaxq);
    }
    View localView = LayoutInflater.from(paramContext).inflate(aal.gz, this);
    f = ((AvatarView)localView.findViewById(aen.az));
    f.d();
    g = ((ImageView)localView.findViewById(aen.aV));
    h = ((TextView)localView.findViewById(aen.eq));
    i = ((TextView)localView.findViewById(aen.bA));
    j = ((ImageView)localView.findViewById(aen.dh));
    epk localepk = (epk)ilh.b(paramContext, epk.class);
    if (localepk == null)
    {
      n = new feg(i);
      l = ((ViewGroup)localView.findViewById(aen.dM));
      paramaxq = (feu)ilh.b(paramContext, feu.class);
      if (paramaxq != null) {
        m = paramaxq.a(l, parambfd.g(), LayoutInflater.from(paramContext));
      }
    }
    else
    {
      iog localiog = (iog)ilh.b(getContext()).a(ino.class);
      if (paramBoolean) {}
      for (paramaxq = this;; paramaxq = null)
      {
        n = localepk.a(localiog, parambfd.g(), i, paramaxq);
        break;
      }
    }
    l.setVisibility(8);
  }
  
  public bdy a()
  {
    return b;
  }
  
  public void a(bdy parambdy, String paramString, boolean paramBoolean, int paramInt)
  {
    b = parambdy;
    e = paramInt;
    String str2 = parambdy.e();
    k = paramBoolean;
    if (parambdy.n())
    {
      j.setVisibility(0);
      n.a(parambdy.e(), parambdy.i());
      if (m != null)
      {
        m.a(parambdy.n());
        m.a(parambdy.i());
      }
    }
    for (;;)
    {
      f.a(parambdy.f(), str2, d);
      if (paramBoolean)
      {
        g.setImageResource(R.drawable.bY);
        g.setContentDescription(getResources().getText(StressMode.ao));
      }
      parambdy = paramString;
      if (paramString != null) {
        parambdy = paramString.toUpperCase(Locale.getDefault());
      }
      a(h, str2, c, parambdy);
      return;
      Object localObject;
      if (parambdy.q()) {
        localObject = parambdy.a().c();
      }
      for (;;)
      {
        if ((localObject == null) || (((String)localObject).equals(str2))) {
          break label230;
        }
        i.setText((CharSequence)localObject);
        break;
        String str1 = parambdy.c();
        localObject = str1;
        if (TextUtils.isEmpty(str1)) {
          localObject = null;
        }
      }
      label230:
      i.setVisibility(8);
    }
  }
  
  public void a(fch paramfch)
  {
    Object localObject1 = null;
    if (paramfch != null)
    {
      localObject1 = new fcf(this, paramfch);
      paramfch = new fcg(this, paramfch);
    }
    for (;;)
    {
      f.setOnClickListener((View.OnClickListener)localObject1);
      setOnLongClickListener(paramfch);
      return;
      Object localObject2 = null;
      paramfch = (fch)localObject1;
      localObject1 = localObject2;
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    View localView = findViewById(aen.aV);
    if ((localView instanceof Checkable)) {
      ((Checkable)localView).setChecked(isChecked());
    }
    a(localView, paramBoolean);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    super.a(paramBoolean1, paramBoolean2);
    ImageView localImageView;
    if (!k)
    {
      localImageView = g;
      if (!paramBoolean1) {
        break label44;
      }
    }
    label44:
    for (Object localObject = getContext().getResources().getText(StressMode.an);; localObject = "")
    {
      localImageView.setContentDescription((CharSequence)localObject);
      return;
    }
  }
  
  public int b()
  {
    return e;
  }
  
  public void k()
  {
    super.k();
    h.setText(null);
    n.a();
    g.setImageResource(R.drawable.bN);
    if (m != null)
    {
      m.a(false);
      m.a(null);
    }
    j.setVisibility(8);
    i.setVisibility(0);
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (TextUtils.isEmpty(paramAccessibilityNodeInfo.getText()))
    {
      SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
      if ((g != null) && (!TextUtils.isEmpty(g.getContentDescription()))) {
        ezc.a(localSpannableStringBuilder, g.getContentDescription());
      }
      if ((h != null) && (!TextUtils.isEmpty(h.getText()))) {
        ezc.a(localSpannableStringBuilder, h.getText());
      }
      if ((i != null) && (!TextUtils.isEmpty(i.getText()))) {
        ezc.a(localSpannableStringBuilder, i.getText());
      }
      if ((l != null) && (!TextUtils.isEmpty(l.getContentDescription()))) {
        ezc.a(localSpannableStringBuilder, l.getContentDescription());
      }
      paramAccessibilityNodeInfo.setText(localSpannableStringBuilder);
      paramAccessibilityNodeInfo.setContentDescription(localSpannableStringBuilder);
    }
  }
}

/* Location:
 * Qualified Name:     fce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */