import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.apps.hangouts.permissions.impl.RationaleActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dcx
  implements View.OnClickListener
{
  public dcx(RationaleActivity paramRationaleActivity) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == aal.oF)
    {
      paramView = a;
      RationaleActivity localRationaleActivity = a;
      Intent localIntent = new Intent();
      localIntent.putExtra("original_request_code", localRationaleActivity.getIntent().getIntExtra("original_request_code", 0));
      Object localObject = (ArrayList)localRationaleActivity.getIntent().getSerializableExtra("permissions");
      ArrayList localArrayList = new ArrayList();
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        localArrayList.add(new dcm(str, j.a(str)));
      }
      localIntent.putExtra("permission_results", new ArrayList(localArrayList));
      paramView.setResult(0, localIntent);
      a.finish();
      return;
    }
    paramView = (ArrayList)a.getIntent().getSerializableExtra("permissions");
    a.k.a(new dco(aal.oC, 0), paramView);
  }
}

/* Location:
 * Qualified Name:     dcx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */