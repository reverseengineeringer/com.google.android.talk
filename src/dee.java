import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.widget.ImageView;
import com.android.ex.photo.PhotoViewPager;
import java.util.ArrayList;

public final class dee
  extends abn
  implements abs
{
  private ArrayList<String> O = new ArrayList();
  private final Runnable P = new def(this);
  
  public dee(acc paramacc)
  {
    super(paramacc);
  }
  
  public acj a(Context paramContext, bg parambg, float paramFloat)
  {
    return new ded(paramContext, parambg, null, paramFloat);
  }
  
  public fe<aco> a(String paramString)
  {
    String str;
    return new dec(a().i(), str, paramString, dvd.e(a().getIntent().getIntExtra("account_id", -1)));
  }
  
  public void a(ack paramack, boolean paramBoolean)
  {
    if ((p.getVisibility() != 8) && (paramack.u() == o.c()))
    {
      if (!paramBoolean) {
        ezi.d("Babel", "Failed to load fragment image", new Object[0]);
      }
      paramack = paramack.r();
      if ((paramack instanceof fcd)) {
        ((fcd)paramack).a(P);
      }
    }
    else
    {
      return;
    }
    P.run();
  }
  
  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    a(this);
  }
  
  public void a_(Cursor paramCursor)
  {
    O.clear();
    if (paramCursor.getCount() > 0)
    {
      long l1 = System.currentTimeMillis();
      long l2 = ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_young_image_threshold_millis", 300000);
      paramCursor.moveToLast();
      do
      {
        if (l1 - paramCursor.getLong(7) / 1000L >= l2) {
          break;
        }
        String str = paramCursor.getString(0);
        O.add(str);
      } while (paramCursor.moveToPrevious());
    }
  }
  
  public void i()
  {
    Object localObject = k();
    String str1;
    String str3;
    long l;
    String str4;
    if (localObject != null)
    {
      str1 = ((Cursor)localObject).getString(1);
      str3 = ((Cursor)localObject).getString(5);
      l = ((Cursor)localObject).getLong(7) / 1000L;
      String str2 = ((Cursor)localObject).getString(6);
      str4 = ((Cursor)localObject).getString(2);
      if (TextUtils.isEmpty(str1))
      {
        y = str3;
        z = aal.b(l).toString();
        if (!TextUtils.isEmpty(str2))
        {
          localObject = new Bundle();
          ((Bundle)localObject).putString("image_uri", str2);
          a().f().b(1, (Bundle)localObject, K);
        }
      }
    }
    for (;;)
    {
      a(a().j());
      return;
      localObject = str1;
      if (!str4.startsWith(enn.c.toString())) {
        localObject = Html.fromHtml(str1).toString();
      }
      y = ((String)localObject);
      localObject = String.valueOf(aal.b(l));
      z = (String.valueOf(str3).length() + 3 + String.valueOf(localObject).length() + str3 + " - " + (String)localObject);
      break;
      y = null;
      z = null;
    }
  }
}

/* Location:
 * Qualified Name:     dee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */