import android.os.Bundle;
import com.google.android.apps.hangouts.fragments.BabelPhotoViewFragment.StoragePermissionHelperActivity;
import java.util.List;

public final class bxu
  implements dcl
{
  public bxu(BabelPhotoViewFragment.StoragePermissionHelperActivity paramStoragePermissionHelperActivity) {}
  
  public void a(List<dcm> paramList, Bundle paramBundle)
  {
    hbs.a(Integer.valueOf(paramList.size()), Integer.valueOf(1));
    paramList = (dcm)paramList.get(0);
    hbs.a(a, "android.permission.WRITE_EXTERNAL_STORAGE");
    paramBundle = a;
    if (b) {}
    for (int i = -1;; i = 0)
    {
      paramBundle.setResult(i);
      a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bxu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */