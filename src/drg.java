import java.util.ArrayList;
import java.util.List;

public class drg
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final List<czb> g = new ArrayList();
  
  private drg(khu paramkhu)
  {
    khk[] arrayOfkhk = a;
    int j = arrayOfkhk.length;
    int i = 0;
    while (i < j)
    {
      khk localkhk = arrayOfkhk[i];
      g.add(czb.a(c));
      i += 1;
    }
    if (dqf.a)
    {
      paramkhu = String.valueOf(paramkhu);
      new StringBuilder(String.valueOf(paramkhu).length() + 36).append("GetHangoutParticipantsResponse from:").append(paramkhu);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (khu)lyi.b(new khu(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drg(paramArrayOfByte);
  }
  
  public String k()
  {
    return b).b;
  }
  
  public List<czb> l()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     drg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */