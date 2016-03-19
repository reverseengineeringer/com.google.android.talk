import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.google.android.apps.hangouts.fragments.BlockedContactsFragment;
import com.google.android.apps.hangouts.hangout.StressMode;

public final class byc
  extends og
{
  public byc(BlockedContactsFragment paramBlockedContactsFragment, Context paramContext)
  {
    super(paramContext, null);
    d = paramContext;
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = new fbb(paramContext);
    paramContext.a(j.f);
    return paramContext;
  }
  
  public void a(View paramView, Cursor paramCursor)
  {
    paramView = (fbb)paramView;
    String str = ezc.d(paramCursor.getString(3));
    paramView.a(str);
    paramView.a(paramCursor.getString(4), str, j.a);
    paramView.a(new czb(paramCursor.getString(2), paramCursor.getString(1)));
  }
  
  public Cursor b(Cursor paramCursor)
  {
    return super.b(paramCursor);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool = false;
    Object localObject;
    if ((paramInt >= super.getCount()) && (paramInt >= getCount()))
    {
      localObject = paramView;
      if (paramView == null) {
        localObject = a(d, a(), paramViewGroup);
      }
      return (View)localObject;
    }
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    if (fbb.class.isInstance(paramView))
    {
      paramViewGroup = (fbb)paramView;
      localObject = (Button)paramViewGroup.findViewById(aen.hb);
      paramInt = 0;
      if (paramInt >= j.e.size()) {
        break label170;
      }
      if (!j.e.c(paramInt)).a.a(paramViewGroup.a())) {
        break label155;
      }
    }
    label155:
    label170:
    for (paramInt = 1;; paramInt = 0)
    {
      if (paramInt != 0) {}
      for (int i = StressMode.sf;; i = StressMode.se)
      {
        if (paramInt == 0) {
          bool = true;
        }
        ((Button)localObject).setText(i);
        ((Button)localObject).setClickable(bool);
        return paramView;
        paramInt += 1;
        break;
      }
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
 * Qualified Name:     byc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */