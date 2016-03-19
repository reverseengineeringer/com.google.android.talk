import android.graphics.Rect;
import android.support.v4.widget.DrawerLayout;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public final class ol
  extends ii
{
  private final Rect c = new Rect();
  
  public ol(DrawerLayout paramDrawerLayout) {}
  
  public void a(View paramView, my parammy)
  {
    if (DrawerLayout.b)
    {
      super.a(paramView, parammy);
      parammy.b(DrawerLayout.class.getName());
      parammy.a(false);
      parammy.b(false);
      parammy.a(mz.a);
      parammy.a(mz.b);
      return;
    }
    Object localObject1 = my.a.a(b);
    if (localObject1 != null) {}
    for (localObject1 = new my(localObject1);; localObject1 = null)
    {
      super.a(paramView, (my)localObject1);
      parammy.a(paramView);
      Object localObject2 = ks.a.o(paramView);
      if ((localObject2 instanceof View)) {
        parammy.c((View)localObject2);
      }
      localObject2 = c;
      ((my)localObject1).a((Rect)localObject2);
      parammy.b((Rect)localObject2);
      ((my)localObject1).c((Rect)localObject2);
      parammy.d((Rect)localObject2);
      parammy.c(((my)localObject1).e());
      parammy.a(((my)localObject1).k());
      parammy.b(((my)localObject1).l());
      parammy.c(((my)localObject1).m());
      parammy.h(((my)localObject1).j());
      parammy.f(((my)localObject1).h());
      parammy.a(((my)localObject1).c());
      parammy.b(((my)localObject1).d());
      parammy.d(((my)localObject1).f());
      parammy.e(((my)localObject1).g());
      parammy.g(((my)localObject1).i());
      parammy.a(((my)localObject1).b());
      ((my)localObject1).n();
      paramView = (ViewGroup)paramView;
      int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        localObject1 = paramView.getChildAt(i);
        if (DrawerLayout.l((View)localObject1)) {
          parammy.b((View)localObject1);
        }
        i += 1;
      }
      break;
    }
  }
  
  public boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.b) || (DrawerLayout.l(paramView))) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public boolean b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramView = paramAccessibilityEvent.getText();
      paramAccessibilityEvent = b.g();
      if (paramAccessibilityEvent != null)
      {
        int i = b.e(paramAccessibilityEvent);
        paramAccessibilityEvent = b.b(i);
        if (paramAccessibilityEvent != null) {
          paramView.add(paramAccessibilityEvent);
        }
      }
      return true;
    }
    return super.b(paramView, paramAccessibilityEvent);
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
}

/* Location:
 * Qualified Name:     ol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */