import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.io.Serializable;

public final class czb
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<czb> CREATOR = new czc();
  private static final long serialVersionUID = 1L;
  public final String a;
  public final String b;
  
  public czb(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public static czb a(String paramString)
  {
    return new czb(paramString, null);
  }
  
  public static boolean a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if ((!TextUtils.isEmpty(paramString2)) && (!TextUtils.isEmpty(paramString4))) {
      return paramString2.equals(paramString4);
    }
    return (paramString1 != null) && (paramString1.equals(paramString3));
  }
  
  public static czb b(String paramString)
  {
    return new czb(null, paramString);
  }
  
  public boolean a()
  {
    return (TextUtils.isEmpty(a)) && (TextUtils.isEmpty(b));
  }
  
  public boolean a(czb paramczb)
  {
    if (paramczb == null) {
      return false;
    }
    return a(b, a, b, a);
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    return a(b, a, paramString1, paramString2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool4 = false;
    boolean bool3 = bool4;
    boolean bool1;
    boolean bool2;
    if (paramObject != null)
    {
      bool3 = bool4;
      if ((paramObject instanceof czb))
      {
        paramObject = (czb)paramObject;
        if (b != null) {
          break label86;
        }
        if (b != null) {
          break label81;
        }
        bool1 = true;
        if (a != null) {
          break label106;
        }
        if (a != null) {
          break label101;
        }
        bool2 = true;
      }
    }
    for (;;)
    {
      bool3 = bool4;
      if (bool1)
      {
        bool3 = bool4;
        if (bool2) {
          bool3 = true;
        }
      }
      return bool3;
      label81:
      bool1 = false;
      break;
      label86:
      bool1 = b.equals(b);
      break;
      label101:
      bool2 = false;
      continue;
      label106:
      bool2 = a.equals(a);
    }
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 1340874) * 31 + j;
      i = a.hashCode();
      break;
      label39:
      j = b.hashCode();
    }
  }
  
  public String toString()
  {
    String str1 = b;
    String str2 = a;
    return String.valueOf(str1).length() + 34 + String.valueOf(str2).length() + "ParticipantId {chatId: " + str1 + "  gaiaId: " + str2 + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int j = 1;
    if (a != null)
    {
      paramInt = 1;
      if (paramInt == 0) {
        break label74;
      }
      i = 1;
      label18:
      paramParcel.writeInt(i);
      if (paramInt != 0) {
        paramParcel.writeString(a);
      }
      if (b == null) {
        break label79;
      }
      paramInt = 1;
      label44:
      if (paramInt == 0) {
        break label84;
      }
    }
    label74:
    label79:
    label84:
    for (int i = j;; i = 0)
    {
      paramParcel.writeInt(i);
      if (paramInt != 0) {
        paramParcel.writeString(b);
      }
      return;
      paramInt = 0;
      break;
      i = 0;
      break label18;
      paramInt = 0;
      break label44;
    }
  }
}

/* Location:
 * Qualified Name:     czb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */