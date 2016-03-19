import android.content.Context;
import java.util.Iterator;
import java.util.List;

final class bbc
  implements dxj
{
  private final Context a;
  
  bbc(Context paramContext)
  {
    a = paramContext;
  }
  
  public void a(hqe paramhqe, drl paramdrl)
  {
    int j = ((hpz)ilh.a(a, hpz.class)).b(paramhqe.b("account_name"), paramhqe.b("effective_gaia_id"));
    if (j != -1) {
      try
      {
        paramhqe = new jxg[paramdrl.m().length];
        int i = 0;
        while (i < paramhqe.length)
        {
          jxg localjxg = new jxg();
          byte[] arrayOfByte = paramdrl.m()[i];
          paramhqe[i] = ((jxg)lyi.b(localjxg, arrayOfByte, arrayOfByte.length));
          i += 1;
        }
        paramdrl = ilh.c(a, dwa.class).iterator();
        while (paramdrl.hasNext()) {
          hbw.execute(new bbd(this, (dwa)paramdrl.next(), j, paramhqe));
        }
        return;
      }
      catch (lyg paramhqe) {}
    }
  }
}

/* Location:
 * Qualified Name:     bbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */