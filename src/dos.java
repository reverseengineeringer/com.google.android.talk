import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.api.client.http.HttpContent;
import java.util.Iterator;
import java.util.List;

public class dos
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final int a;
  public final int b;
  public final String c;
  public final List<cyx> d;
  public final String j;
  public final String k;
  
  public dos(String paramString1, int paramInt1, int paramInt2, String paramString2, List<cyx> paramList, String paramString3)
  {
    hbs.a("Expected condition to be true", bfz.a(paramString1));
    j = paramString1;
    a = paramInt1;
    b = paramInt2;
    c = paramString2;
    d = paramList;
    k = paramString3;
    paramString1 = d.iterator();
    if (paramString1.hasNext())
    {
      paramString2 = (cyx)paramString1.next();
      if ((d == null) && (TextUtils.isEmpty(g))) {
        paramString1 = "CCR invitee should not have empty fallback name.";
      }
    }
    for (;;)
    {
      label98:
      if (paramString1 != null)
      {
        paramString2 = new StringBuilder();
        paramString2.append(paramString1).append(" ");
        paramString2.append("Invitees: ");
        paramList = d.iterator();
        label142:
        if (paramList.hasNext())
        {
          paramString3 = (cyx)paramList.next();
          paramString2.append("[");
          paramString2.append("g:").append(paramString3.b()).append(",");
          paramString2.append("ch:").append(paramString3.c()).append(",");
          paramString2.append("ci:").append(d).append(",");
          StringBuilder localStringBuilder = paramString2.append("p:");
          paramString1 = c;
          if (TextUtils.isEmpty(paramString1))
          {
            label257:
            localStringBuilder.append(paramString1).append(",");
            localStringBuilder = paramString2.append("fallback:");
            if (!TextUtils.isEmpty(g)) {
              break label413;
            }
          }
          label413:
          for (paramString1 = "unset";; paramString1 = "set")
          {
            localStringBuilder.append(paramString1);
            paramString2.append("] ");
            break label142;
            paramString2 = paramString2.b();
            if ((paramString2 == null) || (!paramString2.startsWith("g:"))) {
              break;
            }
            paramString1 = "CCR invitee gaiaId should not start with g:.";
            break label98;
            paramInt1 = paramString1.length();
            if (4 >= paramInt1)
            {
              paramString1 = aal.c("x", paramInt1);
              break label257;
            }
            String str = String.valueOf(aal.c("x", paramInt1 - 4));
            paramString1 = String.valueOf(paramString1.substring(paramInt1 - 4, paramInt1));
            if (paramString1.length() != 0)
            {
              paramString1 = str.concat(paramString1);
              break label257;
            }
            paramString1 = new String(str);
            break label257;
          }
        }
        hbs.a(paramString2.toString());
      }
      return;
      paramString1 = null;
    }
  }
  
  public dos()
  {
    this(str1, i, 0, str2, localList, null);
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject;
    label127:
    int i;
    cyx localcyx;
    kbi localkbi;
    if (ezi.a("Babel_RequestWriter", 3))
    {
      localObject = String.valueOf(c);
      if (((String)localObject).length() != 0)
      {
        localObject = "ConversationRequest build protobuf: name=".concat((String)localObject);
        ezi.b("Babel_RequestWriter", (String)localObject, new Object[0]);
      }
    }
    else
    {
      localObject = new jye();
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      a = Integer.valueOf(a);
      c = bfz.c(j);
      if (c != null) {
        d = c;
      }
      if (d == null) {
        break label358;
      }
      paramInt1 = d.size();
      if (paramInt1 <= 0) {
        break label617;
      }
      f = new kbi[paramInt1];
      paramString = d.iterator();
      i = 0;
      if (!paramString.hasNext()) {
        break label617;
      }
      localcyx = (cyx)paramString.next();
      localkbi = aal.a(localcyx, b);
      if (B == null) {
        break label652;
      }
    }
    label358:
    label566:
    label617:
    label652:
    for (paramInt1 = B.size() + 0;; paramInt1 = 0)
    {
      paramInt2 = paramInt1;
      if (A != null) {
        paramInt2 = paramInt1 + A.size();
      }
      paramInt1 = paramInt2 + 1;
      if (paramInt1 > 0)
      {
        f = new kbj[paramInt1];
        Iterator localIterator;
        String str;
        if (B != null)
        {
          localIterator = B.iterator();
          paramInt2 = 0;
          for (;;)
          {
            paramInt1 = paramInt2;
            if (!localIterator.hasNext()) {
              break;
            }
            str = (String)localIterator.next();
            f[paramInt2] = new kbj();
            f[paramInt2].b = new kbk();
            f[paramInt2].b.a = str;
            paramInt2 += 1;
          }
          localObject = new String("ConversationRequest build protobuf: name=");
          break;
          paramInt1 = 0;
          break label127;
        }
        paramInt1 = 0;
        paramInt2 = paramInt1;
        if (A != null)
        {
          localIterator = A.iterator();
          for (;;)
          {
            paramInt2 = paramInt1;
            if (!localIterator.hasNext()) {
              break;
            }
            str = (String)localIterator.next();
            f[paramInt1] = new kbj();
            f[paramInt1].a = new kbm();
            f[paramInt1].a.a = new lcf();
            f[paramInt1].a.a.a = str;
            paramInt1 += 1;
          }
        }
        f[paramInt2] = new kbj();
        f[paramInt2].c = new kbl();
        if (TextUtils.isEmpty(C)) {
          break label566;
        }
        f[paramInt2].c.a = C;
      }
      for (;;)
      {
        f[i] = localkbi;
        i += 1;
        break;
        if (!TextUtils.isEmpty(e)) {
          f[paramInt2].c.a = e;
        } else {
          f[paramInt2].c.a = "unknown person";
        }
      }
      if (!TextUtils.isEmpty(k))
      {
        paramString = new kbf();
        a = k;
        h = paramString;
      }
      return (lyi)localObject;
    }
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    if (paramdvn.c() == 111) {}
    for (boolean bool = true;; bool = false)
    {
      RealTimeChatService.a(parambfd, j, bool);
      return;
    }
  }
  
  public HttpContent b(String paramString, int paramInt1, int paramInt2)
  {
    paramString = a(paramString, paramInt1, paramInt2);
    if (paramString != null) {
      i = paramString.toString();
    }
    return new dnd(paramString);
  }
  
  public String f()
  {
    return "conversations/createconversation";
  }
}

/* Location:
 * Qualified Name:     dos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */