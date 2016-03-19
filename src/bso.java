import android.net.Uri;

public final class bso
{
  public final String a;
  public final bsq b;
  long c;
  Uri d;
  String e;
  long f;
  public boolean g;
  
  bso(String paramString, bsq parambsq)
  {
    a = paramString;
    b = parambsq;
  }
  
  public String toString()
  {
    String str1 = String.valueOf("MediaStoreData{fileName=");
    String str2 = a;
    long l1 = c;
    String str3 = String.valueOf(d);
    String str4 = e;
    String str5 = String.valueOf(b);
    long l2 = f;
    return String.valueOf(str1).length() + 87 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + str1 + str2 + ", rowId=" + l1 + ", uri=" + str3 + ", mimeType='" + str4 + "', type=" + str5 + ", dateTaken=" + l2 + "}";
  }
}

/* Location:
 * Qualified Name:     bso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */