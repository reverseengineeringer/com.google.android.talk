import java.util.HashSet;
import java.util.Map;
import java.util.Set;

final class bjg
  extends eap
{
  bjg(bjf parambjf) {}
  
  public void a(int paramInt, bfd parambfd, eff parameff, dvn paramdvn)
  {
    if ((parameff instanceof dos))
    {
      paramdvn = j;
      if (paramdvn != null)
      {
        paramInt = parambfd.g();
        parameff = (Set)a.a.get(Integer.valueOf(paramInt));
        parambfd = parameff;
        if (parameff == null)
        {
          parameff = a.a;
          parambfd = new HashSet();
          parameff.put(Integer.valueOf(paramInt), parambfd);
        }
        parambfd.add(paramdvn);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */