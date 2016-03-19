import android.app.Notification;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.content.EsProvider;
import com.google.android.apps.hangouts.hangout.StressMode;
import com.google.android.apps.hangouts.phone.BabelGatewayActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class cyk
  extends cxt
{
  private static final Object A = new Object();
  private static final String y;
  private static final String z;
  private final boolean B;
  private final boolean C;
  public long a;
  
  static
  {
    String str1 = String.valueOf("conversation_id IN (SELECT + conversation_id FROM merge_keys WHERE merge_key=( SELECT merge_key FROM merge_keys WHERE conversation_id=?)) AND type IN (");
    int i = emd.c.ordinal();
    int j = emd.b.ordinal();
    y = String.valueOf(str1).length() + 25 + str1 + i + ", " + j + ")";
    str1 = String.valueOf("conversation_id IN (SELECT + conversation_id FROM merge_keys WHERE merge_key=( SELECT merge_key FROM merge_keys WHERE conversation_id=?)) AND type IN (");
    i = emd.c.ordinal();
    j = emd.b.ordinal();
    String str2 = String.valueOf("timestamp");
    String str3 = String.valueOf("chat_watermark");
    String str4 = String.valueOf("timestamp");
    String str5 = String.valueOf("1355097600000000");
    z = String.valueOf(str1).length() + 39 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + str1 + i + ", " + j + ") AND " + str2 + ">" + str3 + " AND " + str4 + " > " + str5;
  }
  
  cyk(Context paramContext, int paramInt, cwx paramcwx, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext, paramInt, paramcwx);
    B = paramBoolean1;
    C = paramBoolean2;
    paramcwx = (cwz)b.get(0);
    b(a);
    c(a);
    cxq localcxq = (cxq)h.get(0);
    h = c;
    this.i = d;
    int i;
    if ((h != null) && (TextUtils.isEmpty(b)))
    {
      i = StressMode.is;
      if (this.i == 2)
      {
        i = StressMode.ir;
        f = paramContext.getString(i);
        label128:
        if (!c) {
          break label346;
        }
        d = f;
        c = r;
        if (!bff.e(paramContext, paramInt)) {
          break label309;
        }
        e = paramContext.getString(StressMode.N, new Object[] { f });
      }
    }
    for (;;)
    {
      g = aal.a(paramInt, a, e);
      g.putExtra("is_chat_notification", true);
      g.putExtra("opened_from_impression", 1637);
      a = m;
      return;
      if (this.i == 3)
      {
        i = StressMode.iA;
        break;
      }
      if (this.i == 4)
      {
        i = StressMode.it;
        break;
      }
      if (this.i == 6)
      {
        i = StressMode.iz;
        break;
      }
      if (this.i != 7) {
        break;
      }
      i = StressMode.iu;
      break;
      f = b;
      break label128;
      label309:
      f = b(q, b, h, this.i);
      e = f;
      continue;
      label346:
      e = h.get(0)).r;
    }
  }
  
  private Notification a(int paramInt, boolean paramBoolean)
  {
    Object localObject1 = null;
    Object localObject4 = r.a();
    Object localObject5 = EsProvider.a(EsProvider.k, q).buildUpon().appendQueryParameter("limit", "21").build();
    ArrayList localArrayList = new ArrayList();
    localObject4 = p.getContentResolver().query((Uri)localObject5, cxs.a, y, new String[] { localObject4 }, "timestamp DESC");
    if (localObject4 != null) {}
    try
    {
      boolean bool = ((Cursor)localObject4).moveToFirst();
      if (!bool) {
        return null;
      }
      do
      {
        localObject5 = new cxq((Cursor)localObject4, q);
        if ((q != null) && ((!TextUtils.isEmpty(b)) || (c != null))) {
          localArrayList.add(b(q, b, c, d));
        }
        bool = ((Cursor)localObject4).moveToNext();
      } while (bool);
      ((Cursor)localObject4).close();
      if (localArrayList.size() <= 1) {
        return null;
      }
    }
    finally
    {
      ((Cursor)localObject4).close();
    }
    localObject4 = new SpannableStringBuilder();
    int j = localArrayList.size() - 1;
    int i = j;
    if (localArrayList.size() == 21)
    {
      ((SpannableStringBuilder)localObject4).append(p.getString(StressMode.bI)).append("\n\n");
      i = j - 1;
    }
    while (i >= 0)
    {
      ((SpannableStringBuilder)localObject4).append((CharSequence)localArrayList.get(i));
      if (i > 0) {
        ((SpannableStringBuilder)localObject4).append("\n\n");
      }
      i -= 1;
    }
    i = paramInt + 1;
    Object localObject3;
    if (i > 2)
    {
      localObject3 = p.getResources();
      if (paramBoolean)
      {
        paramInt = aal.hw;
        localObject3 = new SpannableString(((Resources)localObject3).getQuantityString(paramInt, i, new Object[] { Integer.valueOf(i) }));
      }
    }
    for (;;)
    {
      if (localObject3 != null)
      {
        ((SpannableString)localObject3).setSpan(new ForegroundColorSpan(p.getResources().getColor(aal.dI)), 0, ((SpannableString)localObject3).length(), 33);
        ((SpannableStringBuilder)localObject4).append("\n\n").append((CharSequence)localObject3);
      }
      localObject3 = new cy(p);
      ((cy)localObject3).a(new cx((cy)localObject3).b((CharSequence)localObject4));
      localObject4 = new dl();
      ((dl)localObject4).a();
      ((cy)localObject3).a((da)localObject4);
      return ((cy)localObject3).g();
      paramInt = aal.hv;
      break;
      if (paramBoolean) {
        localObject3 = new SpannableString(p.getResources().getString(StressMode.jZ));
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3)
  {
    cwz localcwz = (cwz)lb.get(0);
    if (B)
    {
      cxq localcxq = (cxq)h.get(0);
      paramInt3 = q;
      long l = SystemClock.elapsedRealtime();
      csn localcsn = new csn();
      if (C) {}
      for (;;)
      {
        aen.a(paramInt3, l, 10, localcsn.a(paramInt2).c(k).a(a).b(true));
        return;
        paramInt2 = paramInt1;
      }
    }
    cxq.a(q, lb, 0, 0, paramInt3, false, false, null);
  }
  
  static void a(Context paramContext, int paramInt, exn arg2)
  {
    exn localexn1 = ???;
    if (??? != null)
    {
      localexn1 = ???;
      if (???.size() > 1)
      {
        localexn1 = ???;
        if (!cww.c(paramContext)) {
          localexn1 = null;
        }
      }
    }
    exn localexn2;
    synchronized (A)
    {
      localexn2 = b(paramContext, paramInt);
      if (localexn2 != null)
      {
        Iterator localIterator = localexn2.iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if ((localexn1 == null) || (!localexn1.contains(str)))
          {
            str = a(paramContext, paramInt, str);
            du localdu = du.a(paramContext);
            cyb.a(str, 0);
            localdu.a(str, 0);
            if (b) {
              new StringBuilder(String.valueOf(str).length() + 57).append("SingleConversationNotifier.cancel [tag=]").append(str).append(" [id=]0");
            }
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        paramContext = ((hpz)ilh.a(paramContext, hpz.class)).b(paramInt);
        if (localexn1 != null) {
          continue;
        }
        if (localexn2 != null)
        {
          paramContext.b("notifications_group_children_key", null).d();
          if (!b) {}
        }
      }
      catch (hqd paramContext)
      {
        continue;
      }
      return;
      if (!localexn1.equals(localexn2))
      {
        paramContext.b("notifications_group_children_key", localexn1.b()).d();
        if (b)
        {
          paramContext = String.valueOf(localexn1.b());
          if (paramContext.length() != 0) {
            "Writing to prefstore: notified conversations ".concat(paramContext);
          } else {
            new String("Writing to prefstore: notified conversations ");
          }
        }
      }
    }
  }
  
  private PendingIntent b(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1;
    Object localObject;
    if ((lb.get(0)).c) && (r()) && (enn.c()))
    {
      bool1 = true;
      localObject = p;
      i = q;
      String str = r.a();
      long l = a;
      if (z()) {
        break label136;
      }
      label73:
      localObject = BabelGatewayActivity.a((Context)localObject, i, str, l, bool1, bool2);
      ((Intent)localObject).setFlags(268468224);
      if (!paramBoolean) {
        break label142;
      }
      ((Intent)localObject).putExtra("opened_from_impression", 2257);
    }
    label136:
    label142:
    for (int i = x();; i = super.w())
    {
      return PendingIntent.getActivity(p, i, (Intent)localObject, 134217728);
      bool1 = false;
      break;
      bool2 = false;
      break label73;
    }
  }
  
  private static exn b(Context paramContext, int paramInt)
  {
    try
    {
      paramContext = ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).a("notifications_group_children_key", "");
      if ((paramContext != null) && (paramContext.length() > 0)) {
        if (b)
        {
          String str = String.valueOf(paramContext);
          if (str.length() != 0) {
            "Reading from prefstore: notified conversations ".concat(str);
          }
        }
        else
        {
          return exn.a(paramContext);
        }
      }
    }
    catch (hqd paramContext)
    {
      for (;;)
      {
        paramContext = "";
        continue;
        new String("Reading from prefstore: notified conversations ");
      }
    }
    return null;
  }
  
  private qo y()
  {
    Object localObject3 = r.a();
    Object localObject4 = EsProvider.a(EsProvider.k, q);
    qo localqo = null;
    localObject3 = p.getContentResolver().query((Uri)localObject4, cxs.a, z, new String[] { localObject3 }, "timestamp ASC");
    if (localObject3 != null) {
      for (;;)
      {
        try
        {
          if (!((Cursor)localObject3).moveToFirst()) {
            break label176;
          }
          localObject4 = new cxq((Cursor)localObject3, q);
          if (TextUtils.isEmpty(b)) {
            break label170;
          }
          if (localqo == null)
          {
            localqo = new qo(r);
            localqo.a(o.g / 1000L);
            localqo.a(b.toString());
            boolean bool = ((Cursor)localObject3).moveToNext();
            if (bool) {
              break label173;
            }
            return localqo;
          }
        }
        finally
        {
          ((Cursor)localObject3).close();
        }
        continue;
        label170:
        continue;
        label173:
        continue;
        label176:
        Object localObject2 = null;
      }
    }
    return null;
  }
  
  private boolean z()
  {
    return ((cwz)l.b.get(0)).b();
  }
  
  protected void a(boolean paramBoolean)
  {
    Object localObject3 = p.getResources();
    cwz localcwz = (cwz)l.b.get(0);
    Object localObject2 = h;
    int i = ((List)localObject2).size();
    u.a(e).c(m()).b(f);
    if (l.a > 1) {
      u.b(l.a);
    }
    Object localObject1;
    boolean bool;
    if ((i == 1) && (h != null) && (this.i != 2)) {
      if (h.startsWith("//"))
      {
        localObject1 = String.valueOf(h);
        if (((String)localObject1).length() != 0)
        {
          localObject1 = "http:".concat((String)localObject1);
          h = ((String)localObject1);
        }
      }
      else
      {
        localObject1 = get0q;
        t = new cw(u).a(a((String)localObject1, null, null, 0));
        if (this.i != 3) {
          break label440;
        }
        bool = true;
        label213:
        localObject1 = new bhs(new eyd(h, ((hpz)ilh.a(p, hpz.class)).a(q).b("account_name")).a(((Resources)localObject3).getDimensionPixelSize(aal.ev), ((Resources)localObject3).getDimensionPixelSize(aal.eu)).c(bool).d(true), new cyl(this), false, this);
        if (b)
        {
          localObject2 = String.valueOf(h);
          if (((String)localObject2).length() == 0) {
            break label445;
          }
          "postNotification created ImageRequest on: ".concat((String)localObject2);
        }
        label332:
        ((eit)ilh.a(p, eit.class)).c((ehx)localObject1);
      }
    }
    for (;;)
    {
      localObject1 = ilh.c(p, cyj.class).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = ((cyj)((Iterator)localObject1).next()).a(q, localcwz, b(2854));
        if (localObject2 != null) {
          u.a((cu)localObject2);
        }
      }
      localObject1 = new String("http:");
      break;
      label440:
      bool = false;
      break label213;
      label445:
      new String("postNotification created ImageRequest on: ");
      break label332;
      localObject3 = new cx(u);
      t = ((dk)localObject3);
      if (i == 1)
      {
        ((cx)localObject3).b(f);
      }
      else
      {
        SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder();
        i = ((List)localObject2).size() - 1;
        if (i >= 0)
        {
          localObject1 = (cxq)((List)localObject2).get(i);
          h = c;
          this.i = d;
          CharSequence localCharSequence = b;
          if ((!TextUtils.isEmpty(localCharSequence)) || (!TextUtils.isEmpty(h))) {
            if ((!c) || (bff.e(p, q))) {
              break label648;
            }
          }
          label648:
          for (localObject1 = b(q, localCharSequence, h, this.i);; localObject1 = b(null, localCharSequence, h, this.i))
          {
            localSpannableStringBuilder.append((CharSequence)localObject1);
            if (i > 0) {
              localSpannableStringBuilder.append('\n');
            }
            i -= 1;
            break;
          }
        }
        ((cx)localObject3).b(localSpannableStringBuilder);
      }
    }
    u.a(g / 1000L);
    super.a(paramBoolean);
  }
  
  protected void h()
  {
    Object localObject1;
    Object localObject2;
    Object localObject3;
    int i;
    if ((cww.b(p)) && (!r()) && (!l.b.get(0)).c))
    {
      localObject1 = y();
      if (localObject1 != null)
      {
        localObject2 = b(false);
        localObject3 = a(p);
        Intent localIntent = BabelGatewayActivity.a(q, r.a());
        i = super.w();
        localObject1 = ((qo)localObject1).a(PendingIntent.getActivity(p, i + 1, localIntent, 134217728)).a((PendingIntent)localObject2, (ee)localObject3).d();
        u.a(new g().a((eal)localObject1).a(p.getResources().getColor(aal.cP)));
      }
    }
    boolean bool;
    if (cww.a(p))
    {
      int j = p.getSharedPreferences("wearablePrefs", 0).getInt("api_level", 22);
      v.a();
      bool = r();
      if ((!l.b.get(0)).c) || (!bool) || (!enn.c())) {
        break label468;
      }
      i = 1;
      if (i == 0) {
        break label473;
      }
      i = StressMode.gM;
      label242:
      localObject1 = a(p);
      localObject2 = b(true);
      localObject2 = new cv(R.drawable.bb, p.getString(i), (PendingIntent)localObject2);
      ((cv)localObject2).a((ee)localObject1);
      v.a(((cv)localObject2).b());
      if (j <= 21) {
        break label491;
      }
      localObject1 = new cv(R.drawable.bh, p.getString(StressMode.gV), t());
      localObject2 = new Bundle();
      ((Bundle)localObject2).putInt("type", 2);
      ((Bundle)localObject2).putString("action", "android.intent.action.VIEW");
      ((Bundle)localObject2).putString("packageName", "com.google.android.talk");
      ((Bundle)localObject2).putInt("flags", 32768);
      localObject3 = new Bundle();
      ((Bundle)localObject3).putString("accountGaia", bff.c(p, q));
      ((Bundle)localObject3).putString("conversationId", r.a());
      ((Bundle)localObject2).putBundle("extras", (Bundle)localObject3);
      ((cv)localObject1).a().putBundle("com.google.android.wearable.preview.extra.REMOTE_INTENT", (Bundle)localObject2);
      v.a(((cv)localObject1).b());
    }
    for (;;)
    {
      super.h();
      return;
      label468:
      i = 0;
      break;
      label473:
      if (bool)
      {
        i = StressMode.gN;
        break label242;
      }
      i = StressMode.gL;
      break label242;
      label491:
      localObject1 = r.a();
      localObject1 = a(beu.b(dvd.e(q), (String)localObject1), z());
      if (localObject1 != null) {
        v.a((Notification)localObject1);
      }
    }
  }
  
  protected void i()
  {
    super.i();
    cwz localcwz = (cwz)l.b.get(0);
    bfd localbfd = dvd.e(q);
    if (h.size() == 1) {}
    for (int i = 1926;; i = 1927)
    {
      aal.a(localbfd, i);
      p();
      a(405, 457, 463);
      return;
    }
  }
  
  protected String j()
  {
    return a(p, q, r.a());
  }
  
  protected void k()
  {
    a(406, 458, 464);
  }
  
  protected int q()
  {
    return super.q() + 2;
  }
}

/* Location:
 * Qualified Name:     cyk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */