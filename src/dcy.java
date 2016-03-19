import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.permissions.impl.RationaleActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dcy
  implements dcl
{
  public dcy(RationaleActivity paramRationaleActivity) {}
  
  public void a(List<dcm> paramList, Bundle paramBundle)
  {
    paramList = a;
    paramBundle = a;
    Intent localIntent = new Intent();
    localIntent.putExtra("original_request_code", paramBundle.getIntent().getIntExtra("original_request_code", 0));
    Object localObject = (ArrayList)paramBundle.getIntent().getSerializableExtra("permissions");
    ArrayList localArrayList = new ArrayList();
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      localArrayList.add(new dcm(str, j.a(str)));
    }
    localIntent.putExtra("permission_results", new ArrayList(localArrayList));
    paramList.setResult(-1, localIntent);
    a.finish();
  }
}

/* Location:
 * Qualified Name:     dcy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */