import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.gms.maps.model.LatLng;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ebx
  extends dyx
{
  private static final boolean a = false;
  private String e;
  private String f;
  private String g;
  private String h;
  private int i;
  private String j;
  private Long k;
  private final boolean l;
  private int m;
  private int n;
  private int o;
  private String p;
  private boolean q;
  private geo r;
  private String s;
  private String t;
  private int u;
  private long v;
  private final long w = SystemClock.elapsedRealtime() * 1000L;
  private final Context x;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public ebx(Context paramContext, bfd parambfd, String paramString, long paramLong1, long paramLong2)
  {
    super(parambfd);
    x = paramContext;
    if (paramLong1 != -1L) {
      k = Long.valueOf(paramLong1);
    }
    e = paramString;
    l = true;
    v = paramLong2;
  }
  
  public ebx(Context paramContext, bfd parambfd, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, int paramInt2, int paramInt3, String paramString6, String paramString7, boolean paramBoolean, geo paramgeo, long paramLong, int paramInt4)
  {
    super(parambfd);
    x = paramContext;
    e = paramString1;
    f = paramString2;
    g = aal.y(paramString3);
    h = paramString4;
    i = paramInt1;
    j = paramString5;
    n = paramInt2;
    o = paramInt3;
    s = paramString6;
    p = paramString7;
    l = false;
    q = paramBoolean;
    v = paramLong;
    m = paramInt4;
    r = paramgeo;
  }
  
  private long a(bfz parambfz, int paramInt)
  {
    parambfz.a();
    try
    {
      long l1 = parambfz.b(e, 1000);
      int i1;
      Object localObject1;
      String str1;
      Object localObject2;
      String str2;
      if (t != null)
      {
        if (u > 0)
        {
          i1 = u;
          g = x.getResources().getQuantityString(aal.hr, i1, new Object[] { Integer.valueOf(i1) });
        }
      }
      else
      {
        a(paramInt);
        localObject1 = d();
        str1 = e;
        localObject2 = b.b.b();
        str2 = f;
        String str3 = g;
        emc localemc = emc.b;
        if (!q) {
          break label385;
        }
        paramInt = 129;
        label122:
        localObject1 = new edn(str1, (czb)localObject2, l1, str2, null, str3, (List)localObject1, false, localemc, 0, 3, null, null, 0L, paramInt, 0L, p, 6, t, u, 0L);
        localObject2 = bft.f(parambfz, e);
        if (!q) {
          break label390;
        }
        paramInt = 1;
        label188:
        ((edn)localObject1).a(paramInt);
        ((edn)localObject1).a(emc.c);
        ((edn)localObject1).b(TextUtils.join(",", (Iterable)localObject2));
        ((edn)localObject1).a(parambfz, c);
        if (!q) {
          break label395;
        }
        a(new ecb(e, f, l1).a((String[])((List)localObject2).toArray(new String[0])).a(p).b(g).c(h).d(s).a(n).b(o).c(i).e(t).d(u).a(((edn)localObject1).a()).a());
      }
      for (;;)
      {
        localObject1 = Long.valueOf(((edn)localObject1).a());
        parambfz.b();
        parambfz.c();
        bft.d(parambfz, e);
        if (localObject1 != null) {
          break label513;
        }
        return -1L;
        i1 = 1;
        break;
        label385:
        paramInt = 0;
        break label122;
        label390:
        paramInt = 0;
        break label188;
        label395:
        long l2 = enn.a(x, (List)localObject2);
        str1 = parambfz.V(e);
        localObject2 = ((List)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          str2 = (String)((Iterator)localObject2).next();
          a(new ecf(e, f, l1).a(str2).b(g).a(l2).c(str1).b(((edn)localObject1).a()).a());
        }
      }
      return aal.a(localLong, 0L);
    }
    finally
    {
      parambfz.c();
    }
  }
  
  private long a(bfz parambfz, int paramInt, String paramString)
  {
    parambfz.a();
    long l1 = SystemClock.elapsedRealtime();
    Object localObject2;
    Object localObject1;
    for (;;)
    {
      try
      {
        a(paramInt);
        bgd localbgd = parambfz.f(e);
        localObject2 = localbgd;
        if (localbgd != null) {
          break;
        }
        localObject1 = localbgd;
        if (bfz.a(e))
        {
          localObject2 = RealTimeChatService.a(e);
          localObject1 = localbgd;
          if (localObject2 != null)
          {
            e = ((String)localObject2);
            if (a)
            {
              localObject1 = String.valueOf(e);
              if (((String)localObject1).length() == 0) {
                continue;
              }
              "sendMessageLocally conversationId changed: ".concat((String)localObject1);
            }
            localObject1 = parambfz.f(e);
          }
        }
        localObject2 = localObject1;
        if (localObject1 != null) {
          break;
        }
        paramString = String.valueOf(e);
        if (paramString.length() != 0)
        {
          paramString = "Failed to find conversation: ".concat(paramString);
          ezi.d("Babel", paramString, new Object[0]);
          parambfz.b();
          return -1L;
          new String("sendMessageLocally conversationId changed: ");
        }
        else
        {
          paramString = new String("Failed to find conversation: ");
        }
      }
      finally
      {
        parambfz.c();
      }
    }
    long l2 = bfz.b(q, 1);
    boolean bool;
    if (m == 1) {
      bool = true;
    }
    for (;;)
    {
      paramString = b(parambfz, l2, f, bool, paramInt, paramString, (bgd)localObject2);
      parambfz.b();
      parambfz.c();
      l2 = SystemClock.elapsedRealtime();
      paramInt = b.a;
      localObject1 = new csn().b(f).a(e);
      aen.a(paramInt, v / 1000L, 11, ((csn)localObject1).a(0));
      aen.a(paramInt, w / 1000L, 10, ((csn)localObject1).a(201));
      aen.a(paramInt, l1, 10, ((csn)localObject1).a(101));
      aen.a(paramInt, l2, 10, ((csn)localObject1).a(102));
      bft.d(parambfz, e);
      if (paramString != null) {
        break;
      }
      return -1L;
      if (m != 2)
      {
        int i1 = l;
        if (i1 == 1)
        {
          bool = true;
          continue;
        }
      }
      bool = false;
    }
    return aal.a(paramString, 0L);
  }
  
  private void a(int paramInt)
  {
    StringBuilder localStringBuilder;
    Object localObject;
    if ((r != null) && (aal.f(paramInt)))
    {
      localStringBuilder = new StringBuilder(g);
      localObject = ((crv)ilh.a(x, crv.class)).b(r);
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("\n");
      }
      localStringBuilder.append((String)localObject);
      if (g.length() > 160) {
        break label159;
      }
    }
    label159:
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      localStringBuilder.append("\n");
      localStringBuilder.append(r.c());
      localObject = r.b();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append("\n");
        localStringBuilder.append((CharSequence)localObject);
      }
      g = localStringBuilder.toString();
      return;
    }
  }
  
  public static void a(bfz parambfz, dyy paramdyy, bgo parambgo, bgd parambgd)
  {
    String str3 = b;
    String str4 = a;
    if ((!bfz.a(str3)) && (i == 0)) {
      if (parambfz.X(str3))
      {
        bft.a(parambfz.g(), str3, 5);
        if (a)
        {
          parambgo = String.valueOf("Messaging: delay sending message pending converting conversation to be permanent. ConversationId:");
          new StringBuilder(String.valueOf(parambgo).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(parambgo).append(str3).append(" messageId: ").append(str4);
        }
        paramdyy.a(new doz(new dos(bfz.i(), 1, null, bft.a(parambfz.g(), str3)), str3));
      }
    }
    label307:
    label347:
    label586:
    label614:
    label620:
    do
    {
      return;
      String str1;
      if (a)
      {
        str1 = String.valueOf("Messaging: creating SendChatMessageRequest for message. ConversationId:");
        new StringBuilder(String.valueOf(str1).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(str1).append(str3).append(" messageId: ").append(str4);
      }
      Object localObject;
      long l1;
      List localList;
      int i1;
      String str2;
      String str5;
      String str6;
      int i2;
      int i3;
      int i4;
      String str7;
      String str8;
      double d1;
      double d2;
      String str9;
      String str10;
      String str11;
      boolean bool;
      if ((a) && (aal.u(e)))
      {
        str1 = String.valueOf("Sending stress message from SendMessageGeneralOperation:");
        localObject = String.valueOf(e);
        if (((String)localObject).length() != 0) {
          str1.concat((String)localObject);
        }
      }
      else
      {
        l1 = parambfz.k(str3);
        localList = aal.h(parambgo.a());
        if (!"hangouts/location".equals(o)) {
          break label586;
        }
        str1 = k;
        switch (z)
        {
        default: 
          if (x == 1)
          {
            i1 = 1;
            str2 = null;
            localObject = str2;
            if (l != null)
            {
              localObject = str2;
              if (parambfz.af(l) != null) {
                localObject = aal.a(aal.oJ, "babel_stickers_account_id", "108618507921641169817");
              }
            }
            str2 = parambfz.S(str3);
            str5 = l;
            str6 = o;
            i2 = D;
            i3 = A;
            i4 = B;
            str7 = p;
            str8 = q;
            d1 = r;
            d2 = s;
            str9 = t;
            str10 = u;
            str11 = v;
            if (m != 2) {
              break label620;
            }
            if (l != 1) {
              break label614;
            }
            bool = true;
          }
          break;
        }
      }
      for (;;)
      {
        paramdyy.a(new dpo(str4, str3, str2, l1, localList, str5, (String)localObject, str6, i2, str1, i3, i4, str7, str8, d1, d2, str9, str10, str11, bool, x, y, i1));
        parambfz.a(str3, str4, emc.c, 0);
        parambfz.b(str3, l1 + 1L);
        return;
        new String(str1);
        break;
        str1 = j;
        break label307;
        i1 = 11;
        break label347;
        i1 = 2;
        break label347;
        i1 = 0;
        break label347;
        bool = false;
        continue;
        if (i > 0L) {
          bool = true;
        } else {
          bool = false;
        }
      }
      if ((i == 2) || (k == 1))
      {
        if (a)
        {
          parambfz = String.valueOf("Messaging: delay sending message pending re-accept an invite. ConversationId:");
          new StringBuilder(String.valueOf(parambfz).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(parambfz).append(str3).append(" messageId: ").append(str4);
        }
        paramdyy.a(new dpm(str3));
        return;
      }
      if (i == 4)
      {
        if (a)
        {
          paramdyy = String.valueOf("Messaging: delay sending message pending re-creation of conversation on server. ConversationId:");
          new StringBuilder(String.valueOf(paramdyy).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(paramdyy).append(str3).append(" messageId: ").append(str4);
        }
        RealTimeChatService.h(parambfz.g(), str3);
        return;
      }
    } while (!a);
    if (i == 1)
    {
      parambfz = String.valueOf("Messaging: delay sending message pending an in-flight accept invite request. ConversationId:");
      new StringBuilder(String.valueOf(parambfz).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(parambfz).append(str3).append(" messageId: ").append(str4);
      return;
    }
    if (i == 3)
    {
      parambfz = String.valueOf("Messaging: delay sending message pending an in-flight conversation creation request. ConversationId:");
      new StringBuilder(String.valueOf(parambfz).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(parambfz).append(str3).append(" messageId: ").append(str4);
      return;
    }
    if (i == 5)
    {
      parambfz = String.valueOf("Messaging: delay sending message pending an in-flight persist conversation request. ConversationId:");
      new StringBuilder(String.valueOf(parambfz).length() + 12 + String.valueOf(str3).length() + String.valueOf(str4).length()).append(parambfz).append(str3).append(" messageId: ").append(str4);
      return;
    }
    ezi.e("Babel", "Invalid state for conversation disposition", new Object[0]);
  }
  
  private boolean a(String paramString)
  {
    Object localObject;
    int i1;
    if (ezi.a("Babel", 3))
    {
      localObject = String.valueOf(paramString);
      if (((String)localObject).length() != 0)
      {
        localObject = "Check readiness for location image: ".concat((String)localObject);
        ezi.b("Babel", (String)localObject, new Object[0]);
      }
    }
    else
    {
      i1 = 0;
    }
    label160:
    String str2;
    for (;;)
    {
      if (i1 < 2)
      {
        try
        {
          localObject = x.getContentResolver().openFileDescriptor(Uri.parse(paramString), "r");
          if (localObject != null)
          {
            long l1 = ((ParcelFileDescriptor)localObject).getStatSize();
            if (l1 > 0L)
            {
              return true;
              localObject = new String("Check readiness for location image: ");
              break;
            }
          }
          Thread.sleep(1000L);
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          String str1 = String.valueOf(paramString);
          if (str1.length() == 0) {
            break label160;
          }
          for (str1 = "Location image not ready, will retry after 1 second: ".concat(str1);; str1 = new String("Location image not ready, will retry after 1 second: "))
          {
            ezi.d("Babel", str1, new Object[0]);
            break;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          str2 = String.valueOf(paramString);
          if (str2.length() == 0) {
            break label246;
          }
        }
        i1 += 1;
        continue;
        str2 = "Location image check interrupted.".concat(str2);
        ezi.d("Babel", str2, new Object[0]);
      }
    }
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = "Failed to get location image. Skipping it: ".concat(paramString);; paramString = new String("Failed to get location image. Skipping it: "))
    {
      ezi.e("Babel", paramString, new Object[0]);
      return false;
      label246:
      str2 = new String("Location image check interrupted.");
      break;
    }
  }
  
  private List<eft> d()
  {
    ArrayList localArrayList = new ArrayList();
    String str1;
    String str2;
    String str3;
    if ("hangouts/location".equals(s))
    {
      if (r == null)
      {
        ezi.e("Babel", "mPlace should not be null", new Object[0]);
        return localArrayList;
      }
      str1 = r.c().toString();
      d1 = r.d().a;
      d2 = r.d().b;
      str2 = r.b().toString();
      localObject = (crv)ilh.a(x, crv.class);
      str3 = ((crv)localObject).a(r);
      localObject = ((crv)localObject).b(r);
      localArrayList.add(new efv(new int[] { 0 }, str1, d1, d2, str2, str3, (String)localObject));
    }
    while ((j == null) && (h == null))
    {
      double d1;
      double d2;
      Object localObject;
      return localArrayList;
    }
    if (j != null) {
      ezi.c("Babel", "[SendMessageOp] photo: sending photo with photo id", new Object[0]);
    }
    for (;;)
    {
      if (s == null)
      {
        s = x.getContentResolver().getType(Uri.parse(h));
        if (s == null) {
          s = "image/jpg";
        }
      }
      str1 = j;
      str2 = h;
      int i1 = n;
      int i2 = o;
      str3 = s;
      int i3 = i;
      localArrayList.add(new efw(new int[] { 0 }, str1, str2, i1, i2, str3, i3));
      break;
      ezi.c("Babel", "[SendMessageOp] photo: sending photo with url", new Object[0]);
    }
  }
  
  protected long a(bfz parambfz, long paramLong, String paramString1, boolean paramBoolean, int paramInt, String paramString2)
  {
    List localList1 = aal.a(g, 0);
    List localList2 = d();
    paramString1 = new edn(e, b.b.b(), paramLong, paramString1, localList1, null, localList2, paramBoolean, emc.b, 0, paramInt, paramString2, null, 0L, 0, 0L, p, 6, null, 0, v);
    paramString1.a(parambfz, c);
    return paramString1.a();
  }
  
  protected void a(bfz parambfz, long paramLong, String paramString1, boolean paramBoolean, int paramInt, String paramString2, bgd parambgd)
  {
    String str2 = null;
    double d1 = 0.0D;
    double d2 = 0.0D;
    String str3 = null;
    String str1 = null;
    Object localObject = null;
    if (r != null)
    {
      aal.a(parambfz.g(), 1941);
      str2 = r.c().toString();
      d1 = r.d().a;
      d2 = r.d().b;
      str3 = r.b().toString();
      localObject = (crv)ilh.a(x, crv.class);
      str1 = ((crv)localObject).a(r);
      localObject = ((crv)localObject).b(r);
    }
    int i1 = -1;
    String str4;
    String str5;
    String str6;
    String str7;
    emc localemc;
    emd localemd;
    if (aal.f(paramInt))
    {
      if (q) {
        i1 = 1;
      }
    }
    else
    {
      str4 = aal.a(aal.a(g, 0), null);
      str5 = e;
      str6 = b.b.b().b;
      str7 = g;
      localemc = emc.b;
      localemd = emd.b;
      if (!paramBoolean) {
        break label317;
      }
    }
    label317:
    for (long l1 = Long.MAX_VALUE;; l1 = 0L)
    {
      paramString1 = new bgo(paramString1, str5, str6, str7, str4, localemc, localemd, paramLong, l1, h, str1, j, null, null, s, str2, d1, d2, str3, (String)localObject, paramInt, paramString2, i1, n, o, null, i, null, null, null, 0, null, null, null, 0L, 2);
      a(parambfz, c, paramString1, parambgd);
      return;
      i1 = 0;
      break;
    }
  }
  
  protected Long b(bfz parambfz, long paramLong, String paramString1, boolean paramBoolean, int paramInt, String paramString2, bgd parambgd)
  {
    long l1 = a(parambfz, paramLong, paramString1, paramBoolean, paramInt, paramString2);
    a(parambfz, paramLong, paramString1, paramBoolean, paramInt, paramString2, parambgd);
    return Long.valueOf(l1);
  }
  
  public Object o_()
  {
    return k;
  }
  
  public void p_()
  {
    bgd localbgd = null;
    Object localObject1;
    if (l)
    {
      if (ezi.a("Babel", 3)) {
        ezi.a("Babel", "retrySendMessage", new Object[0]);
      }
      localObject1 = new bfz(x, b.a);
      localbgd = ((bfz)localObject1).e(e);
      bft.a((bfz)localObject1, e, localbgd, aal.a(k, 0L), c, v, w);
      return;
    }
    Object localObject2;
    int i1;
    label258:
    boolean bool;
    if (ezi.a("Babel", 3))
    {
      if (g != null)
      {
        localObject1 = "...";
        localObject2 = h;
        i1 = i;
        ezi.a("Babel", String.valueOf(localObject1).length() + 65 + String.valueOf(localObject2).length() + "sendOriginalMessage: text=" + (String)localObject1 + ", mAttachmentUri=" + (String)localObject2 + ", rotation=" + i1, new Object[0]);
      }
    }
    else
    {
      localObject2 = new bfz(x, b.a);
      if (ezi.a("Babel", 3))
      {
        localObject1 = String.valueOf(e);
        if (((String)localObject1).length() == 0) {
          break label390;
        }
        localObject1 = "sendMessageLocally conversationId: ".concat((String)localObject1);
        ezi.a("Babel", (String)localObject1, new Object[0]);
      }
      bool = aen.a(s);
      if (j == null) {
        break label420;
      }
      if (ezi.a("Babel", 3))
      {
        localObject1 = String.valueOf(j);
        if (((String)localObject1).length() == 0) {
          break label405;
        }
        localObject1 = "sending image picasaPhotoId ".concat((String)localObject1);
        label322:
        ezi.a("Babel", (String)localObject1, new Object[0]);
      }
    }
    long l1;
    for (;;)
    {
      i1 = ((bfz)localObject2).g(e);
      if (!aal.e(i1)) {
        break label728;
      }
      if (!ezm.c()) {
        RealTimeChatService.g(b.b);
      }
      l1 = a((bfz)localObject2, i1);
      k = Long.valueOf(l1);
      return;
      localObject1 = null;
      break;
      label390:
      localObject1 = new String("sendMessageLocally conversationId: ");
      break label258;
      label405:
      localObject1 = new String("sending image picasaPhotoId ");
      break label322;
      label420:
      if ((!bool) && (h != null))
      {
        if (ezi.a("Babel", 3))
        {
          localObject1 = String.valueOf(h);
          if (((String)localObject1).length() == 0) {
            break label513;
          }
        }
        label513:
        for (localObject1 = "sending image ".concat((String)localObject1);; localObject1 = new String("sending image "))
        {
          ezi.a("Babel", (String)localObject1, new Object[0]);
          if (!h.startsWith(EsProvider.c(x))) {
            break label528;
          }
          ezi.a("Babel", "Sticker cache file found.", new Object[0]);
          break;
        }
        label528:
        if (TextUtils.equals(Uri.parse(h).getAuthority(), EsProvider.a))
        {
          if (ezi.a("Babel", 3))
          {
            localObject1 = String.valueOf(h);
            if (((String)localObject1).length() == 0) {
              break label630;
            }
          }
          label630:
          for (localObject1 = "sending attachment ".concat((String)localObject1);; localObject1 = new String("sending attachment "))
          {
            ezi.a("Babel", (String)localObject1, new Object[0]);
            if (!"hangouts/location".equals(s)) {
              break;
            }
            if (!a(h)) {
              break label645;
            }
            s = "image/jpeg";
            break;
          }
          label645:
          localObject1 = String.valueOf(h);
          if (((String)localObject1).length() != 0) {}
          for (localObject1 = "sending location failed because image not ready ".concat((String)localObject1);; localObject1 = new String("sending location failed because image not ready "))
          {
            ezi.d("Babel", (String)localObject1, new Object[0]);
            h = null;
            break;
          }
        }
        ezi.d("Babel", "trying to send an attachment that doesn't exist", new Object[0]);
        h = null;
      }
    }
    switch (i1)
    {
    default: 
      label728:
      localObject1 = localbgd;
    }
    for (;;)
    {
      l1 = a((bfz)localObject2, i1, (String)localObject1);
      break;
      localObject1 = b.b.v();
      continue;
      localObject1 = ezm.f();
    }
  }
}

/* Location:
 * Qualified Name:     ebx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */