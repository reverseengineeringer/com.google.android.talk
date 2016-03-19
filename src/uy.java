import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObserver;
import android.support.v7.internal.widget.ActivityChooserView;
import android.widget.FrameLayout;
import android.widget.ImageView;

public final class uy
  extends DataSetObserver
{
  public uy(ActivityChooserView paramActivityChooserView) {}
  
  public void onChanged()
  {
    super.onChanged();
    ActivityChooserView localActivityChooserView = a;
    if (a.getCount() > 0)
    {
      d.setEnabled(true);
      int i = a.c();
      int j = a.d();
      if ((i != 1) && ((i <= 1) || (j <= 0))) {
        break label177;
      }
      e.setVisibility(0);
      Object localObject = a.b();
      PackageManager localPackageManager = localActivityChooserView.getContext().getPackageManager();
      f.setImageDrawable(((ResolveInfo)localObject).loadIcon(localPackageManager));
      if (l != 0)
      {
        localObject = ((ResolveInfo)localObject).loadLabel(localPackageManager);
        localObject = localActivityChooserView.getContext().getString(l, new Object[] { localObject });
        e.setContentDescription((CharSequence)localObject);
      }
    }
    for (;;)
    {
      if (e.getVisibility() != 0) {
        break label189;
      }
      b.setBackgroundDrawable(c);
      return;
      d.setEnabled(false);
      break;
      label177:
      e.setVisibility(8);
    }
    label189:
    b.setBackgroundDrawable(null);
  }
}

/* Location:
 * Qualified Name:     uy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */