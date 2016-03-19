import android.content.Context;
import android.content.Intent;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class cse
  implements crv
{
  private static String a(LatLng paramLatLng)
  {
    return String.format(Locale.US, "%.7f,%.7f", new Object[] { Double.valueOf(a), Double.valueOf(b) });
  }
  
  public int a()
  {
    return aal.a(aal.oJ, "babel_location_static_map_size", 400);
  }
  
  public Intent a(Context paramContext)
  {
    try
    {
      get localget = new get();
      localget.a(((hpu)ilh.a(paramContext, hpu.class)).c().b("account_name"));
      paramContext = localget.a(paramContext);
      return paramContext;
    }
    catch (fhq paramContext)
    {
      ezi.d("Babel", "GooglePlayServicesRepairableException", paramContext);
      return null;
    }
    catch (fhp paramContext)
    {
      ezi.d("Babel", "GooglePlayServicesNotAvailableException", paramContext);
    }
    return null;
  }
  
  public String a(geo paramgeo)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("https://maps.googleapis.com/maps/api/staticmap");
    paramgeo = a(paramgeo.d());
    localStringBuilder.append("?center=").append(paramgeo);
    localStringBuilder.append("&markers=color:red%7C").append(paramgeo);
    int i = a();
    localStringBuilder.append("&size=").append(i).append("x").append(i);
    return localStringBuilder.toString();
  }
  
  public void a(Context paramContext, int paramInt1, int paramInt2)
  {
    paramContext = (dck)ilh.a(paramContext, dck.class);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("android.permission.ACCESS_FINE_LOCATION");
    localArrayList.add("android.permission.ACCESS_COARSE_LOCATION");
    paramContext.a(new dco(paramInt1, paramInt2), localArrayList);
  }
  
  public void a(Context paramContext, int paramInt, crw paramcrw)
  {
    ((dck)ilh.a(paramContext, dck.class)).a(paramInt, new csf(this, paramcrw));
  }
  
  public crt b(Context paramContext)
  {
    return new csb(paramContext);
  }
  
  public String b(geo paramgeo)
  {
    String str = String.valueOf("https://maps.google.com/maps?q=");
    paramgeo = String.valueOf(a(paramgeo.d()));
    if (paramgeo.length() != 0) {
      return str.concat(paramgeo);
    }
    return new String(str);
  }
  
  public crs c(Context paramContext)
  {
    return new csa(paramContext);
  }
}

/* Location:
 * Qualified Name:     cse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */