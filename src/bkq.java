import android.os.Parcel;

public abstract class bkq
{
  public String a;
  public String b;
  public bkr c;
  public String d;
  
  protected void a(Parcel paramParcel)
  {
    paramParcel.writeInt(c.ordinal());
    paramParcel.writeString(b);
    paramParcel.writeString(a);
    paramParcel.writeString(d);
  }
  
  protected void b(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    c = bkr.values()[i];
    b = paramParcel.readString();
    a = paramParcel.readString();
    d = paramParcel.readString();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(c);
    String str2 = b;
    String str3 = d;
    String str4 = a;
    return String.valueOf(str1).length() + 47 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "attachmentType: " + str1 + " id: " + str2 + " contentType: " + str3 + " uriToSend: " + str4;
  }
  
  public abstract void writeToParcel(Parcel paramParcel, int paramInt);
}

/* Location:
 * Qualified Name:     bkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */