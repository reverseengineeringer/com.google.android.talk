import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.google.android.apps.hangouts.fragments.HiddenContactsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class cby
  extends og
{
  public cby(HiddenContactsFragment paramHiddenContactsFragment, Context paramContext)
  {
    super(paramContext, null);
    d = paramContext;
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = new fcp(paramContext);
    paramContext.a(j.f);
    return paramContext;
  }
  
  public void a(View paramView, Cursor paramCursor)
  {
    paramView = (fcp)paramView;
    paramView.a(paramCursor.getString(3));
    paramView.a(paramCursor.getString(4), paramCursor.getString(3), dvd.e(j.a.a()));
    paramView.a(new czb(paramCursor.getString(2), paramCursor.getString(1)));
  }
  
  public Cursor b(Cursor paramCursor)
  {
    return super.b(paramCursor);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= getCount())
    {
      localObject = paramView;
      if (paramView == null) {
        localObject = a(d, a(), paramViewGroup);
      }
      return (View)localObject;
    }
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    paramViewGroup = (Button)paramView.findViewById(aen.hc);
    Object localObject = aa;
    boolean bool = aal.a(j.e, localObject);
    if (bool)
    {
      paramInt = StressMode.sh;
      if (bool) {
        break label115;
      }
    }
    label115:
    for (bool = true;; bool = false)
    {
      paramViewGroup.setText(paramInt);
      paramViewGroup.setClickable(bool);
      return paramView;
      paramInt = StressMode.sg;
      break;
    }
  }
  
  public boolean isEmpty()
  {
    if (a() == null) {
      return true;
    }
    return super.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     cby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */