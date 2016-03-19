import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class dpa
  extends dpf
{
  private static final int[] j = { 1 };
  private static final long serialVersionUID = 1L;
  public List<dtt> a;
  public final String b;
  public final boolean c;
  public final boolean d;
  
  public dpa(List<dtt> paramList, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramList;
    d = paramBoolean1;
    b = paramString;
    c = paramBoolean2;
  }
  
  private void o()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      dtt localdtt = (dtt)localIterator.next();
      if (localdtt != null) {
        localArrayList.add(localdtt);
      }
    }
    a = localArrayList;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (doo.e)
    {
      localObject = String.valueOf(a);
      new StringBuilder(String.valueOf(localObject).length() + 34).append("GetEntityByIdRequest: lookupSpecs=").append((String)localObject);
    }
    Object localObject = new kai();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    b = j;
    paramString = a.iterator();
    paramInt1 = 0;
    if (paramString.hasNext())
    {
      if ((dtt)paramString.next() == null) {
        break label234;
      }
      paramInt1 += 1;
    }
    label223:
    label234:
    for (;;)
    {
      break;
      if (paramInt1 > 0) {
        a = new jzi[paramInt1];
      }
      if (paramInt1 < a.size())
      {
        paramInt1 = 1;
        paramString = a.iterator();
        paramInt2 = 0;
      }
      for (;;)
      {
        if (!paramString.hasNext()) {
          break label223;
        }
        dtt localdtt = (dtt)paramString.next();
        if (localdtt == null)
        {
          ezi.e("Babel_RequestWriter", "GetEntityByIdRequest: null spec!", new Object[0]);
          paramInt1 = 1;
          continue;
          paramInt1 = 0;
          break;
        }
        a[paramInt2] = localdtt.d();
        paramInt2 += 1;
      }
      if (paramInt1 != 0) {
        o();
      }
      return (lyi)localObject;
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    Object localObject;
    if (c)
    {
      localObject = eay.b(parambfd.g());
      if (((eay)localObject).d() == 2)
      {
        paramdvn = String.valueOf(ezi.b(parambfd.a()));
        if (paramdvn.length() == 0) {
          break label110;
        }
      }
    }
    label110:
    for (paramdvn = "RefreshParticipantsOperation failed: ".concat(paramdvn);; paramdvn = new String("RefreshParticipantsOperation failed: "))
    {
      ezi.d("Babel_RequestWriter", paramdvn, new Object[0]);
      ((eay)localObject).a(0);
      if (d) {
        break;
      }
      paramdvn = a.iterator();
      while (paramdvn.hasNext())
      {
        localObject = (dtt)paramdvn.next();
        ehd.a(parambfd).a((dtt)localObject);
      }
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return (!d) && (super.a(paramcwk, paramdvn));
  }
  
  public long b()
  {
    if (d) {
      return 0L;
    }
    return super.b();
  }
  
  public String f()
  {
    return "contacts/getentitybyid";
  }
}

/* Location:
 * Qualified Name:     dpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */