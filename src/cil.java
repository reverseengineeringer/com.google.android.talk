import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public final class cil
  extends RelativeLayout
  implements cio
{
  private cim a;
  
  public cil(Context paramContext, int paramInt, RelativeLayout.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    super(paramContext);
    paramContext = (ImageView)LayoutInflater.from(paramContext).inflate(aal.fR, this, true).findViewById(aen.eJ);
    paramContext.setImageResource(paramInt);
    paramContext.setLayoutParams(paramLayoutParams);
    if (paramBoolean) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      return;
    }
  }
  
  public View a()
  {
    return this;
  }
  
  public void a(cim paramcim)
  {
    a = paramcim;
  }
  
  public void a(hkx paramhkx)
  {
    if (a != null) {
      a.a(paramhkx);
    }
  }
}

/* Location:
 * Qualified Name:     cil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */