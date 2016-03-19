import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class fbw
{
  final ArrayList<Integer> a;
  final ArrayList<fbx> b;
  final WeakReference<View> c;
  
  public fbw(View paramView)
  {
    c = new WeakReference(paramView);
    a = new ArrayList();
    b = new ArrayList();
  }
  
  public void a(int paramInt, fbx paramfbx)
  {
    a.add(Integer.valueOf(paramInt));
    b.add(paramfbx);
  }
}

/* Location:
 * Qualified Name:     fbw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */