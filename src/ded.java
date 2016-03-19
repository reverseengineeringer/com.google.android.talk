import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import com.google.android.apps.hangouts.fragments.BabelPhotoViewFragment;

public final class ded
  extends acj
{
  final boolean j = false;
  
  public ded(Context paramContext, bg parambg, Cursor paramCursor, float paramFloat)
  {
    super(paramContext, parambg, null, paramFloat, false);
  }
  
  public av a(Cursor paramCursor, int paramInt)
  {
    Object localObject = b(paramCursor);
    String str = c(paramCursor);
    boolean bool3 = d(paramCursor);
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (localObject == null)
    {
      bool1 = bool2;
      if (bool3) {
        bool1 = true;
      }
    }
    abp localabp = aal.a(a, ack.class);
    localabp.c((String)localObject).d(str).a(j).a(h);
    localObject = localabp.b();
    ((Intent)localObject).putExtra("content_type", paramCursor.getString(paramCursor.getColumnIndex("contentType")));
    return BabelPhotoViewFragment.a((Intent)localObject, paramInt, bool1);
  }
}

/* Location:
 * Qualified Name:     ded
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */