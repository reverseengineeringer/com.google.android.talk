import android.view.View;

final class mg
  implements mn
{
  md a;
  
  mg(md parammd)
  {
    a = parammd;
  }
  
  public void a(View paramView)
  {
    if (a.c >= 0) {
      ks.d(paramView, 2);
    }
    if (a.a != null) {
      a.a.run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof mn)) {}
    for (localObject = (mn)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((mn)localObject).a(paramView);
      }
      return;
    }
  }
  
  public void b(View paramView)
  {
    if (a.c >= 0)
    {
      ks.d(paramView, a.c);
      a.c = -1;
    }
    if (a.b != null) {
      a.b.run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof mn)) {}
    for (localObject = (mn)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((mn)localObject).b(paramView);
      }
      return;
    }
  }
  
  public void c(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof mn)) {}
    for (localObject = (mn)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((mn)localObject).c(paramView);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     mg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */