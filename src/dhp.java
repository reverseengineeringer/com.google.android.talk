import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;

public class dhp
  extends og
{
  public dhp(Context paramContext, Cursor paramCursor)
  {
    super(paramContext, null, (byte)0);
  }
  
  public View a(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return null;
  }
  
  public void a(View paramView, Cursor paramCursor) {}
  
  public void c() {}
  
  public void d() {}
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= getCount())
    {
      View localView = paramView;
      if (paramView == null) {
        localView = a(d, a(), paramViewGroup);
      }
      return localView;
    }
    return super.getView(paramInt, paramView, paramViewGroup);
  }
  
  public boolean isEmpty()
  {
    if (a() == null) {
      return true;
    }
    return super.isEmpty();
  }
}

/* Location:
 * Qualified Name:     dhp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */