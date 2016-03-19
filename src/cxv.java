import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.Iterator;

public final class cxv
  extends ehr
{
  public cxv()
  {
    super((byte)0);
  }
  
  public Intent a(Context paramContext, int paramInt, String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("conversationIdSetString", paramString);
    return super.b(paramContext, localIntent);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    int i = paramIntent.getIntExtra("account_id", -1);
    Object localObject1 = paramIntent.getStringExtra("conversationIdSetString");
    paramIntent = new bfz(paramContext, i);
    Object localObject2 = cxt.m;
    localObject1 = exn.a((String)localObject1);
    if ((dvp.v.b(i)) && (dvp.x.b(i)) && (localObject1 != null))
    {
      localObject2 = ((exn)localObject1).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        if ((!TextUtils.isEmpty(str)) && (!bfz.a(str))) {
          paramIntent.a(str, true);
        }
      }
    }
    if ((bft.a(paramIntent, (exn)localObject1) > 0) && (((ekq)ilh.a(paramContext, ekq.class)).b(i))) {
      cxx.a(paramContext, i, true, false, false);
    }
  }
}

/* Location:
 * Qualified Name:     cxv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */