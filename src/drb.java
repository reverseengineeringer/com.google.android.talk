import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class drb
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final List<eyu<dtt, cyx[]>> g;
  
  private drb(kaj paramkaj)
  {
    super(responseHeader, -1L);
    Object localObject2 = b;
    int i;
    label121:
    int j;
    Object localObject3;
    Object localObject4;
    if (localObject2 == null)
    {
      paramkaj = (kaj)localObject1;
      g = paramkaj;
      if (dqf.a)
      {
        i = g.size();
        new StringBuilder(50).append("GetEntityByIdResponse: Number of specs=").append(i);
        paramkaj = g.iterator();
        for (;;)
        {
          if (!paramkaj.hasNext()) {
            break label541;
          }
          localObject1 = (eyu)paramkaj.next();
          if ((localObject1 != null) && (b != null))
          {
            if (b != null) {
              break;
            }
            i = 0;
            new StringBuilder(55).append("- GetEntityByIdResponse: Number of entities=").append(i);
            localObject1 = (cyx[])b;
            j = localObject1.length;
            i = 0;
            while (i < j)
            {
              String str2 = localObject1[i];
              if (str2 != null)
              {
                localObject2 = String.valueOf(e);
                localObject3 = String.valueOf(f);
                localObject4 = String.valueOf(h);
                String str1 = String.valueOf(b);
                str2 = String.valueOf(d);
                new StringBuilder(String.valueOf(localObject2).length() + 70 + String.valueOf(localObject3).length() + String.valueOf(localObject4).length() + String.valueOf(str1).length() + String.valueOf(str2).length()).append("-- entity: displayName ").append((String)localObject2).append(",firstName ").append((String)localObject3).append(",avatarUrl ").append((String)localObject4).append(",participantId ").append(str1).append(",circleId ").append(str2);
              }
              i += 1;
            }
          }
        }
      }
    }
    else
    {
      localObject1 = new ArrayList();
      int k = localObject2.length;
      i = 0;
      label350:
      if (i < k)
      {
        paramkaj = localObject2[i];
        localObject3 = a;
        localObject3 = new dtt(a, e, c, d, aal.a(f, false));
        localObject4 = aal.a(b, (dtt)localObject3);
        if (localObject4 != null) {
          if (!TextUtils.isEmpty(c)) {
            paramkaj = c;
          }
        }
      }
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(paramkaj))
      {
        j = 0;
        for (;;)
        {
          if (j < localObject4.length)
          {
            if (localObject4[j] != null) {
              localObject4[j].c(paramkaj);
            }
            j += 1;
            continue;
            if (TextUtils.isEmpty(d)) {
              break label542;
            }
            paramkaj = d;
            break;
          }
        }
      }
      ((List)localObject1).add(new eyu((Serializable)localObject3, (Serializable)localObject4));
      i += 1;
      break label350;
      paramkaj = (kaj)localObject1;
      break;
      i = ((cyx[])b).length;
      break label121;
      label541:
      return;
      label542:
      paramkaj = null;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kaj)lyi.b(new kaj(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drb(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (ezi.a("Babel", 3))
    {
      if (b == null) {
        break label96;
      }
      paramdyy = String.valueOf(l());
      ezi.b("Babel", String.valueOf(paramdyy).length() + 24 + "GEBI Response for: " + paramdyy + " tag.", new Object[0]);
    }
    for (;;)
    {
      if ((!m()) && (g != null)) {
        ehd.a(parambfz.g(), this);
      }
      return;
      label96:
      ezi.b("Babel", "GEBI Response with null request!", new Object[0]);
    }
  }
  
  public List<eyu<dtt, cyx[]>> k()
  {
    return g;
  }
  
  public String l()
  {
    return b).b;
  }
  
  public boolean m()
  {
    return b).d;
  }
  
  public boolean n()
  {
    return b).c;
  }
}

/* Location:
 * Qualified Name:     drb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */