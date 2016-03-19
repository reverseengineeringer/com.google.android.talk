import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.google.android.libraries.quantum.fab.FloatingActionButton;
import java.util.List;

public class bsr
  extends img
  implements bmv, ck<List<bso>>
{
  hsc a;
  private final hsb b = new bss(this);
  private final hsb c = new bst(this);
  private RecyclerView d;
  private View e;
  private int f;
  private boolean g;
  private FloatingActionButton h;
  
  public void a(List<bso> paramList)
  {
    Object localObject = atr.a.a(this);
    paramList = new btb(context, paramList, getView(), (ahw)localObject);
    localObject = new aiq((ahw)localObject, paramList, paramList);
    d.b((aae)localObject);
    d.a(paramList);
    int i = context.getResources().getDimensionPixelSize(aal.ky);
    d.b(new bti(i));
  }
  
  public boolean a()
  {
    if (!aal.a(dvd.e(f), bhh.f))
    {
      Toast.makeText(context, aal.kl, 0).show();
      return false;
    }
    return true;
  }
  
  public boolean b()
  {
    return true;
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    a = ((hsc)binder.a(hsc.class)).a(aal.jS, b).a(aal.jU, c);
    f = ((hpu)binder.a(hpu.class)).a();
    g = ((bmw)binder.a(bmw.class)).f();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getLoaderManager().a(aal.kJ, null, this);
  }
  
  public fe<List<bso>> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new bsz(getActivity(), g);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    e = paramLayoutInflater.inflate(aen.hM, paramViewGroup, false);
    d = ((RecyclerView)e.findViewById(aal.kI));
    paramLayoutInflater = new yo(getActivity());
    paramLayoutInflater.a(0);
    d.a(paramLayoutInflater);
    d.b();
    h = ((FloatingActionButton)e.findViewById(aal.kz));
    h.setOnClickListener(new bsv(this));
    e.findViewById(aal.kA).bringToFront();
    return e;
  }
  
  public void onLoaderReset(fe<List<bso>> paramfe) {}
  
  public void onPause()
  {
    super.onPause();
  }
}

/* Location:
 * Qualified Name:     bsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */