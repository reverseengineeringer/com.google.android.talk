import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public final class hpl
  extends hpi
{
  public hpl(Context paramContext)
  {
    super(paramContext, aal.tn);
  }
  
  protected Object a(int paramInt, View paramView)
  {
    hpk localhpk = (hpk)getItem(paramInt);
    if ((localhpk instanceof hpn)) {
      return new hpm(paramView);
    }
    if ((localhpk instanceof hpo)) {
      return null;
    }
    paramView = String.valueOf(localhpk.getClass().getSimpleName());
    if (paramView.length() != 0) {}
    for (paramView = "Unsupported item: ".concat(paramView);; paramView = new String("Unsupported item: ")) {
      throw new IllegalStateException(paramView);
    }
  }
  
  protected void a(int paramInt, Object paramObject)
  {
    Object localObject = (hpk)getItem(paramInt);
    if ((localObject instanceof hpn))
    {
      localObject = (hpn)localObject;
      localhpm = (hpm)paramObject;
      a.setText(((hpn)localObject).d());
      localTextView = a;
      if (((hpn)localObject).e() == null)
      {
        paramObject = getContext().getResources().getColorStateList(aal.tj);
        localTextView.setTextColor((ColorStateList)paramObject);
        if (((hpn)localObject).f() != null) {
          break label116;
        }
        b.setVisibility(8);
        if (((hpn)localObject).g() != null) {
          break label140;
        }
        c.setVisibility(8);
      }
    }
    label116:
    label140:
    while ((localObject instanceof hpo))
    {
      hpm localhpm;
      for (;;)
      {
        TextView localTextView;
        return;
        paramObject = ((hpn)localObject).e();
        continue;
        b.setImageDrawable(((hpn)localObject).f());
        b.setVisibility(0);
      }
      c.setImageDrawable(((hpn)localObject).g());
      c.setVisibility(0);
      return;
    }
    paramObject = String.valueOf(localObject.getClass().getSimpleName());
    if (((String)paramObject).length() != 0) {}
    for (paramObject = "Unsupported item: ".concat((String)paramObject);; paramObject = new String("Unsupported item: ")) {
      throw new IllegalStateException((String)paramObject);
    }
  }
  
  public int getItemViewType(int paramInt)
  {
    if ((getItem(paramInt) instanceof hpn)) {
      return 0;
    }
    return 1;
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     hpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */