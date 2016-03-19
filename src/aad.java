import android.support.v7.widget.RecyclerView;
import android.view.MotionEvent;
import com.google.android.apps.hangouts.peoplelistv2.impl.FastScrollingRecyclerView;

public final class aad
{
  public boolean a;
  
  public aad(FastScrollingRecyclerView paramFastScrollingRecyclerView) {}
  
  public void a(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
  {
    if (a) {}
    switch (paramMotionEvent.getAction())
    {
    default: 
      return;
    case 0: 
    case 2: 
      paramRecyclerView.b((int)(b.c().a() * paramMotionEvent.getY() / b.C));
      return;
    }
    a = false;
  }
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getX() > b.B - b.A)
    {
      a = true;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     aad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */