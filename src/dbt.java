import android.content.Context;
import android.util.SparseArray;
import android.widget.Toast;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class dbt
  extends eap
{
  dbt(dbh paramdbh) {}
  
  public void a(int paramInt, bfd parambfd, eau parameau)
  {
    if (((parameau.c() instanceof dqo)) && (aal.a(a.ak, paramInt)))
    {
      parambfd = a;
      ak.remove(paramInt);
      if (aal.a(ak)) {
        RealTimeChatService.b(aj);
      }
    }
  }
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((aal.a(a.ak, paramInt)) && ((parameff instanceof dov)))
    {
      parambfd = a.getActivity();
      parameff = (String)a.ak.get(paramInt);
      paramdvn = a;
      ak.remove(paramInt);
      if (aal.a(ak)) {
        RealTimeChatService.b(aj);
      }
      if (!byp.j()) {
        break label110;
      }
    }
    label110:
    for (paramInt = aen.jz;; paramInt = aen.jy)
    {
      Toast.makeText(parambfd, parambfd.getString(paramInt, new Object[] { parameff }), 0).show();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */