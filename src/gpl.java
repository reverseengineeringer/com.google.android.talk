import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import java.util.regex.Pattern;

public final class gpl
  extends fkn
  implements gpw
{
  public static final String[] c = { "_id", "qualified_id", "gaia_id", "name", "sort_key", "sort_key_irank", "avatar", "profile_type", "v_circle_ids", "blocked", "in_viewer_domain", "last_modified", "name_verified", "given_name", "family_name", "affinity1", "affinity2", "affinity3", "affinity4", "affinity5", "people_in_common", "v_emails", "v_phones" };
  private final Bundle d;
  private final gnp e;
  private final gno f;
  private final boolean g;
  
  public gpl(DataHolder paramDataHolder, int paramInt, Bundle paramBundle, gnp paramgnp, gno paramgno)
  {
    super(paramDataHolder, paramInt);
    d = paramBundle;
    e = paramgnp;
    f = paramgno;
    g = d.getBoolean("emails_with_affinities", false);
  }
  
  public Iterable<gps> P_()
  {
    return f.a(b("v_emails"), g);
  }
  
  public Iterable<gpy> d()
  {
    return e.a(b("v_phones"), false);
  }
  
  public String[] i()
  {
    String str = b("v_circle_ids");
    if (TextUtils.isEmpty(str)) {
      return gpd.d;
    }
    return gpd.e.split(str, -1);
  }
}

/* Location:
 * Qualified Name:     gpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */