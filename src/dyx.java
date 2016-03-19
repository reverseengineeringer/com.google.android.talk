import android.os.Parcel;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class dyx
{
  private static final boolean a = false;
  public final dvb b;
  public final dyy c;
  public String d;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public dyx(Parcel paramParcel)
  {
    b = ((dvb)paramParcel.readParcelable(dvb.class.getClassLoader()));
    c = new dyy();
  }
  
  public dyx(bfd parambfd)
  {
    b = new dvb(parambfd);
    c = new dyy();
  }
  
  public int G_()
  {
    return 1;
  }
  
  public int a(bcg parambcg)
  {
    p_();
    a(b.c, parambcg.a());
    return bco.a;
  }
  
  public void a(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(b, paramInt);
  }
  
  public final void a(eff parameff)
  {
    c.a(parameff);
  }
  
  public boolean a(dvm paramdvm, int paramInt)
  {
    return a(paramdvm, paramInt, null);
  }
  
  public boolean a(dvm paramdvm, int paramInt, eer parameer)
  {
    List localList = j();
    if (localList.isEmpty()) {
      return false;
    }
    Object localObject = localList.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((eff)((Iterator)localObject).next()).a_(d);
    }
    if (a)
    {
      int i = localList.size();
      localObject = String.valueOf(getClass().getSimpleName());
      new StringBuilder(String.valueOf(localObject).length() + 76).append("sendRequestsToServer: sending ").append(i).append(" requests from executing operation ").append((String)localObject);
    }
    paramdvm.a(localList, paramInt, parameer);
    return true;
  }
  
  public List<eff> j()
  {
    return c.c();
  }
  
  protected final void k()
  {
    c.c().clear();
  }
  
  public Object o_()
  {
    return null;
  }
  
  public void p_() {}
}

/* Location:
 * Qualified Name:     dyx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */