import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.mergedcontacts.impl.MergeContactsService;

final class cuh
  implements ctm
{
  cuh(cug paramcug, Context paramContext) {}
  
  public void a(int paramInt)
  {
    Intent localIntent = new Intent(a, MergeContactsService.class);
    localIntent.putExtra("account_id", paramInt);
    localIntent.putExtra("force_merge", true);
    a.startService(localIntent);
  }
}

/* Location:
 * Qualified Name:     cuh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */