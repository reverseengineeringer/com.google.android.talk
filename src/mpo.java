import java.net.URI;
import java.util.List;
import java.util.Map;

final class mpo
  implements Runnable
{
  mpo(mpe parammpe, Map paramMap) {}
  
  public void run()
  {
    b.o = URI.create(b.l).resolve((String)((List)a.get("location")).get(0)).toString();
    b.e.add(b.o);
    b.a(mqh.c, mqh.d, new mpp(this));
  }
}

/* Location:
 * Qualified Name:     mpo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */