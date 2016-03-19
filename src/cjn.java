import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;

public final class cjn
  extends cgp
{
  private final int g;
  private final int h;
  private final String i;
  
  public cjn(Context paramContext, hkx paramhkx, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, View.OnClickListener paramOnClickListener)
  {
    super(paramContext, paramhkx, paramInt3, paramInt4, paramInt1, paramBoolean1, paramBoolean2, paramString1, paramOnClickListener);
    g = paramInt2;
    h = paramInt5;
    i = paramString2;
  }
  
  public View a(LayoutInflater paramLayoutInflater, int paramInt, ViewGroup paramViewGroup)
  {
    paramLayoutInflater = super.a(paramLayoutInflater, paramInt, paramViewGroup);
    ((ImageButton)paramLayoutInflater.findViewById(a)).setOnTouchListener(new cjo(this));
    a(e);
    return paramLayoutInflater;
  }
  
  public void a(boolean paramBoolean)
  {
    ImageButton localImageButton = (ImageButton)f.findViewById(a);
    Object localObject = (GradientDrawable)localImageButton.getBackground().mutate();
    int j;
    if (paramBoolean)
    {
      j = getResources().getColor(c);
      ((GradientDrawable)localObject).setColor(j);
      if (!paramBoolean) {
        break label100;
      }
      j = b;
      label58:
      localImageButton.setImageResource(j);
      if (!paramBoolean) {
        break label108;
      }
    }
    label100:
    label108:
    for (localObject = d;; localObject = i)
    {
      localImageButton.setContentDescription((CharSequence)localObject);
      e = paramBoolean;
      return;
      j = getResources().getColor(g);
      break;
      j = h;
      break label58;
    }
  }
}

/* Location:
 * Qualified Name:     cjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */