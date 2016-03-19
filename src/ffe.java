import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.net.Uri.Builder;
import com.google.android.gms.wearable.PutDataRequest;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ffe
{
  static final Uri a = new Uri.Builder().scheme("wear").path("/hangouts/api_level/").build();
  private static final boolean c;
  final fic b;
  private final grg d = gry.a;
  private final grr e = gry.c;
  private final ffh f;
  private final bcm g;
  private final fif h = new fff(this);
  private final Context i;
  private final SharedPreferences j;
  
  static
  {
    imx localimx = ezi.v;
    c = false;
  }
  
  ffe(Context paramContext)
  {
    i = paramContext;
    b = new fid(paramContext).a(gry.l).a(h).b();
    j = paramContext.getSharedPreferences("wearablePrefs", 0);
    g = ((bcm)ilh.a(paramContext, bcm.class));
    f = new ffh(paramContext);
  }
  
  public static int a(grm paramgrm)
  {
    if (paramgrm == null) {
      return 0;
    }
    return grq.a(paramgrm).b().d("4");
  }
  
  public static bfd b(int paramInt)
  {
    return dvd.e(paramInt);
  }
  
  public static bfd b(String paramString)
  {
    return dvd.a(paramString, null);
  }
  
  static grp b(grm paramgrm)
  {
    return grq.a(paramgrm).b();
  }
  
  static grw c(grm paramgrm)
  {
    paramgrm = grq.a(paramgrm);
    return new grw(PutDataRequest.a(paramgrm.a()), paramgrm.b());
  }
  
  static MessageDigest g()
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      return localMessageDigest;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new IllegalStateException("proper crypto support not installed", localNoSuchAlgorithmException);
    }
  }
  
  static int[] h()
  {
    return dvd.x();
  }
  
  fic a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = j.edit();
    localEditor.putInt("api_level", paramInt);
    localEditor.apply();
    ezi.a("BabelWearContext", 39 + "Wearable API level saved as " + paramInt, new Object[0]);
  }
  
  void a(bfd parambfd, Map<String, String> paramMap, Map<String, Uri> paramMap1)
  {
    Iterator localIterator = paramMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str1 = (String)localIterator.next();
      String str2 = (String)paramMap.get(str1);
      ffj localffj = new ffj(g);
      f.a(parambfd, str1, str2, localffj);
      if (paramMap1 != null) {
        paramMap1.remove(str1);
      }
    }
  }
  
  public void a(String paramString)
  {
    Object localObject;
    if (c)
    {
      localObject = String.valueOf(ezi.b(paramString));
      if (((String)localObject).length() == 0) {
        break label57;
      }
      "WearableService.saveWearableInformation account: ".concat((String)localObject);
    }
    for (;;)
    {
      localObject = j.edit();
      ((SharedPreferences.Editor)localObject).putString("wearable-account-", paramString);
      ((SharedPreferences.Editor)localObject).apply();
      return;
      label57:
      new String("WearableService.saveWearableInformation account: ");
    }
  }
  
  grg b()
  {
    return d;
  }
  
  grr c()
  {
    return e;
  }
  
  public boolean d()
  {
    return cww.a(i);
  }
  
  public void e()
  {
    b.d();
  }
  
  public String f()
  {
    return j.getString("wearable-account-", null);
  }
}

/* Location:
 * Qualified Name:     ffe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */