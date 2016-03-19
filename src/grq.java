import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.wearable.Asset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class grq
{
  private final Uri a;
  private final grp b;
  
  private grq(grm paramgrm)
  {
    a = paramgrm.U_();
    b = b((grm)paramgrm.f());
  }
  
  public static grq a(grm paramgrm)
  {
    if (paramgrm == null) {
      throw new IllegalStateException("provided dataItem is null");
    }
    return new grq(paramgrm);
  }
  
  private static grp b(grm paramgrm)
  {
    if ((paramgrm.b() == null) && (paramgrm.c().size() > 0)) {
      throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
    }
    if (paramgrm.b() == null) {
      return new grp();
    }
    try
    {
      ArrayList localArrayList = new ArrayList();
      j = paramgrm.c().size();
      i = 0;
    }
    catch (gbm localgbm)
    {
      for (;;)
      {
        int j;
        int i;
        grn localgrn;
        new StringBuilder("Unable to parse datamap from dataItem. uri=").append(paramgrm.U_()).append(", data=").append(Base64.encodeToString(paramgrm.b(), 0));
        throw new IllegalStateException("Unable to parse datamap from dataItem.  uri=" + paramgrm.U_(), localgbm);
        localgbm.add(Asset.a(localgrn.R_()));
        i += 1;
      }
      grp localgrp = aal.a(new gba(gbb.a(paramgrm.b()), localgbm));
      return localgrp;
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;) {}
    }
    if (i < j)
    {
      localgrn = (grn)paramgrm.c().get(Integer.toString(i));
      if (localgrn == null) {
        throw new IllegalStateException("Cannot find DataItemAsset referenced in data at " + i + " for " + paramgrm);
      }
    }
  }
  
  public Uri a()
  {
    return a;
  }
  
  public grp b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     grq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */