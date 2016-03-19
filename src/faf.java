import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.views.AvatarView;
import java.util.List;

final class faf
  extends ArrayAdapter<fac>
{
  public faf(Context paramContext, List<fac> paramList)
  {
    super(paramList, aen.jU, localList);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Object localObject;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(getContext()).inflate(aen.jU, paramViewGroup, false);
      paramViewGroup = new fag(this, (TextView)paramView.findViewById(fii.r), (TextView)paramView.findViewById(fii.q), (AvatarView)paramView.findViewById(fii.o), (ImageView)paramView.findViewById(fii.p));
      paramView.setTag(paramViewGroup);
      localObject = (fac)getItem(paramInt);
      a.setText(a);
      if (TextUtils.isEmpty(b)) {
        break label205;
      }
      b.setText(b);
      b.setVisibility(0);
    }
    for (;;)
    {
      if (!d) {
        break label217;
      }
      c.a(c, a, dvd.e(((hpu)a.an.a(hpu.class)).a()));
      c.setVisibility(0);
      d.setVisibility(8);
      return paramView;
      paramViewGroup = (fag)paramView.getTag();
      break;
      label205:
      b.setVisibility(8);
    }
    label217:
    if (e != 0)
    {
      localObject = a.getResources().getDrawable(e);
      paramInt = a.getResources().getColor(aal.rY);
      ((Drawable)localObject).mutate().setColorFilter(paramInt, PorterDuff.Mode.MULTIPLY);
      d.setImageDrawable((Drawable)localObject);
      d.setVisibility(0);
      c.setVisibility(8);
      return paramView;
    }
    c.setVisibility(8);
    d.setVisibility(8);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     faf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */