import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.views.AvatarView;

public final class czq
  extends hpi
{
  public czq(Context paramContext)
  {
    super(paramContext, aal.tn);
  }
  
  protected Object a(int paramInt, View paramView)
  {
    hpk localhpk = (hpk)getItem(paramInt);
    if ((localhpk instanceof hpn)) {
      return new czs(paramView);
    }
    if ((localhpk instanceof czz)) {
      return new czr(paramView);
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
      paramObject = (czs)paramObject;
      a.setText(((hpn)localObject).d());
      b.setImageDrawable(((hpn)localObject).f());
      b.setVisibility(0);
      c.setVisibility(8);
      a.setTextColor(((hpn)localObject).e());
      return;
    }
    if ((localObject instanceof czz))
    {
      localObject = (czz)localObject;
      czr localczr = (czr)paramObject;
      bfd localbfd = dvd.e(((hpu)ilh.a(getContext(), hpu.class)).a());
      a.setText(ezc.d(((czz)localObject).c()));
      d.a(((czz)localObject).e(), ((czz)localObject).c(), localbfd);
      if (((czz)localObject).f())
      {
        paramObject = (epk)ilh.b(getContext(), epk.class);
        if (paramObject == null) {}
        for (paramObject = new feg(b);; paramObject = ((epk)paramObject).a((iog)ilh.a(getContext(), ino.class), localbfd.g(), b, null))
        {
          ((feg)paramObject).a(((czz)localObject).c(), ((czz)localObject).d());
          paramObject = (feu)ilh.b(getContext(), feu.class);
          if (paramObject != null)
          {
            paramObject = ((feu)paramObject).a(c, localbfd.g(), LayoutInflater.from(getContext()));
            ((fct)paramObject).a(((czz)localObject).f());
            ((fct)paramObject).a(((czz)localObject).d());
          }
          e.setImageResource(R.drawable.aC);
          e.setVisibility(0);
          return;
        }
      }
      b.setVisibility(8);
      e.setVisibility(8);
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
 * Qualified Name:     czq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */