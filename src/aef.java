import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.provider.Telephony.MmsSms;
import android.provider.Telephony.ThreadsColumns;
import android.util.Log;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public final class aef
  implements Telephony.ThreadsColumns
{
  public static final Uri a = Uri.withAppendedPath(Telephony.MmsSms.CONTENT_URI, "conversations");
  private static final String[] b = { "_id" };
  private static final Uri c = Uri.parse("content://mms-sms/threadID");
  
  public static long a(Context paramContext, String paramString)
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(paramString);
    return a(paramContext, localHashSet);
  }
  
  public static long a(Context paramContext, Set<String> paramSet)
  {
    Uri.Builder localBuilder = c.buildUpon();
    Iterator localIterator = paramSet.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramSet = str;
      if (aee.b(str)) {
        paramSet = aee.a(str);
      }
      localBuilder.appendQueryParameter("recipient", paramSet);
    }
    paramSet = localBuilder.build();
    paramContext = aal.a(paramContext.getContentResolver(), paramSet, b, null, null, null);
    if (paramContext != null) {}
    for (;;)
    {
      try
      {
        if (paramContext.moveToFirst())
        {
          long l = paramContext.getLong(0);
          return l;
        }
        Log.e("Telephony", "getOrCreateThreadId returned no rows!");
        paramContext.close();
        paramContext = String.valueOf(paramSet.toString());
        if (paramContext.length() != 0)
        {
          paramContext = "getOrCreateThreadId failed with uri ".concat(paramContext);
          Log.e("Telephony", paramContext);
          throw new IllegalArgumentException("Unable to find or allocate a thread ID.");
        }
      }
      finally
      {
        paramContext.close();
      }
      paramContext = new String("getOrCreateThreadId failed with uri ");
    }
  }
}

/* Location:
 * Qualified Name:     aef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */