import android.view.View;

final class box
  implements Runnable
{
  box(bng parambng) {}
  
  public void run()
  {
    hbs.a("Expected condition to be true", a.ba);
    if ((a.isAdded()) && (!a.isPaused()))
    {
      View localView = a.getView();
      if (localView != null) {
        a.showEmptyViewProgress(localView);
      }
    }
  }
}

/* Location:
 * Qualified Name:     box
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */