import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.List;

public class cgs
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<cgs> CREATOR = new cgt();
  public static final Charset a = Charset.forName("UTF-8");
  private final String b;
  private final String c;
  private String d;
  private String e;
  private final String f;
  private final String g;
  private final String h;
  private final String i;
  private final Uri j;
  private final String k;
  private final int l;
  private final int m;
  private final String n;
  private final transient PendingIntent o;
  
  cgs(Parcel paramParcel)
  {
    b = paramParcel.readString();
    String str2 = paramParcel.readString();
    String str1 = str2;
    if ("conversation".equals(str2)) {
      str1 = "conversation";
    }
    c = str1;
    d = paramParcel.readString();
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    k = paramParcel.readString();
    m = paramParcel.readInt();
    l = paramParcel.readInt();
    n = paramParcel.readString();
    o = ((PendingIntent)paramParcel.readParcelable(null));
    j = ((Uri)paramParcel.readParcelable(null));
  }
  
  cgs(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, PendingIntent paramPendingIntent, Uri paramUri)
  {
    if ((paramString2 != null) && (paramString3 == null)) {
      throw new IllegalArgumentException("externalKeyType specified but not externalKey");
    }
    b = paramString1;
    l = paramInt2;
    m = paramInt1;
    d = paramString3;
    boolean bool;
    if ("conversation".equals(paramString2)) {
      if ((paramString4 == null) || (paramString4.equals(paramString3)))
      {
        bool = true;
        hbs.a("Expected condition to be true", bool);
        c = "conversation";
      }
    }
    for (e = paramString3;; e = paramString4)
    {
      f = paramString5;
      g = paramString6;
      h = paramString7;
      i = paramString8;
      n = paramString9;
      o = paramPendingIntent;
      k = paramString10;
      j = paramUri;
      return;
      bool = false;
      break;
      c = paramString2;
    }
  }
  
  public static cgs a(SharedPreferences paramSharedPreferences)
  {
    String str1 = paramSharedPreferences.getString("ACCOUNT_NAME", null);
    int i1 = paramSharedPreferences.getInt("CALL_MEDIA_TYPE", 1);
    String str2 = paramSharedPreferences.getString("EXTERNAL_KEY", null);
    String str3 = paramSharedPreferences.getString("EXTERNAL_KEY_TYPE", null);
    String str4 = paramSharedPreferences.getString("CONVERSATION_ID", null);
    String str5 = paramSharedPreferences.getString("INFO_HANGOUT_DOMAIN", null);
    String str6 = paramSharedPreferences.getString("INFO_HANGOUT_ID", null);
    String str7 = paramSharedPreferences.getString("INFO_CALENDAR_ID", null);
    String str8 = paramSharedPreferences.getString("INFO_EVENT_ID", null);
    String str9 = paramSharedPreferences.getString("PENDING_HANGOUT_ID_KEY", null);
    Object localObject = paramSharedPreferences.getString("ORIGINAL_URI", null);
    if (localObject != null) {}
    for (localObject = Uri.parse((String)localObject);; localObject = null) {
      return new cgs(str1, paramSharedPreferences.getInt("HANGOUT_TYPE", 1), i1, str3, str2, str4, str5, str6, str7, str8, paramSharedPreferences.getString("INFO_INVITEE_NICK", null), str9, null, (Uri)localObject);
    }
  }
  
  public static cgs a(Uri paramUri, String paramString, PendingIntent paramPendingIntent)
  {
    if (paramUri == null) {
      return null;
    }
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject7 = null;
    Object localObject8 = null;
    Object localObject2 = paramUri.getPathSegments();
    int i1 = ((List)localObject2).size();
    Object localObject1;
    Object localObject5;
    Object localObject6;
    if (i1 == 2)
    {
      localObject3 = (String)((List)localObject2).get(0);
      localObject1 = (String)((List)localObject2).get(1);
      if ("hangouts".equals(localObject3))
      {
        localObject2 = null;
        localObject5 = null;
        localObject3 = null;
        localObject4 = localObject1;
        localObject1 = localObject5;
        Object localObject9 = paramUri.getQueryParameter("hceid");
        localObject6 = localObject7;
        localObject5 = localObject8;
        if (!TextUtils.isEmpty((CharSequence)localObject9))
        {
          localObject9 = ((String)localObject9).split("\\.");
          localObject6 = localObject7;
          localObject5 = localObject8;
          if (localObject9.length == 2)
          {
            localObject6 = new String(kyr.a.a(localObject9[0]), a);
            localObject5 = Uri.decode(localObject9[1]);
          }
        }
        if ((localObject4 != null) || (localObject2 != null)) {
          break label773;
        }
        paramUri = String.valueOf(paramUri);
        hlk.a(5, "vclib", String.valueOf(paramUri).length() + 27 + "Could not parse " + paramUri + i1);
        return null;
      }
      if (!"call".equals(localObject3)) {
        break label826;
      }
    }
    for (;;)
    {
      localObject2 = null;
      localObject5 = null;
      localObject4 = localObject1;
      localObject3 = null;
      localObject1 = localObject5;
      break;
      if (i1 == 3)
      {
        localObject4 = (String)((List)localObject2).get(0);
        localObject5 = (String)((List)localObject2).get(1);
        localObject2 = (String)((List)localObject2).get(2);
        if (("talkgadget".equals(localObject4)) && ("hangout".equals(localObject5)))
        {
          localObject3 = null;
          localObject1 = null;
          localObject4 = localObject2;
          localObject5 = null;
          localObject2 = localObject3;
          localObject3 = localObject5;
          break;
        }
        localObject1 = localObject3;
        if (((String)localObject4).equals("hangouts"))
        {
          localObject1 = localObject3;
          if (((String)localObject5).equals("_")) {
            localObject1 = localObject2;
          }
        }
        localObject2 = null;
        localObject4 = localObject1;
        localObject5 = null;
        localObject3 = null;
        localObject1 = localObject2;
        localObject2 = localObject5;
        break;
      }
      if (i1 == 4)
      {
        localObject5 = (String)((List)localObject2).get(0);
        localObject3 = (String)((List)localObject2).get(1);
        localObject1 = (String)((List)localObject2).get(2);
        localObject2 = (String)((List)localObject2).get(3);
        if (("hangouts".equals(localObject5)) && ("_".equals(localObject3)))
        {
          if ("lite".equals(localObject1))
          {
            localObject3 = null;
            localObject1 = null;
            localObject4 = localObject2;
            localObject5 = null;
            localObject2 = localObject3;
            localObject3 = localObject5;
            break;
          }
          if (((String)localObject1).indexOf('.') != -1)
          {
            localObject4 = Uri.decode((String)localObject2);
            localObject2 = null;
            localObject5 = null;
            localObject3 = localObject1;
            localObject1 = localObject2;
            localObject2 = localObject5;
            break;
          }
          localObject4 = null;
          localObject3 = null;
          break;
        }
        if (("call".equals(localObject5)) && (((String)localObject3).indexOf('.') != 1))
        {
          localObject2 = null;
          localObject5 = null;
          localObject4 = localObject1;
          localObject1 = localObject5;
          break;
        }
        if ((!"hangouts".equals(localObject5)) || (!"extras".equals(localObject3))) {
          break label816;
        }
      }
      for (localObject2 = Uri.decode((String)localObject2);; localObject2 = localObject4)
      {
        localObject5 = null;
        localObject4 = localObject2;
        localObject2 = null;
        localObject3 = localObject1;
        localObject1 = localObject5;
        break;
        if (i1 == 5)
        {
          localObject1 = (String)((List)localObject2).get(0);
          localObject4 = (String)((List)localObject2).get(1);
          localObject5 = (String)((List)localObject2).get(2);
          localObject3 = (String)((List)localObject2).get(3);
          localObject2 = (String)((List)localObject2).get(4);
          if (("hangouts".equals(localObject1)) && ("_".equals(localObject4)) && (("extras".equals(localObject5)) || ("meet".equals(localObject5))))
          {
            localObject4 = Uri.decode((String)localObject2);
            localObject1 = null;
            localObject2 = null;
            break;
            label773:
            return new cgs(paramString, 1, 1, (String)localObject1, (String)localObject2, null, (String)localObject3, (String)localObject4, (String)localObject6, (String)localObject5, null, null, paramPendingIntent, paramUri);
          }
        }
        localObject1 = null;
        localObject4 = null;
        localObject2 = null;
        localObject3 = null;
        break;
        label816:
        localObject1 = null;
      }
      label826:
      localObject1 = null;
    }
  }
  
  public String a()
  {
    return b;
  }
  
  void a(SharedPreferences.Editor paramEditor)
  {
    paramEditor.putString("ACCOUNT_NAME", b);
    paramEditor.putInt("CALL_MEDIA_TYPE", l);
    paramEditor.putString("EXTERNAL_KEY", d);
    paramEditor.putString("EXTERNAL_KEY_TYPE", c);
    paramEditor.putString("CONVERSATION_ID", e);
    paramEditor.putString("INFO_HANGOUT_DOMAIN", f);
    paramEditor.putString("INFO_HANGOUT_ID", g);
    paramEditor.putString("INFO_CALENDAR_ID", h);
    paramEditor.putString("INFO_EVENT_ID", i);
    paramEditor.putString("PENDING_HANGOUT_ID_KEY", k);
    paramEditor.putInt("HANGOUT_TYPE", m);
    paramEditor.putString("INFO_INVITEE_NICK", n);
    if (j != null) {}
    for (String str = j.toString();; str = null)
    {
      paramEditor.putString("ORIGINAL_URI", str);
      return;
    }
  }
  
  public void a(String paramString)
  {
    d = paramString;
  }
  
  public cgs b(String paramString)
  {
    return new cgs(b, m, l, null, null, null, f, g, h, i, aal.A(paramString), null, null, j);
  }
  
  public String b()
  {
    return c;
  }
  
  public cgs c(String paramString)
  {
    if ((d == null) && (c == null) && (o == null) && (k == null)) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      if ((b == null) || (!b.equals(paramString))) {
        break;
      }
      return this;
    }
    return new cgs(paramString, m, l, null, null, null, f, g, h, i, null, null, null, j);
  }
  
  public boolean c()
  {
    return d != null;
  }
  
  public cgs d(String paramString)
  {
    return new cgs(b, m, l, c, d, null, null, paramString, h, i, n, null, o, j);
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public cgs e(String paramString)
  {
    if ("conversation".equals(c))
    {
      if ((paramString == null) && (g == null) && ((c == null) || ("conversation".equals(c)))) {
        throw new IllegalStateException("Erasing the only data of conv id");
      }
      String str2 = b;
      int i1 = m;
      int i2 = l;
      if (paramString == null) {}
      for (String str1 = null;; str1 = "conversation") {
        return new cgs(str2, i1, i2, str1, paramString, paramString, f, g, h, i, n, null, o, j);
      }
    }
    return new cgs(b, m, l, c, d, paramString, f, g, h, i, n, null, o, j);
  }
  
  public String e()
  {
    return e;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    int i1;
    label70:
    int i2;
    label80:
    label92:
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (paramObject == null);
          bool1 = bool2;
        } while (getClass() != paramObject.getClass());
        paramObject = (cgs)paramObject;
        bool1 = bool2;
      } while (!b.equals(b));
      if (m != 4) {
        break;
      }
      i1 = 1;
      if (m != 4) {
        break label275;
      }
      i2 = 1;
      if ((i1 != -1) && (i2 != -1)) {
        break label283;
      }
      i1 = 1;
      bool1 = bool2;
    } while (i1 == 0);
    label137:
    label160:
    int i3;
    if ((c != null) && (c.equals(c)) && (d.equals(d)))
    {
      i1 = 1;
      if ((e == null) || (!e.equals(e))) {
        break label335;
      }
      i2 = 1;
      if ((g == null) || (!g.equals(g)) || (((f != null) || (f != null)) && ((f == null) || (!f.equals(f))))) {
        break label340;
      }
      i3 = 1;
      label219:
      if ((k == null) || (!k.equals(k))) {
        break label346;
      }
    }
    label275:
    label283:
    label335:
    label340:
    label346:
    for (int i4 = 1;; i4 = 0)
    {
      if ((i1 == 0) && (i2 == 0) && (i3 == 0))
      {
        bool1 = bool2;
        if (i4 == 0) {
          break;
        }
      }
      return true;
      i1 = m;
      break label70;
      i2 = m;
      break label80;
      if ((i1 == 1) || (i1 == 7))
      {
        if ((i2 == 1) || (i2 == 7))
        {
          i1 = 1;
          break label92;
        }
        i1 = 0;
        break label92;
      }
      if (i1 == i2)
      {
        i1 = 1;
        break label92;
      }
      i1 = 0;
      break label92;
      i1 = 0;
      break label137;
      i2 = 0;
      break label160;
      i3 = 0;
      break label219;
    }
  }
  
  public String f()
  {
    return f;
  }
  
  public String g()
  {
    return g;
  }
  
  public String h()
  {
    return h;
  }
  
  public int hashCode()
  {
    return (b.hashCode() + 31) * 31 + m;
  }
  
  public String i()
  {
    return i;
  }
  
  public String j()
  {
    return k;
  }
  
  public Uri k()
  {
    return j;
  }
  
  public int l()
  {
    return l;
  }
  
  public int m()
  {
    return m;
  }
  
  public String n()
  {
    return n;
  }
  
  public PendingIntent o()
  {
    return o;
  }
  
  public boolean p()
  {
    return (g == null) && (c == null);
  }
  
  public boolean q()
  {
    return (!TextUtils.isEmpty(g)) && (!TextUtils.isEmpty(f));
  }
  
  public cgs r()
  {
    return new cgs(b, m, l, c, d, e, f, g, h, i, n, k, o, j);
  }
  
  public void s()
  {
    if (o != null) {}
    try
    {
      o.send();
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException)
    {
      hlk.a(5, "vclib", "HangoutRequest call complete intent could not be sent", localCanceledException);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("HangoutRequest{ account=").append(hlk.a(b)).append(", ");
    localStringBuilder.append("callMediaType=").append(l).append(", ");
    if (c != null)
    {
      if (!"conversation".equals(c)) {
        localStringBuilder.append("extKey=").append(c).append(':').append(d).append(", ");
      }
      localStringBuilder.append("convId=").append(e).append(", ");
    }
    if (g != null) {
      localStringBuilder.append("hangoutId=").append(f).append(':').append(hlk.a(g)).append(", ");
    }
    if ((h != null) && (i != null)) {
      localStringBuilder.append("calendarId=").append(h).append(':').append(i).append(", ");
    }
    if (k != null) {
      localStringBuilder.append("pendingIdKey=").append(hlk.a(k)).append(' ');
    }
    if (n != null) {
      localStringBuilder.append("inviteeNick=").append(hlk.a(n)).append(' ');
    }
    if (j != null) {
      localStringBuilder.append("originalUri=").append(j.toString()).append(' ');
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(k);
    paramParcel.writeInt(m);
    paramParcel.writeInt(l);
    paramParcel.writeString(n);
    paramParcel.writeParcelable(o, paramInt);
    paramParcel.writeParcelable(j, paramInt);
  }
}

/* Location:
 * Qualified Name:     cgs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */