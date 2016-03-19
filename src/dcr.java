import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dcr
  implements dck, ilu, inu, ioo, iow, ioz
{
  Context a;
  final SparseArray<dcl> b = new SparseArray();
  public final SparseArray<dco> c = new SparseArray();
  private Activity d;
  private hsc e;
  private dcj f;
  private ifq g;
  private hpu h;
  private hsb i = new dcs(this);
  
  dcr(Activity paramActivity, iog paramiog)
  {
    this(paramiog);
    d = paramActivity;
  }
  
  dcr(iog paramiog)
  {
    paramiog.a(this);
  }
  
  private void a(int paramInt)
  {
    g.a(paramInt, new ifz(this, paramInt));
  }
  
  private void a(int paramInt, List<dcm> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramInt != 0)
    {
      int j = h.a();
      haw localhaw = ((hba)ilh.a(a, hba.class)).a(j);
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        dcm localdcm = (dcm)paramList.next();
        kln localkln = new kln();
        a = a;
        b = Boolean.valueOf(paramBoolean1);
        c = Boolean.valueOf(paramBoolean2);
        d = Boolean.valueOf(b);
        localhaw.a(paramInt).a(localkln).d();
      }
    }
  }
  
  public void a(int paramInt, dcl paramdcl)
  {
    if (b.get(paramInt) == null) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "Listener should be set only once");
      b.put(paramInt, paramdcl);
      if (g != null) {
        break;
      }
      ezi.a("Babel_Permissions", 27 + "Not registering " + paramInt, new Object[0]);
      return;
    }
    a(paramInt);
  }
  
  public void a(int paramInt, List<dcm> paramList)
  {
    Object localObject = paramList.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (!nextb) {
        Toast.makeText(a, aal.oH, 0).show();
      }
    }
    localObject = (dcl)b.get(paramInt);
    dco localdco = (dco)c.get(paramInt);
    c.remove(paramInt);
    ((dcl)localObject).a(paramList, b);
  }
  
  public void a(Activity paramActivity)
  {
    d = paramActivity;
  }
  
  public void a(Context paramContext, ilh paramilh, Bundle paramBundle)
  {
    a = paramContext;
    f = ((dcj)paramilh.a(dcj.class));
    g = ((ifq)paramilh.a(ifq.class));
    int j = 0;
    while (j < b.size())
    {
      a(b.keyAt(j));
      j += 1;
    }
    e = ((hsc)paramilh.a(hsc.class));
    e.a(aal.oD, i);
    h = ((hpu)paramilh.a(hpu.class));
  }
  
  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelableArrayList("permission_manager_pending_requests");
      if (paramBundle != null)
      {
        paramBundle = paramBundle.iterator();
        while (paramBundle.hasNext())
        {
          dco localdco = (dco)paramBundle.next();
          c.put(c, localdco);
        }
      }
    }
  }
  
  public void a(dco paramdco, List<String> paramList)
  {
    c.put(c, paramdco);
    if (f.a(paramList))
    {
      aal.a(new dct(this, paramList, c));
      return;
    }
    int j = c;
    paramdco = new ify(this);
    g.a(paramdco, j, paramList);
  }
  
  public void b(Bundle paramBundle)
  {
    if (c.size() > 0)
    {
      ArrayList localArrayList = new ArrayList();
      int j = 0;
      while (j < c.size())
      {
        localArrayList.add(c.get(c.keyAt(j)));
        j += 1;
      }
      paramBundle.putParcelableArrayList("permission_manager_pending_requests", localArrayList);
    }
  }
}

/* Location:
 * Qualified Name:     dcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */