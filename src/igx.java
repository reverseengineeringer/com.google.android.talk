import android.os.Handler;
import java.util.HashMap;

final class igx
  implements igr
{
  igx(igt paramigt) {}
  
  public void a(igp paramigp)
  {
    if (paramigp.m() == 2) {
      return;
    }
    igt localigt = a;
    igq localigq = paramigp.l();
    if (paramigp.p())
    {
      String str = String.valueOf(localigq);
      new StringBuilder(String.valueOf(str).length() + 30).append("Finished preloading resource: ").append(str);
    }
    c.remove(localigq);
    b_.sendMessage(b_.obtainMessage(4, paramigp));
  }
}

/* Location:
 * Qualified Name:     igx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */