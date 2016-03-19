import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class cxq
  extends cya
{
  private static final boolean s = cxt.b;
  public emd a;
  public CharSequence b;
  public String c;
  public int d;
  public int e;
  public int f;
  public boolean g;
  public String h;
  public String i;
  public long j;
  public String k;
  public String l;
  public String m;
  public emc n;
  
  public cxq(Cursor paramCursor, int paramInt)
  {
    Object localObject1 = cwz.a(paramCursor, 8, 9);
    Object localObject2 = paramCursor.getString(7);
    String str1 = paramCursor.getString(18);
    long l1 = paramCursor.getLong(20);
    o = new cwz((String)localObject2, str1, paramCursor.getInt(10), (String)localObject1, paramCursor.getLong(11), false, 0, paramCursor.getString(21), paramCursor.getInt(22), l1);
    r = paramCursor.getString(1);
    str1 = paramCursor.getString(0);
    a = emd.values()[paramCursor.getInt(4)];
    e = paramCursor.getInt(14);
    p = ekq.a(e);
    k = paramCursor.getString(26);
    l = paramCursor.getString(11);
    localObject1 = paramCursor.getString(3);
    h = paramCursor.getString(15);
    m = paramCursor.getString(2);
    localObject2 = paramCursor.getString(16);
    String str2 = paramCursor.getString(17);
    int i1 = paramCursor.getInt(23);
    f = paramCursor.getInt(19);
    boolean bool;
    if (2 == f)
    {
      bool = true;
      g = bool;
      if ((!aal.e(e)) || (g)) {
        break label568;
      }
      b = ((CharSequence)localObject1);
      localObject2 = paramCursor.getString(5);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = paramCursor.getString(6);
        localObject1 = localObject2;
        if ("hangouts/location".equals(paramCursor.getString(13))) {
          localObject1 = ezc.a((String)localObject2);
        }
      }
      i1 = a(paramCursor.getString(13));
      if ((localObject1 == null) || (!((String)localObject1).contains(enn.a))) {
        break label760;
      }
      localObject2 = b((String)localObject1);
      if (localObject2 == null) {
        break label675;
      }
      localObject1 = a;
      i1 = a(b);
    }
    label403:
    label568:
    label675:
    label749:
    label760:
    for (;;)
    {
      int i2 = i1;
      if (i1 == 1)
      {
        i2 = i1;
        if (localObject1 != null) {
          if (!((String)localObject1).contains(EsProvider.b(aal.oJ)))
          {
            i2 = i1;
            if (!((String)localObject1).startsWith("sticker://")) {}
          }
          else
          {
            i2 = 7;
          }
        }
      }
      d = i2;
      c = ((String)localObject1);
      if ((o.c) && (e == 3)) {
        if (str1 == null) {
          q = r;
        }
      }
      for (;;)
      {
        i = paramCursor.getString(24);
        j = paramCursor.getLong(25);
        n = emc.values()[paramCursor.getInt(12)];
        if (s)
        {
          paramCursor = String.valueOf(r);
          if (paramCursor.length() == 0) {
            break label749;
          }
          "Message Line from ".concat(paramCursor);
        }
        return;
        bool = false;
        break;
        emd localemd = a;
        String str3 = h;
        String str4 = m;
        switch (cxr.a[localemd.ordinal()])
        {
        default: 
          localObject1 = aal.a(localemd, dvd.e(paramInt), emc.e, str3, str4, (String)localObject2, str2, i1, true);
        case 1: 
        case 2: 
          if (localObject1 != null) {
            localObject1 = cxt.a((String)localObject1);
          }
          break;
        case 3: 
          throw new IllegalArgumentException("Message with deprecated membership change type");
          localObject1 = null;
          break;
          localObject1 = null;
          i1 = 0;
          break label403;
          q = str1;
          continue;
          q = a(str1, r, o, paramInt);
          if (r == null) {
            r = o.f;
          }
          if (q == null) {
            q = o.f;
          }
          break;
        }
      }
      new String("Message Line from ");
      return;
    }
  }
  
  private static int a(String paramString)
  {
    if (aal.b(paramString)) {
      return 1;
    }
    if (aal.c(paramString)) {
      return 2;
    }
    if (aal.d(paramString)) {
      return 3;
    }
    if ("hangouts/location".equals(paramString)) {
      return 4;
    }
    if (aen.a(paramString)) {
      return 6;
    }
    return 0;
  }
  
  static cwx a(Context paramContext, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    ArrayList localArrayList = new ArrayList();
    Uri localUri = EsProvider.a(EsProvider.k, paramInt);
    ContentResolver localContentResolver = paramContext.getContentResolver();
    String str2 = db;
    String str1;
    label87:
    Object localObject;
    if (!paramBoolean3)
    {
      str1 = String.valueOf((System.currentTimeMillis() - aal.a(paramContext, "babel_old_message_without_notification", eea.d)) * 1000L);
      if (str2 == null)
      {
        paramContext = new String[1];
        paramContext[0] = str1;
        if (str2 != null) {
          break label254;
        }
        str1 = cxs.f;
        if (str2 != null) {
          break label262;
        }
        localObject = cxs.h;
        label97:
        if (str2 != null) {
          break label270;
        }
        str2 = cxs.c;
        label107:
        if ((!dvp.v.b(paramInt)) || (!dvp.x.b(paramInt))) {
          break label278;
        }
        a(localContentResolver, localUri, str1, paramContext, localArrayList, paramInt);
        a(localContentResolver, localUri, (String)localObject, paramContext, localArrayList, paramInt);
        label153:
        paramContext = new bgc();
        if ((!dvp.v.b(paramInt)) || (!dvp.x.b(paramInt))) {
          break label496;
        }
        a(paramInt, localArrayList, 459, 407, 465, paramBoolean1, paramBoolean2, paramContext);
      }
    }
    for (;;)
    {
      paramContext = localArrayList.iterator();
      for (paramInt = 0; paramContext.hasNext(); paramInt = nexti + paramInt) {}
      paramContext = new String[2];
      paramContext[0] = str2;
      paramContext[1] = str1;
      break;
      label254:
      str1 = cxs.g;
      break label87;
      label262:
      localObject = cxs.i;
      break label97;
      label270:
      str2 = cxs.d;
      break label107;
      label278:
      a(localContentResolver, localUri, str2, paramContext, localArrayList, paramInt);
      break label153;
      long l2 = aal.a(paramContext, "babel_business_renotification_lookback_ms", eea.o);
      localObject = new bfz(paramContext, paramInt);
      paramContext = ((bfz)localObject).k();
      long l3 = System.currentTimeMillis();
      Iterator localIterator = paramContext.iterator();
      label336:
      long l1;
      if (localIterator.hasNext())
      {
        str1 = (String)localIterator.next();
        paramContext = ((bfz)localObject).c(str1, (l3 - l2) * 1000L);
        if (paramContext.size() <= 0) {
          break label448;
        }
        l1 = get0h;
        label399:
        if (str2 != null) {
          break label462;
        }
        paramContext = new String[2];
        paramContext[0] = str1;
        paramContext[1] = String.valueOf(l1);
        label422:
        if (str2 != null) {
          break label488;
        }
      }
      label448:
      label462:
      label488:
      for (str1 = cxs.k;; str1 = cxs.l)
      {
        a(localContentResolver, localUri, str1, paramContext, localArrayList, paramInt);
        break label336;
        break;
        l1 = (l3 - l2) * 1000L;
        break label399;
        paramContext = new String[3];
        paramContext[0] = str1;
        paramContext[1] = str2;
        paramContext[2] = String.valueOf(l1);
        break label422;
      }
      label496:
      a(paramInt, localArrayList, 456, 404, 462, paramBoolean1, paramBoolean2, paramContext);
    }
    return new cwx(paramInt, localArrayList);
  }
  
  private static void a(int paramInt, String paramString, long paramLong, bgc parambgc, csn paramcsn)
  {
    bfz localbfz = new bfz(aal.oJ, paramInt);
    k = localbfz.u(paramString);
    j = localbfz.t(paramString);
    i = paramLong;
    paramcsn.a(parambgc);
  }
  
  static void a(int paramInt1, List<cwz> paramList, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, bgc parambgc)
  {
    int i1 = paramList.size();
    if (i1 <= 0) {
      return;
    }
    long l1;
    Object localObject3;
    Object localObject1;
    Object localObject2;
    Object localObject4;
    label45:
    Object localObject5;
    if (paramBoolean1)
    {
      l1 = 0L;
      localObject3 = "";
      localObject1 = "";
      localObject2 = "";
      localObject4 = "";
      paramInt4 = 0;
      if (paramInt4 < i1)
      {
        if (!(geth.get(0) instanceof cxq)) {
          break label530;
        }
        localObject5 = (cxq)geth.get(0);
        long l2 = Long.parseLong(l);
        if (l1 >= l2) {
          break label530;
        }
        localObject4 = k;
        localObject3 = geta;
        localObject1 = h;
        localObject2 = m;
        l1 = l2;
      }
    }
    for (;;)
    {
      paramInt4 += 1;
      localObject5 = localObject4;
      Object localObject6 = localObject1;
      localObject1 = localObject3;
      localObject4 = localObject2;
      localObject2 = localObject6;
      localObject3 = localObject5;
      break label45;
      paramList = new czb((String)localObject2, (String)localObject4);
      paramBoolean1 = dvd.e(paramInt1).b().a(paramList);
      if ((TextUtils.isEmpty((CharSequence)localObject3)) || (paramBoolean1)) {
        break;
      }
      paramList = new csn().c((String)localObject3);
      if (paramBoolean2)
      {
        paramList = paramList.a(paramInt2).a((String)localObject1);
        if (i1 != 1) {
          break label310;
        }
      }
      label310:
      for (paramBoolean1 = true;; paramBoolean1 = false)
      {
        paramList = paramList.b(paramBoolean1);
        if (parambgc != null) {
          a(paramInt1, (String)localObject1, l1, parambgc, paramList);
        }
        aen.a(paramInt1, SystemClock.elapsedRealtime(), 10, paramList);
        return;
        paramInt2 = paramInt3;
        break;
      }
      paramInt2 = 0;
      while (paramInt2 < i1)
      {
        if (!TextUtils.isEmpty(geta))
        {
          localObject1 = geth;
          paramInt3 = 0;
          if (paramInt3 < ((List)localObject1).size())
          {
            if ((((List)localObject1).get(paramInt3) instanceof cxq))
            {
              localObject2 = (cxq)((List)localObject1).get(paramInt3);
              if (!TextUtils.isEmpty(k))
              {
                localObject3 = new csn().a(paramInt4).c(k).a(geta);
                if (i1 != 1) {
                  break label517;
                }
              }
            }
            label517:
            for (paramBoolean1 = true;; paramBoolean1 = false)
            {
              localObject3 = ((csn)localObject3).b(paramBoolean1);
              if (parambgc != null) {
                a(paramInt1, geta, Long.parseLong(l), parambgc, (csn)localObject3);
              }
              aen.a(paramInt1, SystemClock.elapsedRealtime(), 10, (csn)localObject3);
              paramInt3 += 1;
              break;
            }
          }
        }
        paramInt2 += 1;
      }
      break;
      label530:
      localObject6 = localObject4;
      localObject4 = localObject1;
      localObject5 = localObject3;
      localObject1 = localObject2;
      localObject2 = localObject6;
      localObject3 = localObject4;
      localObject4 = localObject5;
    }
  }
  
  private static void a(ContentResolver paramContentResolver, Uri paramUri, String paramString, String[] paramArrayOfString, List<cwz> paramList, int paramInt)
  {
    Cursor localCursor = paramContentResolver.query(paramUri, cxs.a, paramString, paramArrayOfString, "merge_key, timestamp DESC");
    cxq localcxq;
    int i2;
    label88:
    int i1;
    label118:
    label167:
    label197:
    int i3;
    label214:
    label226:
    label238:
    String str;
    if (localCursor != null)
    {
      try
      {
        if (!localCursor.moveToFirst()) {
          break label691;
        }
        paramContentResolver = null;
        localcxq = new cxq(localCursor, paramInt);
        paramUri = dvd.e(paramInt);
        if ((o == null) || (o.a == null) || (!RealTimeChatService.d(paramUri, o.a))) {
          break label746;
        }
        i2 = 1;
        if (new bfz(aal.oJ, paramInt).b(czb.b(m)) != 1) {
          break label752;
        }
        i1 = 1;
        if (aal.f(e)) {
          break label719;
        }
        if ((r == null) || (q == null) || (b == null) || (o.f == null)) {
          break label758;
        }
      }
      finally
      {
        label254:
        label404:
        localCursor.close();
      }
      if ((!dvp.v.b(paramInt)) || (!dvp.x.b(paramInt)) || (i2 == 0)) {
        break label764;
      }
      i2 = 1;
      if (i3 == 0)
      {
        if (r != null) {
          break label770;
        }
        paramUri = " null authorFullName ";
        if (q != null) {
          break label777;
        }
        paramString = " null authorDisplayName ";
        if (b != null) {
          break label784;
        }
        paramArrayOfString = " null text ";
        if (o.f != null) {
          break label791;
        }
        str = " null groupConversationName ";
        ezi.a("Babel", String.valueOf(paramUri).length() + 29 + String.valueOf(paramString).length() + String.valueOf(paramArrayOfString).length() + String.valueOf(str).length() + "Skipping notification because" + paramUri + paramString + paramArrayOfString + str, new Object[0]);
      }
      if (i2 != 0)
      {
        paramUri = String.valueOf(o.a);
        if (paramUri.length() != 0)
        {
          paramUri = "Skipping notification because the user focuses in the conversation: ".concat(paramUri);
          ezi.a("Babel", paramUri, new Object[0]);
        }
      }
      else
      {
        if (i1 == 0) {
          break label725;
        }
        paramUri = String.valueOf(m);
        if (paramUri.length() == 0) {
          break label609;
        }
        paramUri = "Skipping notification because the message is sent from blocked participant: ".concat(paramUri);
        ezi.a("Babel", paramUri, new Object[0]);
        break label725;
      }
    }
    for (;;)
    {
      if (i1 != 0) {
        if (paramContentResolver != null)
        {
          paramUri = paramContentResolver;
          if (TextUtils.equals(o.b, b)) {}
        }
        else
        {
          if (ezi.a("Babel", 3)) {
            if (paramContentResolver != null) {
              break label623;
            }
          }
          label609:
          label623:
          for (paramContentResolver = "null";; paramContentResolver = a)
          {
            paramUri = o.a;
            ezi.a("Babel", String.valueOf(paramContentResolver).length() + 44 + String.valueOf(paramUri).length() + "[Notifications] conversationId: " + paramContentResolver + " newConvId: " + paramUri, new Object[0]);
            paramUri = o;
            i1 = 0;
            while ((i1 < paramList.size()) && (g < getg)) {
              i1 += 1;
            }
            paramUri = new String("Skipping notification because the user focuses in the conversation: ");
            break;
            paramUri = new String("Skipping notification because the message is sent from blocked participant: ");
            break label404;
          }
          if (i1 < paramList.size())
          {
            paramList.add(i1, paramUri);
            paramContentResolver = paramUri;
            h.add(localcxq);
            i += 1;
          }
        }
      }
      for (;;)
      {
        boolean bool = localCursor.moveToNext();
        if (bool) {
          break label716;
        }
        label691:
        localCursor.close();
        return;
        paramList.add(paramUri);
        paramContentResolver = paramUri;
        break;
      }
      label716:
      break;
      label719:
      i3 = 1;
      break label167;
      label725:
      if ((i3 != 0) && (i2 == 0) && (i1 == 0))
      {
        i1 = 1;
        continue;
        label746:
        i2 = 0;
        break label88;
        label752:
        i1 = 0;
        break label118;
        label758:
        i3 = 0;
        break label167;
        label764:
        i2 = 0;
        break label197;
        label770:
        paramUri = "";
        break label214;
        label777:
        paramString = "";
        break label226;
        label784:
        paramArrayOfString = "";
        break label238;
        label791:
        str = "";
        break label254;
      }
      i1 = 0;
    }
  }
  
  private static eno b(String paramString)
  {
    paramString = enn.b(paramString).iterator();
    while (paramString.hasNext())
    {
      eno localeno = (eno)paramString.next();
      if (aal.b(b)) {
        return localeno;
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     cxq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */