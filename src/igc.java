import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class igc
  implements ioo, iou, iow, ioz
{
  private final Activity a;
  private final Set<igf> b = new HashSet();
  private SparseArray<ifo> c;
  private hst<ifw> d;
  
  igc(Activity paramActivity, iog paramiog)
  {
    a = paramActivity;
    paramiog.a(this);
  }
  
  public List<ifw> a(int paramInt)
  {
    List localList2 = d.a(Integer.valueOf(paramInt));
    List localList1 = localList2;
    if (localList2 == null) {
      localList1 = Collections.emptyList();
    }
    return localList1;
  }
  
  public void a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    int k = 0;
    new StringBuilder(39).append("onRequestPermissionsResult: ").append(paramInt);
    Object localObject = (ifo)c.get(paramInt);
    if (localObject == null)
    {
      paramArrayOfString = String.valueOf(c.toString());
      throw new IllegalStateException(String.valueOf(paramArrayOfString).length() + 37 + "No permission request " + paramInt + " in " + paramArrayOfString);
    }
    localObject = ((ifo)localObject).a();
    c.remove(paramInt);
    int[] arrayOfInt = new int[((List)localObject).size()];
    int i = 0;
    if (i < ((List)localObject).size())
    {
      j = 0;
      label141:
      if (j >= paramArrayOfString.length) {
        break label321;
      }
      if (!((String)((List)localObject).get(i)).equals(paramArrayOfString[j])) {}
    }
    label321:
    for (int j = paramArrayOfInt[j];; j = 0)
    {
      arrayOfInt[i] = j;
      i += 1;
      break;
      j += 1;
      break label141;
      paramArrayOfString = new ifw(paramInt, (String[])((List)localObject).toArray(new String[((List)localObject).size()]), arrayOfInt);
      paramArrayOfInt = b.iterator();
      i = k;
      while (paramArrayOfInt.hasNext()) {
        if (((igf)paramArrayOfInt.next()).a(paramArrayOfString)) {
          i = 1;
        }
      }
      if (i == 0)
      {
        new StringBuilder(55).append("onRequestPermissionsResult: ").append(paramInt).append(" not handled yet");
        d.a(Integer.valueOf(paramInt), paramArrayOfString);
      }
      return;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    String str;
    if (paramBundle != null)
    {
      c = paramBundle.getSparseParcelableArray("com.google.android.libraries.social.permissionmanager.PermissionResultReceiver.Requests");
      if (c != null) {
        break label95;
      }
      str = "";
      str = String.valueOf(str);
      if (str.length() == 0) {
        break label106;
      }
      "onCreate restored requests: ".concat(str);
    }
    for (;;)
    {
      d = ((hst)paramBundle.getParcelable("com.google.android.libraries.social.permissionmanager.PermissionResultReceiver.Results"));
      if (c == null) {
        c = new SparseArray();
      }
      if (d == null) {
        d = new hst(ifw.class);
      }
      return;
      label95:
      str = c.toString();
      break;
      label106:
      new String("onCreate restored requests: ");
    }
  }
  
  void a(ify paramify, int paramInt, List<String> paramList)
  {
    paramify = String.valueOf(paramList.toString());
    new StringBuilder(String.valueOf(paramify).length() + 32).append("requestPermissions: ").append(paramInt).append(" ").append(paramify);
    if (c.size() > 0)
    {
      paramify = String.valueOf(c.toString());
      throw new IllegalStateException(String.valueOf(paramify).length() + 62 + "Cannot request permissions " + paramInt + " when already requested " + paramify);
    }
    c.put(paramInt, new ifo(paramList));
    paramify = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      if (a.checkSelfPermission(str) == -1) {
        paramify.add(str);
      }
    }
    if (paramify.isEmpty())
    {
      new StringBuilder(44).append("requestPermissions: ").append(paramInt).append(", all granted");
      aal.a(new igd(this, paramInt));
      return;
    }
    int i = paramify.size();
    new StringBuilder(51).append("requestPermissions: ").append(paramInt).append(", ").append(i).append(" needed");
    paramList = new String[paramify.size()];
    paramify.toArray(paramList);
    a.requestPermissions(paramList, paramInt);
  }
  
  void a(igf paramigf)
  {
    b.add(paramigf);
  }
  
  public void b(Bundle paramBundle)
  {
    paramBundle.putSparseParcelableArray("com.google.android.libraries.social.permissionmanager.PermissionResultReceiver.Requests", c);
    paramBundle.putParcelable("com.google.android.libraries.social.permissionmanager.PermissionResultReceiver.Results", d);
  }
  
  void b(igf paramigf)
  {
    b.remove(paramigf);
  }
}

/* Location:
 * Qualified Name:     igc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */