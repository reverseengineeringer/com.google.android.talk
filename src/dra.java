import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

public class dra
  extends dqf
{
  private static final long serialVersionUID = 4L;
  private final byte[] g;
  private final cyx[] h;
  
  private dra(kah paramkah)
  {
    super(responseHeader, -1L);
    if (b != null) {}
    for (Object localObject1 = jyc.a(b);; localObject1 = null)
    {
      g = ((byte[])localObject1);
      localObject1 = localObject2;
      if (b != null)
      {
        localObject1 = new jyc[1];
        localObject1[0] = b;
      }
      h = a(e, (jyc[])localObject1);
      if (dqf.a)
      {
        paramkah = String.valueOf(paramkah);
        new StringBuilder(String.valueOf(paramkah).length() + 29).append("GetConversationResponse from:").append(paramkah);
      }
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kah)lyi.b(new kah(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dra(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    dmp localdmp = dmp.a(g, false, c.d);
    if ((localdmp != null) && (b != null) && (!bft.a(parambfz.g(), b)))
    {
      aal.a(parambfz.g(), 1839);
      return;
    }
    String str1;
    Object localObject1;
    label81:
    doz localdoz;
    Object localObject3;
    boolean bool2;
    int k;
    label139:
    Object localObject2;
    int i;
    label317:
    label415:
    int j;
    label460:
    label582:
    label616:
    label734:
    label742:
    label751:
    label801:
    label827:
    boolean bool1;
    if (localdmp != null)
    {
      str1 = a;
      localObject1 = c;
      localdoz = (doz)b;
      localObject3 = r;
      bool2 = b;
      if ((k == null) && (l == 0L)) {
        k = 1;
      }
      for (;;)
      {
        int m;
        long l1;
        long l2;
        String str2;
        if (!TextUtils.isEmpty(m))
        {
          m = 1;
          if ((!bool2) && (localObject1 != null) && (((List)localObject1).size() > 0)) {
            hbs.a("Events were not requested, eventList should be empty");
          }
          if (p == null) {
            break label1645;
          }
          if (dqf.a)
          {
            localObject2 = String.valueOf(p.j());
            l1 = p.c();
            new StringBuilder(String.valueOf(str1).length() + 92 + String.valueOf(localObject2).length()).append("Adding saved pushEvent to GetConversationResponse ").append(str1).append(" eventId: ").append((String)localObject2).append(" timestamp: ").append(l1);
          }
          i = 0;
          if (localObject1 != null) {
            i = ((List)localObject1).size();
          }
          localObject2 = new ArrayList(i + 1);
          if (i != 0) {
            ((List)localObject2).addAll((Collection)localObject1);
          }
          ((List)localObject2).add(p);
          localObject1 = localObject2;
          if (ezi.a("Babel", 3))
          {
            if (localdmp == null) {
              break label751;
            }
            if (((List)localObject1).size() <= 0) {
              break label734;
            }
            l1 = ((egf)((List)localObject1).get(0)).c();
            l2 = ((egf)((List)localObject1).get(((List)localObject1).size() - 1)).c();
            localObject2 = 60 + " earliest: " + l1 + " latest: " + l2;
            str2 = String.valueOf("processGetConversationResponse conversationId: ");
            j = ((List)localObject1).size();
            String str3 = String.valueOf(Arrays.toString(e));
            l1 = f;
            if (h != null) {
              break label742;
            }
            i = 0;
            ezi.b("Babel", String.valueOf(str2).length() + 142 + String.valueOf(str1).length() + String.valueOf(localObject2).length() + String.valueOf(str3).length() + str2 + str1 + " requestedEvents: " + bool2 + " eventCount: " + j + (String)localObject2 + " continuationToken: " + str3 + " continuationEventTimestamp: " + l1 + " num entities: " + i, new Object[0]);
          }
          if (TextUtils.isEmpty(str1)) {
            break;
          }
          if (((List)localObject1).size() <= 0) {
            break label801;
          }
          l1 = ((egf)((List)localObject1).get(0)).c();
          if (j() != null) {
            j().a("get_conversation_response");
          }
          parambfz.a();
          l2 = SystemClock.elapsedRealtime();
          if ((localObject3 != null) && (!aen.c(k))) {
            aal.a(parambfz.g(), 2527);
          }
        }
        try
        {
          if (h != null)
          {
            localObject2 = h;
            j = localObject2.length;
            i = 0;
            for (;;)
            {
              if (i < j)
              {
                str2 = localObject2[i];
                if (str2 != null) {
                  parambfz.a(str2, true);
                }
                i += 1;
                continue;
                k = 0;
                break;
                m = 0;
                break label139;
                localObject2 = "";
                break label415;
                i = h.length;
                break label460;
                localObject2 = String.valueOf("processGetConversationResponse requestedEvents: ");
                ezi.b("Babel", String.valueOf(localObject2).length() + 5 + (String)localObject2 + bool2, new Object[0]);
                break label582;
                l1 = 0L;
                break label616;
              }
            }
          }
          if (b == null) {
            break label1639;
          }
          if (localObject3 == null) {
            break label1662;
          }
          localObject2 = j;
          localObject3 = b;
          long l3 = h;
          if (r == null) {
            break label1668;
          }
          bool1 = true;
          label852:
          bool1 = bft.a(parambfz, (ega)localObject3, l3, (String)localObject2, paramdyy, null, bool1);
          if (b.m()) {
            break label1659;
          }
          parambfz.a(0, parambfz.M(a), a);
        }
        finally
        {
          label901:
          int n;
          label938:
          parambfz.c();
          if (j() == null) {
            break label1594;
          }
          j().a(parambfz.g().g(), "get_conversation_response", SystemClock.elapsedRealtime(), 4);
        }
      }
      if (((List)localObject1).size() > 0)
      {
        bft.a(parambfz, str1, 0L, paramdyy, null);
        localObject2 = new ArrayList();
        i = 0;
        n = 0;
        j = 0;
        if (n < ((List)localObject1).size())
        {
          localObject3 = (egf)((List)localObject1).get(n);
          if (((egf)localObject3).f() != null) {
            ((List)localObject2).addAll(((egf)localObject3).f());
          }
          if ((localObject3 instanceof egj)) {
            i = 1;
          }
        }
      }
    }
    label1545:
    label1594:
    label1629:
    label1639:
    label1645:
    label1659:
    label1662:
    label1668:
    label1674:
    for (;;)
    {
      bft.a(parambfz, (egf)localObject3, paramdyy, h(), i(), l2 * 1000L);
      n += 1;
      j = 1;
      break label938;
      if (((localObject3 instanceof efr)) && (bool2)) {
        if (k != null)
        {
          ((efr)localObject3).a(4);
        }
        else if (m != 0)
        {
          a(parambfz.g(), m, (efr)localObject3);
          ((efr)localObject3).a(2);
        }
        else
        {
          ((efr)localObject3).a(5);
          break label1674;
          paramdyy.a(aal.oJ, parambfz, str1, (List)localObject2);
          for (;;)
          {
            if ((bool2) && (k != 0))
            {
              l2 = bff.a(aal.oJ, parambfz.g().g(), "last_successful_sync_time", 0L);
              if ((bft.a) || (dqf.a)) {
                new StringBuilder(86).append("lastSuccessfulSyncTime ").append(l2).append(" oldestEventInListTime ").append(l1);
              }
              if ((((List)localObject1).size() > 0) && (l1 > l2))
              {
                ezi.a("Babel", "getting rid of older messages", new Object[0]);
                parambfz.a(str1, Long.valueOf(l1));
              }
            }
            if (m != 0)
            {
              if (bft.a)
              {
                paramdyy = String.valueOf(str1);
                if (paramdyy.length() == 0) {
                  break label1545;
                }
                "conversation is now synced:".concat(paramdyy);
              }
              if (ebo.b(parambfz.g().g()).b(m))
              {
                boolean bool3 = bft.a;
                k = parambfz.g().g();
                paramdyy = aal.oJ;
                l1 = bff.a(paramdyy, k, "in_progress_sync_time", 0L);
                bff.b(paramdyy, k, "last_successful_sync_time", l1);
                bff.b(paramdyy, k, "in_progress_sync_time", l1);
              }
            }
            if (bool2) {
              bft.a(parambfz, str1, e, f);
            }
            parambfz.b();
            parambfz.c();
            if (j() != null) {
              j().a(parambfz.g().g(), "get_conversation_response", SystemClock.elapsedRealtime(), 4);
            }
            if (bool1) {
              bft.d(parambfz);
            }
            if (j != 0) {
              bft.d(parambfz, str1);
            }
            if (i != 0) {
              bft.c(parambfz, str1);
            }
            for (;;)
            {
              if ((TextUtils.isEmpty(str1)) || (localdmp == null) || (b == null) || (o == 0L) || (o == b.w())) {
                break label1629;
              }
              l1 = o;
              l2 = b.w();
              new StringBuilder(94).append("SortTimestamp mismatched (").append(l1).append(" != ").append(l2).append(") forcing immediate SANE");
              RealTimeChatService.a(parambfz.g().g(), true, ebq.a);
              return;
              new String("conversation is now synced:");
              break;
              if (localObject3 != null)
              {
                if (!aen.c(k)) {
                  aal.a(parambfz.g(), 2528);
                }
                paramdyy.a((eff)localObject3);
              }
            }
            break;
            j = 0;
            i = 0;
          }
          bool1 = false;
          break label901;
          break label317;
          str1 = "";
          localObject1 = null;
          break label81;
          break label901;
          localObject2 = null;
          break label827;
          bool1 = false;
          break label852;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     dra
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */