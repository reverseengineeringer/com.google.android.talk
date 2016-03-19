import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

final class bmr
  implements dcl
{
  bmr(bmp parambmp) {}
  
  public void a(List<dcm> paramList, Bundle paramBundle)
  {
    int i;
    if ((aal.a(paramList)) && (a.a != null))
    {
      paramList = paramBundle.getString("permission_picker_name");
      i = 0;
      if (i >= a.a.size()) {
        break label80;
      }
      if (!paramList.equals(((bmt)a.a.get(i)).a())) {
        break label73;
      }
    }
    for (;;)
    {
      a.b(i);
      return;
      label73:
      i += 1;
      break;
      label80:
      i = -1;
    }
  }
}

/* Location:
 * Qualified Name:     bmr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */