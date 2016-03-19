import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Arrays;

public final class dvv
  implements Parcelable
{
  public static final Parcelable.Creator<dvv> CREATOR = new dvw();
  public static final dvv a = new dvv(1, null, null, 0, null, null, null, 61);
  private int b;
  private String c;
  private String d;
  private long e;
  private int f;
  private String g;
  private String h;
  private String i;
  private int j;
  private knq<String> k = kmm.a;
  private byte[] l = new byte[0];
  
  public dvv(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, String paramString4, String paramString5, int paramInt3)
  {
    b = paramInt1;
    c = paramString1;
    d = paramString2;
    e = System.currentTimeMillis();
    f = paramInt2;
    g = paramString3;
    h = paramString4;
    i = paramString5;
    j = paramInt3;
  }
  
  dvv(Parcel paramParcel)
  {
    b = paramParcel.readInt();
    c = paramParcel.readString();
    d = paramParcel.readString();
    f = paramParcel.readInt();
    e = paramParcel.readLong();
    g = paramParcel.readString();
    h = paramParcel.readString();
    i = paramParcel.readString();
    j = paramParcel.readInt();
    k = knq.c(paramParcel.readString());
    l = new byte[paramParcel.readInt()];
    paramParcel.readByteArray(l);
  }
  
  public Intent a(int paramInt, String paramString)
  {
    Object localObject = c();
    boolean bool;
    if (localObject != null)
    {
      bool = true;
      hbs.a("Expected condition to be true", bool);
      localObject = new cgu(paramString, 1).i(ezm.k((String)localObject)).a(2).a();
      if (f != 1) {
        break label114;
      }
    }
    label114:
    for (paramString = this;; paramString = new dvv(b, c, d, f, null, null, null, 61))
    {
      RealTimeChatService.a(paramInt, 1, paramString);
      localObject = aal.a((cgs)localObject, aen.a(Arrays.asList(new cyx[] { a() })), true, j, SystemClock.elapsedRealtime());
      ((Intent)localObject).putExtra("recent_call_timestamp", paramString.e());
      return (Intent)localObject;
      bool = false;
      break;
    }
  }
  
  public cyx a()
  {
    boolean bool;
    String str1;
    String str2;
    String str3;
    if (!TextUtils.isEmpty(g))
    {
      bool = true;
      str1 = c;
      str2 = aal.p();
      str3 = h;
      if (!bool) {
        break label95;
      }
    }
    label95:
    for (Object localObject = g;; localObject = c)
    {
      localObject = aal.a(str1, str2, bool, str3, (String)localObject, f);
      if ((k.a()) && (l.length > 0)) {
        ((cyx)localObject).a((String)k.b(), l);
      }
      return (cyx)localObject;
      bool = false;
      break;
    }
  }
  
  public void a(knq<azo> paramknq)
  {
    if (paramknq.a())
    {
      k = knq.b(((azo)paramknq.b()).c());
      l = ((azo)paramknq.b()).d();
      return;
    }
    l = new byte[0];
    k = kmm.a;
  }
  
  public int b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long e()
  {
    return e;
  }
  
  public int f()
  {
    return f;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeInt(f);
    paramParcel.writeLong(e);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeInt(j);
    if (k.a()) {}
    for (String str = (String)k.b();; str = null)
    {
      paramParcel.writeString(str);
      paramParcel.writeInt(l.length);
      paramParcel.writeByteArray(l);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */