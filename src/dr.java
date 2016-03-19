import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class dr
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  
  public static Bundle a(Notification.Builder paramBuilder, do paramdo)
  {
    paramBuilder.addAction(paramdo.a(), paramdo.b(), paramdo.c());
    paramBuilder = new Bundle(paramdo.d());
    if (paramdo.e() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", aen.a(paramdo.e()));
    }
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (a)
    {
      if (c) {
        return null;
      }
    }
  }
  
  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
  
  public static ArrayList<Parcelable> a(do[] paramArrayOfdo)
  {
    Object localObject;
    if (paramArrayOfdo == null)
    {
      localObject = null;
      return (ArrayList<Parcelable>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfdo.length);
    int j = paramArrayOfdo.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localObject = paramArrayOfdo[i];
      Bundle localBundle = new Bundle();
      localBundle.putInt("icon", ((do)localObject).a());
      localBundle.putCharSequence("title", ((do)localObject).b());
      localBundle.putParcelable("actionIntent", ((do)localObject).c());
      localBundle.putBundle("extras", ((do)localObject).d());
      localBundle.putParcelableArray("remoteInputs", aen.a(((do)localObject).e()));
      localArrayList.add(localBundle);
      i += 1;
    }
  }
  
  public static void a(cs paramcs, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    paramcs = new Notification.BigPictureStyle(paramcs.a()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      paramcs.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      paramcs.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(cs paramcs, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    paramcs = new Notification.BigTextStyle(paramcs.a()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      paramcs.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(cs paramcs, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    paramcs = new Notification.InboxStyle(paramcs.a()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      paramcs.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      paramcs.addLine((CharSequence)paramCharSequence1.next());
    }
  }
}

/* Location:
 * Qualified Name:     dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */