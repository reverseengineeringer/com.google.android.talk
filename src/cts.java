import android.content.ContentResolver;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class cts
  implements bec
{
  private final String a;
  private final Cursor b;
  
  public cts(String paramString, Cursor paramCursor)
  {
    a = paramString;
    b = paramCursor;
  }
  
  public bdy a()
  {
    Object localObject1 = getString(11);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    hq localhq = new hq();
    int i;
    Object localObject2;
    int k;
    CharSequence localCharSequence1;
    CharSequence localCharSequence2;
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      String[] arrayOfString = ((String)localObject1).split("#DELIM1#");
      int j = arrayOfString.length;
      i = 0;
      if (i < j)
      {
        localObject2 = arrayOfString[i].split("#DELIM2#", -1);
        k = Integer.parseInt(localObject2[0]);
        CharSequence localCharSequence3 = localObject2[6];
        localCharSequence1 = localObject2[7];
        localCharSequence2 = localObject2[8];
        if (TextUtils.isEmpty(localCharSequence3)) {
          break label443;
        }
        localObject1 = (bdx)localhq.get(localCharSequence3);
        if (localObject1 != null) {
          break label440;
        }
        localObject1 = new bdx(localCharSequence3);
        localhq.put(localCharSequence3, localObject1);
      }
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        if (!TextUtils.isEmpty(localCharSequence1)) {
          ((bdx)localObject1).a(localCharSequence1);
        }
        if (!TextUtils.isEmpty(localCharSequence2)) {
          ((bdx)localObject1).b(localCharSequence2);
        }
      }
      if (k == 0)
      {
        boolean bool = ezc.d(Integer.parseInt(localObject2[4]));
        localObject2 = new bee(localObject2[3], localObject2[1], localObject2[2], localObject2[10], bool);
        localArrayList1.add(localObject2);
        if (localObject1 != null) {
          ((bdx)localObject1).a((bee)localObject2);
        }
      }
      for (;;)
      {
        i += 1;
        break;
        if (k == 1)
        {
          localObject2 = new bdw(localObject2[3], localObject2[1]);
          localArrayList2.add(localObject2);
          if (localObject1 != null) {
            ((bdx)localObject1).a((bdw)localObject2);
          }
        }
      }
      localObject1 = new beb().b(getString(5)).b(ezc.d(getInt(8))).a(ezc.d(getInt(9))).c(ezc.d(getInt(6))).a(getString(4)).a(localhq.values()).c(localArrayList1).b(localArrayList2);
      if (!isNull(1)) {
        ((beb)localObject1).c(String.valueOf(getString(1)));
      }
      if (!isNull(2)) {
        ((beb)localObject1).d(String.valueOf(getLong(2)));
      }
      return ((beb)localObject1).a();
      label440:
      continue;
      label443:
      localObject1 = null;
    }
  }
  
  public void a(List<Object> paramList)
  {
    if (b.getCount() > 0) {
      paramList.add(a);
    }
  }
  
  public int b()
  {
    if (b.getCount() > 0) {
      return 1;
    }
    return 0;
  }
  
  public void close()
  {
    b.close();
  }
  
  public void copyStringToBuffer(int paramInt, CharArrayBuffer paramCharArrayBuffer)
  {
    b.copyStringToBuffer(paramInt, paramCharArrayBuffer);
  }
  
  @Deprecated
  public void deactivate()
  {
    b.deactivate();
  }
  
  public byte[] getBlob(int paramInt)
  {
    return b.getBlob(paramInt);
  }
  
  public int getColumnCount()
  {
    return b.getColumnCount();
  }
  
  public int getColumnIndex(String paramString)
  {
    return b.getColumnIndex(paramString);
  }
  
  public int getColumnIndexOrThrow(String paramString)
  {
    return b.getColumnIndexOrThrow(paramString);
  }
  
  public String getColumnName(int paramInt)
  {
    return b.getColumnName(paramInt);
  }
  
  public String[] getColumnNames()
  {
    return b.getColumnNames();
  }
  
  public int getCount()
  {
    return b.getCount();
  }
  
  public double getDouble(int paramInt)
  {
    return b.getDouble(paramInt);
  }
  
  public Bundle getExtras()
  {
    return b.getExtras();
  }
  
  public float getFloat(int paramInt)
  {
    return b.getFloat(paramInt);
  }
  
  public int getInt(int paramInt)
  {
    return b.getInt(paramInt);
  }
  
  public long getLong(int paramInt)
  {
    return b.getLong(paramInt);
  }
  
  public Uri getNotificationUri()
  {
    return b.getNotificationUri();
  }
  
  public int getPosition()
  {
    return b.getPosition();
  }
  
  public short getShort(int paramInt)
  {
    return b.getShort(paramInt);
  }
  
  public String getString(int paramInt)
  {
    return b.getString(paramInt);
  }
  
  public int getType(int paramInt)
  {
    return b.getType(paramInt);
  }
  
  public boolean getWantsAllOnMoveCalls()
  {
    return b.getWantsAllOnMoveCalls();
  }
  
  public boolean isAfterLast()
  {
    return b.isAfterLast();
  }
  
  public boolean isBeforeFirst()
  {
    return b.isBeforeFirst();
  }
  
  public boolean isClosed()
  {
    return b.isClosed();
  }
  
  public boolean isFirst()
  {
    return b.isFirst();
  }
  
  public boolean isLast()
  {
    return b.isLast();
  }
  
  public boolean isNull(int paramInt)
  {
    return b.isNull(paramInt);
  }
  
  public boolean move(int paramInt)
  {
    return b.move(paramInt);
  }
  
  public boolean moveToFirst()
  {
    return b.moveToFirst();
  }
  
  public boolean moveToLast()
  {
    return b.moveToLast();
  }
  
  public boolean moveToNext()
  {
    return b.moveToNext();
  }
  
  public boolean moveToPosition(int paramInt)
  {
    return b.moveToPosition(paramInt);
  }
  
  public boolean moveToPrevious()
  {
    return b.moveToPrevious();
  }
  
  public void registerContentObserver(ContentObserver paramContentObserver)
  {
    b.registerContentObserver(paramContentObserver);
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    b.registerDataSetObserver(paramDataSetObserver);
  }
  
  @Deprecated
  public boolean requery()
  {
    return b.requery();
  }
  
  public Bundle respond(Bundle paramBundle)
  {
    return b.respond(paramBundle);
  }
  
  public void setExtras(Bundle paramBundle)
  {
    b.setExtras(paramBundle);
  }
  
  public void setNotificationUri(ContentResolver paramContentResolver, Uri paramUri)
  {
    b.setNotificationUri(paramContentResolver, paramUri);
  }
  
  public void unregisterContentObserver(ContentObserver paramContentObserver)
  {
    b.unregisterContentObserver(paramContentObserver);
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    b.unregisterDataSetObserver(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     cts
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */