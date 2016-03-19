import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;

public class cgp
  extends FrameLayout
{
  public final int a;
  public final int b;
  public final int c;
  public final String d;
  public boolean e;
  public View f;
  private final hkx g;
  private boolean h;
  private View.OnClickListener i;
  private cgq j;
  
  public cgp(Context paramContext, hkx paramhkx, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, String paramString, View.OnClickListener paramOnClickListener)
  {
    super(paramContext);
    g = paramhkx;
    a = paramInt1;
    b = paramInt2;
    c = paramInt3;
    h = paramBoolean1;
    e = paramBoolean2;
    d = paramString;
    i = paramOnClickListener;
  }
  
  public View a(LayoutInflater paramLayoutInflater, int paramInt, ViewGroup paramViewGroup)
  {
    f = paramLayoutInflater.inflate(paramInt, paramViewGroup, false);
    paramLayoutInflater = (ImageButton)f.findViewById(a);
    paramLayoutInflater.setImageResource(b);
    a(e);
    b(h);
    setOnClickListener(i);
    ((GradientDrawable)paramLayoutInflater.getBackground().mutate()).setColor(getResources().getColor(c));
    paramLayoutInflater.setContentDescription(d);
    return f;
  }
  
  public void a(cgq paramcgq)
  {
    j = paramcgq;
  }
  
  public void a(cgw paramcgw)
  {
    if (j != null) {
      j.a(paramcgw);
    }
  }
  
  public void a(hkx paramhkx)
  {
    if ((j != null) && (g.equals(paramhkx))) {
      j.a(paramhkx);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
    View localView;
    if (f != null)
    {
      ((ImageButton)f.findViewById(a)).setEnabled(paramBoolean);
      localView = f;
      if (!paramBoolean) {
        break label47;
      }
    }
    label47:
    for (float f1 = 1.0F;; f1 = 0.2F)
    {
      localView.setAlpha(f1);
      return;
    }
  }
  
  public boolean a()
  {
    return e;
  }
  
  public void b(boolean paramBoolean)
  {
    h = paramBoolean;
    View localView;
    if (f != null)
    {
      localView = f;
      if (!paramBoolean) {
        break label29;
      }
    }
    label29:
    for (int k = 0;; k = 8)
    {
      localView.setVisibility(k);
      return;
    }
  }
  
  public boolean b()
  {
    return h;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    i = paramOnClickListener;
    if (f != null) {
      ((ImageButton)f.findViewById(a)).setOnClickListener(paramOnClickListener);
    }
  }
}

/* Location:
 * Qualified Name:     cgp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */