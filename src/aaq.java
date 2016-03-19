import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.View;

final class aaq
  extends ii
{
  aaq(aap paramaap) {}
  
  public void a(View paramView, my parammy)
  {
    super.a(paramView, parammy);
    if ((!b.b.y()) && (b.b.d() != null)) {
      b.b.d().a(paramView, parammy);
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    if ((!b.b.y()) && (b.b.d() != null)) {
      return b.b.d().E();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     aaq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */