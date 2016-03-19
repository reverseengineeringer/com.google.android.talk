import java.util.ArrayList;
import java.util.List;

public class dqy
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private int g;
  private int h;
  private int i;
  private final List<dqz> j;
  
  private dqy(iyi paramiyi)
  {
    super(apiHeader);
    iyz localiyz = a.a;
    if (dqf.a)
    {
      paramiyi = String.valueOf(a.a);
      new StringBuilder(String.valueOf(paramiyi).length() + 64).append("GetChatAclSettingsResponse.processResponse: retrieved chat ACLs ").append(paramiyi);
    }
    if (localiyz != null)
    {
      g = aal.a(a, 0);
      h = aal.a(f, 0);
      i = aal.a(e, 0);
      if (c.length > 0)
      {
        j = new ArrayList();
        paramiyi = c;
        int m = paramiyi.length;
        int k = 0;
        while (k < m)
        {
          localiyz = paramiyi[k];
          dqz localdqz = new dqz();
          b = b;
          a = a;
          c = aal.a(c, 0);
          j.add(localdqz);
          k += 1;
        }
      }
      j = null;
      return;
    }
    j = null;
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyi)lyi.b(new iyi(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new dqy(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    bie.a(parambfz.g().g(), g, h, i, j);
  }
}

/* Location:
 * Qualified Name:     dqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */