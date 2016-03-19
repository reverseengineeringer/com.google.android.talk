import android.database.Cursor;
import android.os.Bundle;
import android.os.SystemClock;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class bry
{
  hq<String, Set<CharSequence>> a = new hq();
  private final int b;
  
  bry(int paramInt)
  {
    b = paramInt;
  }
  
  private void a(String paramString, long paramLong)
  {
    int i = 0;
    if (i < a.size())
    {
      String str2 = (String)a.b(i);
      if (((Set)a.c(i)).remove(paramString))
      {
        str1 = String.valueOf(paramString);
        if (str1.length() == 0) {
          break label125;
        }
      }
      label125:
      for (String str1 = "MessageList data changed, remove unrendered message ID: ".concat(str1);; str1 = new String("MessageList data changed, remove unrendered message ID: "))
      {
        ezi.c("Babel_UnrenderedMsg", str1, new Object[0]);
        aen.a(b, paramLong, 10, new csn().a(str2).b(paramString).a(208));
        i += 1;
        break;
      }
    }
  }
  
  void a()
  {
    String str = String.valueOf(a);
    ezi.c("Babel_UnrenderedMsg", String.valueOf(str).length() + 54 + "Leaving conversation, unrendered message list logged: " + str, new Object[0]);
    long l = SystemClock.elapsedRealtime();
    int i = 0;
    while (i < a.size())
    {
      str = (String)a.b(i);
      Iterator localIterator = ((Set)a.c(i)).iterator();
      while (localIterator.hasNext())
      {
        CharSequence localCharSequence = (CharSequence)localIterator.next();
        aen.a(b, l, 10, new csn().a(str).b(localCharSequence.toString()).a(209));
      }
      i += 1;
    }
    a.clear();
  }
  
  void a(Cursor paramCursor)
  {
    int j = 0;
    int k = paramCursor.getPosition();
    long l = SystemClock.elapsedRealtime();
    int m = Math.min(10, paramCursor.getCount());
    paramCursor.moveToLast();
    int i = 0;
    while ((!paramCursor.isBeforeFirst()) && (i < m))
    {
      a(paramCursor.getString(1), l);
      paramCursor.moveToPrevious();
      i += 1;
    }
    paramCursor.moveToFirst();
    i = j;
    while ((!paramCursor.isAfterLast()) && (i < m))
    {
      a(paramCursor.getString(1), l);
      paramCursor.moveToNext();
      i += 1;
    }
    paramCursor.moveToPosition(k);
  }
  
  void a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return;
    }
    CharSequence[] arrayOfCharSequence = paramBundle.getCharSequenceArray("unrendered_message_list_conv_ids");
    if (arrayOfCharSequence != null)
    {
      int i = 0;
      if (i < arrayOfCharSequence.length)
      {
        String str1 = arrayOfCharSequence[i].toString();
        Object localObject = String.valueOf("unrendered_message_list");
        String str2 = String.valueOf(str1);
        if (str2.length() != 0) {}
        for (localObject = ((String)localObject).concat(str2);; localObject = new String((String)localObject))
        {
          localObject = paramBundle.getCharSequenceArray((String)localObject);
          if ((localObject != null) && (localObject.length > 0)) {
            a.put(str1, new HashSet(Arrays.asList((Object[])localObject)));
          }
          i += 1;
          break;
        }
      }
    }
    paramBundle = String.valueOf(a);
    ezi.c("Babel_UnrenderedMsg", String.valueOf(paramBundle).length() + 40 + "Saved unrendered message list restored: " + paramBundle, new Object[0]);
  }
  
  void a(String paramString1, String paramString2)
  {
    if (!a.containsKey(paramString1)) {
      a.put(paramString1, new HashSet());
    }
    ((Set)a.get(paramString1)).add(paramString2);
    ezi.c("Babel_UnrenderedMsg", String.valueOf(paramString2).length() + 59 + String.valueOf(paramString1).length() + "Message sent, add unrendered message ID: " + paramString2 + " to conversation: " + paramString1, new Object[0]);
  }
  
  void b(Bundle paramBundle)
  {
    if (!a.isEmpty())
    {
      String str1 = String.valueOf(a);
      ezi.c("Babel_UnrenderedMsg", String.valueOf(str1).length() + 31 + "Unrendered message list saved: " + str1, new Object[0]);
      int j = a.size();
      paramBundle.putCharSequenceArray("unrendered_message_list_conv_ids", (CharSequence[])a.keySet().toArray(new CharSequence[j]));
      int i = 0;
      if (i < j)
      {
        String str2 = (String)a.b(i);
        Set localSet = (Set)a.c(i);
        str1 = String.valueOf("unrendered_message_list");
        str2 = String.valueOf(str2);
        if (str2.length() != 0) {}
        for (str1 = str1.concat(str2);; str1 = new String(str1))
        {
          paramBundle.putCharSequenceArray(str1, (CharSequence[])localSet.toArray(new CharSequence[localSet.size()]));
          i += 1;
          break;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     bry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */