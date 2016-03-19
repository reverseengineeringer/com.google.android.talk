import android.view.View;

final class vo
  implements Runnable
{
  vo(vn paramvn, View paramView) {}
  
  public void run()
  {
    int i = a.getLeft();
    int j = (b.getWidth() - a.getWidth()) / 2;
    b.smoothScrollTo(i - j, 0);
    b.a = null;
  }
}

/* Location:
 * Qualified Name:     vo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */