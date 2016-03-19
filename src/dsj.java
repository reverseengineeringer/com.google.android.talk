import android.database.Cursor;
import android.os.SystemClock;
import android.text.TextUtils;
import java.util.List;

public class dsj
  extends dqf
{
  private static final long serialVersionUID = 2L;
  private final String g;
  private final long h;
  private final String[] i;
  private final String[] j;
  private final String[] k;
  private final String[] l;
  private final byte[] m;
  private boolean n;
  private final long o;
  
  private dsj(kdx paramkdx)
  {
    super(responseHeader, aal.a(c.c, 0L));
    g = c.d;
    h = aal.a(c.o, 0L);
    int i3 = b.length;
    j = new String[i3];
    k = new String[i3];
    l = new String[i3];
    i = new String[i3];
    o = aal.a(responseHeader.d, 0L);
    int i1;
    label145:
    map localmap;
    int i4;
    int i2;
    if ((c.e != null) && (c.e.d != null))
    {
      m = lyi.a(c.e.d);
      i1 = 0;
      if (i1 < i3)
      {
        localmap = (map)b[i1].a.a.b(map.a);
        j[i1] = f;
        k[i1] = e;
        l[i1] = i;
        i4 = g.length;
        i2 = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (i2 < i4)
        {
          String str = g[i2];
          if (str.startsWith("BABEL_UNIQUE_ID")) {
            i[i1] = str;
          }
        }
        else
        {
          i1 += 1;
          break label145;
          m = null;
          break;
        }
        i2 += 1;
      }
    }
    if (dqf.a)
    {
      paramkdx = String.valueOf(paramkdx);
      new StringBuilder(String.valueOf(paramkdx).length() + 29).append("SendChatMessageResponse from:").append(paramkdx);
    }
  }
  
  public static dqf parseFrom(kdx paramkdx)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsj(paramkdx);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((kdx)lyi.b(new kdx(), paramArrayOfByte, paramArrayOfByte.length));
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    long l1 = SystemClock.elapsedRealtime();
    super.a(parambfz, paramdyy);
    String str1 = k();
    Object localObject2 = l();
    int i1;
    int i2;
    Object localObject3;
    if (dqf.a)
    {
      paramdyy = g;
      l2 = d;
      i1 = j.length;
      new StringBuilder(String.valueOf(str1).length() + 157 + String.valueOf(paramdyy).length() + String.valueOf(localObject2).length()).append("processSendChatMessageResponse Conversation id: ").append(str1).append(", messageId: ").append(paramdyy).append(", messageTimestamp: ").append(l2).append(", messageClientGeneratedId: ").append((String)localObject2).append(", mediaId count: ").append(i1);
      paramdyy = j;
      i2 = paramdyy.length;
      i1 = 0;
      if (i1 < i2)
      {
        localObject3 = String.valueOf(paramdyy[i1]);
        if (((String)localObject3).length() != 0) {
          "  photoId ".concat((String)localObject3);
        }
        for (;;)
        {
          i1 += 1;
          break;
          new String("  photoId ");
        }
      }
      paramdyy = k;
      i2 = paramdyy.length;
      i1 = 0;
      if (i1 < i2)
      {
        localObject3 = String.valueOf(paramdyy[i1]);
        if (((String)localObject3).length() != 0) {
          "  albumId ".concat((String)localObject3);
        }
        for (;;)
        {
          i1 += 1;
          break;
          new String("  albumId ");
        }
      }
    }
    if (dqf.a)
    {
      localObject3 = m();
      if (localObject3 != null)
      {
        paramdyy = String.valueOf("Stress message sent successful update message state:");
        localObject3 = String.valueOf(localObject3);
        if (((String)localObject3).length() == 0) {
          break label744;
        }
        paramdyy.concat((String)localObject3);
      }
    }
    parambfz.a();
    long l2 = SystemClock.elapsedRealtime();
    label744:
    label770:
    label1091:
    label1098:
    label1179:
    label1186:
    try
    {
      paramdyy = parambfz.g(str1, (String)localObject2);
      if (paramdyy != null)
      {
        if (paramdyy != null) {
          break label770;
        }
        paramdyy = String.valueOf("Received SendChatMessageResponse for nonexistant  clientGeneratedId  = ");
        localObject3 = String.valueOf(o());
        ezi.e("Babel", String.valueOf(paramdyy).length() + 14 + String.valueOf(localObject2).length() + String.valueOf(localObject3).length() + paramdyy + (String)localObject2 + " /  eventId = " + (String)localObject3, new Object[0]);
        paramdyy = m;
        if (paramdyy == null) {}
      }
    }
    finally
    {
      do
      {
        try
        {
          String str2;
          for (;;)
          {
            paramdyy = new kfi();
            localObject3 = m;
            edn.a(blengtha, str1, g, d, parambfz);
            long l3 = SystemClock.elapsedRealtime();
            i1 = parambfz.g().g();
            paramdyy = new csn().b((String)localObject2).a(str1);
            aen.a(i1, l1, 10, paramdyy.a(204));
            aen.a(i1, l2, 10, paramdyy.a(103));
            aen.a(i1, l3, 13, paramdyy.a(0));
            parambfz.b();
            parambfz.c();
            if (!dqf.a) {
              break label1098;
            }
            localObject2 = parambfz.e().a("messages", null, "message_id=? OR message_id=?", new String[] { l(), o() }, null);
            paramdyy = String.valueOf("SendChatMessage.processResponse after endTransaction  cursor count is ");
            i1 = ((Cursor)localObject2).getCount();
            new StringBuilder(String.valueOf(paramdyy).length() + 11).append(paramdyy).append(i1);
            if (!((Cursor)localObject2).moveToFirst()) {
              break label1091;
            }
            localObject3 = ((Cursor)localObject2).getColumnNames();
            i2 = localObject3.length;
            i1 = 0;
            while (i1 < i2)
            {
              str2 = localObject3[i1];
              str1 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex(str2));
              paramdyy = str1;
              if (str2.equals("text")) {
                paramdyy = ezi.b(str1);
              }
              new StringBuilder(String.valueOf(str2).length() + 5 + String.valueOf(paramdyy).length()).append(str2).append(" ==> ").append(paramdyy);
              i1 += 1;
            }
            new String(paramdyy);
            break;
            paramdyy = parambfz.g(str1, o());
            continue;
            parambfz.a(str1, aal.a(paramdyy, 0L), aal.a(Long.valueOf(d), 0L), aal.a(Long.valueOf(h), 0L));
            parambfz.a(str1, aal.a(Long.valueOf(d), 0L), aal.a(paramdyy, 0L));
            parambfz.a(this);
            parambfz.h(str1, aal.a(Long.valueOf(d), 0L));
            bft.d(parambfz, str1);
          }
          localObject1 = finally;
          parambfz.c();
          if (!dqf.a) {
            break label1186;
          }
          localObject2 = parambfz.e().a("messages", null, "message_id=? OR message_id=?", new String[] { l(), o() }, null);
          parambfz = String.valueOf("SendChatMessage.processResponse after endTransaction  cursor count is ");
          i1 = ((Cursor)localObject2).getCount();
          new StringBuilder(String.valueOf(parambfz).length() + 11).append(parambfz).append(i1);
          if (!((Cursor)localObject2).moveToFirst()) {
            break label1179;
          }
          localObject3 = ((Cursor)localObject2).getColumnNames();
          i2 = localObject3.length;
          i1 = 0;
          while (i1 < i2)
          {
            str2 = localObject3[i1];
            paramdyy = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex(str2));
            parambfz = paramdyy;
            if (str2.equals("text")) {
              parambfz = ezi.b(paramdyy);
            }
            new StringBuilder(String.valueOf(str2).length() + 5 + String.valueOf(parambfz).length()).append(str2).append(" ==> ").append(parambfz);
            i1 += 1;
          }
        }
        catch (lyg paramdyy)
        {
          do
          {
            for (;;)
            {
              ezi.e("Babel", "Invalid ClientSuggestions protobuf parsed from ClientSendChatMessageResponse. This happening likely means a corrupt response proto has been received.", new Object[0]);
            }
          } while (((Cursor)localObject2).moveToNext());
          ((Cursor)localObject2).close();
          paramdyy = n();
          if (!TextUtils.isEmpty(paramdyy)) {
            ((bcm)ilh.a(aal.oJ, bcm.class)).a(new cto(parambfz.g().g(), paramdyy, true));
          }
          ((cyh)ilh.a(aal.oJ, cyh.class)).c(parambfz.g().g());
          return;
        }
      } while (((Cursor)localObject2).moveToNext());
      ((Cursor)localObject2).close();
    }
  }
  
  public void a(eff parameff)
  {
    boolean bool = true;
    super.a(parameff);
    if ((parameff instanceof dpo))
    {
      parameff = (dpo)parameff;
      if ((o != null) && (aal.b(m)) && (!"image/gif".equals(m)))
      {
        bool = true;
        n = bool;
      }
    }
    do
    {
      do
      {
        return;
        bool = false;
        break;
      } while (!(parameff instanceof bvx));
      parameff = ((bvx)parameff).g();
    } while ((parameff == null) || (parameff.size() == 0));
    if ((get0c == bkr.b) && (aal.b(get0d)) && (!"image/gif".equals(get0d))) {}
    for (;;)
    {
      n = bool;
      return;
      bool = false;
    }
  }
  
  public String k()
  {
    if ((b instanceof dpo)) {
      return b).c;
    }
    if ((b instanceof bvx)) {
      return ((bvx)b).b();
    }
    return null;
  }
  
  public String l()
  {
    if ((b instanceof dpo)) {
      return b).j;
    }
    if ((b instanceof bvx)) {
      return ((bvx)b).a();
    }
    return null;
  }
  
  public String m()
  {
    if ((b instanceof dpo)) {
      return ((dpo)b).e();
    }
    if ((b instanceof bvx)) {
      return ((bvx)b).o();
    }
    return null;
  }
  
  public String n()
  {
    if ((b instanceof dpo)) {
      return b).a;
    }
    if ((b instanceof bvx)) {
      return ((bvx)b).e();
    }
    return null;
  }
  
  public String o()
  {
    return g;
  }
  
  public long p()
  {
    return h;
  }
  
  public String[] q()
  {
    return j;
  }
  
  public String[] r()
  {
    return k;
  }
  
  public String[] s()
  {
    return l;
  }
  
  public String[] t()
  {
    return i;
  }
  
  public boolean u()
  {
    return n;
  }
}

/* Location:
 * Qualified Name:     dsj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */