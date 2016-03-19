import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.google.android.apps.hangouts.views.RichStatusView;

public final class feh
{
  public boolean a;
  public final View b;
  public final ImageView c;
  public int d;
  
  public feh(RichStatusView paramRichStatusView, int paramInt1, int paramInt2, int paramInt3)
  {
    b = paramRichStatusView.findViewById(paramInt1);
    hbs.b("Expected non-null", b);
    c = ((ImageView)paramRichStatusView.findViewById(paramInt2));
    hbs.b("Expected non-null", c);
    d = paramInt3;
  }
  
  public void a(int paramInt)
  {
    b.getLayoutParams().width = paramInt;
    b.requestLayout();
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject;
    if (a != paramBoolean)
    {
      localObject = new fej(this, d, paramBoolean);
      ((fej)localObject).setDuration(250L);
      ((fej)localObject).setAnimationListener(new fei(this, paramBoolean));
      b.startAnimation((Animation)localObject);
      localObject = e;
      i = 0;
      if (i >= 3) {
        break label110;
      }
      if (a[i].b.getVisibility() != 0) {
        break label94;
      }
    }
    label94:
    label110:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        ((RichStatusView)localObject).setVisibility(0);
      }
      for (;;)
      {
        a = paramBoolean;
        return;
        i += 1;
        break;
        ((RichStatusView)localObject).setVisibility(8);
      }
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    c.setImageResource(paramInt1);
    c.setColorFilter(paramInt2, PorterDuff.Mode.SRC_IN);
    if (paramInt1 != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return bool;
    }
  }
  
  public void b(int paramInt)
  {
    b.getBackground().setColorFilter(paramInt, PorterDuff.Mode.SRC_IN);
  }
}

/* Location:
 * Qualified Name:     feh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */