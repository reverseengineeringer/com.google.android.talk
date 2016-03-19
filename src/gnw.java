import android.net.Uri;
import android.provider.ContactsContract.Data;

public abstract interface gnw
{
  public static final Uri a;
  public static final Uri b;
  
  static
  {
    Uri localUri = Uri.withAppendedPath(ContactsContract.Data.CONTENT_URI, "contactables");
    a = localUri;
    b = Uri.withAppendedPath(localUri, "filter");
  }
}

/* Location:
 * Qualified Name:     gnw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */