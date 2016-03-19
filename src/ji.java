import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;

class ji
  extends jh
{
  public void a(LayoutInflater paramLayoutInflater, jm paramjm)
  {
    if (paramjm != null) {}
    for (paramjm = new jl(paramjm);; paramjm = null)
    {
      paramLayoutInflater.setFactory2(paramjm);
      LayoutInflater.Factory localFactory = paramLayoutInflater.getFactory();
      if (!(localFactory instanceof LayoutInflater.Factory2)) {
        break;
      }
      aen.a(paramLayoutInflater, (LayoutInflater.Factory2)localFactory);
      return;
    }
    aen.a(paramLayoutInflater, paramjm);
  }
}

/* Location:
 * Qualified Name:     ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */