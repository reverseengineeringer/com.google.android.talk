import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class drx
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final List<dtk> g;
  
  private drx(kdc paramkdc)
  {
    super(responseHeader, -1L);
    kcy[] arrayOfkcy = a;
    ArrayList localArrayList = new ArrayList();
    long l = System.currentTimeMillis();
    int j = arrayOfkcy.length;
    int i = 0;
    if (i < j)
    {
      Object localObject2 = arrayOfkcy[i];
      if ((a == null) || (TextUtils.isEmpty(a.b))) {
        ezi.e("Babel", "Received empty gaiaid in parseClientUserPresenceList.", new Object[0]);
      }
      for (;;)
      {
        i += 1;
        break;
        if (b == null)
        {
          if (c != null)
          {
            Object localObject1 = new dnu(c);
            localObject2 = String.valueOf(a.b);
            localObject1 = b;
            ezi.d("Babel", String.valueOf(localObject2).length() + 39 + String.valueOf(localObject1).length() + "Received presence error for " + (String)localObject2 + ". Details: " + (String)localObject1, new Object[0]);
          }
        }
        else {
          localArrayList.add(new dtk(b, a.b, l));
        }
      }
    }
    g = localArrayList;
    if (dqf.a)
    {
      paramkdc = String.valueOf(paramkdc);
      new StringBuilder(String.valueOf(paramkdc).length() + 27).append("QueryPresenceResponse from:").append(paramkdc);
    }
  }
  
  public static dqf parseFrom(kdc paramkdc)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drx(paramkdc);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((kdc)lyi.b(new kdc(), paramArrayOfByte, paramArrayOfByte.length));
  }
  
  public void a(eff parameff)
  {
    super.a(parameff);
    int j = ((dyv)parameff).b().size();
    if (g != null) {}
    for (int i = g.size();; i = 0)
    {
      if (j != i) {
        ezi.d("Babel", 71 + "Queried presence for " + j + ", but only get response for " + i, new Object[0]);
      }
      return;
    }
  }
  
  public List<dtk> k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     drx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */