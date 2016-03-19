import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Files;
import java.util.ArrayList;
import java.util.List;

final class bsz
  extends et<List<bso>>
{
  private static final String[] f = { "_id", "mime_type", "title", "date_added", "_data" };
  private final ff g = new ff(this);
  private final Uri h = MediaStore.Files.getContentUri("external");
  private List<bso> i = new ArrayList();
  private boolean j;
  private boolean k;
  
  public bsz(Context paramContext, boolean paramBoolean)
  {
    super(paramContext);
    k = paramBoolean;
  }
  
  private void a(List<bso> paramList)
  {
    if ((!r()) && (p())) {
      super.b(paramList);
    }
  }
  
  private List<bso> h()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject4 = n().getContentResolver();
    Object localObject5 = h;
    Object localObject6 = f;
    if (k) {}
    for (Object localObject1 = "(media_type=1) OR (media_type=3)";; localObject1 = "(media_type=1)")
    {
      localObject4 = ((ContentResolver)localObject4).query((Uri)localObject5, (String[])localObject6, (String)localObject1, null, "date_added DESC");
      if (localObject4 != null) {
        break;
      }
      ezi.d("Babel_GalleryPicker", String.format("Could not query MediaStore for content Uri: %s and allowVideo: %s.", new Object[] { h, Boolean.valueOf(k) }), new Object[0]);
      return localArrayList;
    }
    for (;;)
    {
      try
      {
        int m = ((Cursor)localObject4).getColumnIndexOrThrow("_id");
        int n = ((Cursor)localObject4).getColumnIndexOrThrow("_data");
        int i1 = ((Cursor)localObject4).getColumnIndexOrThrow("date_added");
        int i2 = ((Cursor)localObject4).getColumnIndex("mime_type");
        if (!((Cursor)localObject4).moveToNext()) {
          break label355;
        }
        long l1 = ((Cursor)localObject4).getLong(m);
        long l2 = ((Cursor)localObject4).getLong(i1);
        localObject5 = ((Cursor)localObject4).getString(i2);
        localObject6 = ((Cursor)localObject4).getString(n);
        if (localObject5 == null) {
          continue;
        }
        if (((String)localObject5).startsWith("image/"))
        {
          localObject1 = bsq.b;
          localArrayList.add(new bsp((String)localObject6, (bsq)localObject1).a(l1).a(Uri.withAppendedPath(h, Long.toString(l1))).a((String)localObject5).b(l2).a());
          continue;
        }
        if (!((String)localObject5).startsWith("video/")) {
          break;
        }
      }
      finally
      {
        ((Cursor)localObject4).close();
      }
      localObject3 = bsq.a;
    }
    Object localObject3 = String.valueOf(localObject5);
    if (((String)localObject3).length() != 0) {}
    for (localObject3 = "Unrecognized mime type: ".concat((String)localObject3);; localObject3 = new String("Unrecognized mime type: "))
    {
      ezi.d("Babel_GalleryPicker", (String)localObject3, new Object[0]);
      break;
    }
    label355:
    ((Cursor)localObject4).close();
    return localArrayList;
  }
  
  private void l()
  {
    if (j)
    {
      j = false;
      n().getContentResolver().unregisterContentObserver(g);
    }
  }
  
  protected void i()
  {
    if (!i.isEmpty()) {
      a(i);
    }
    if ((z()) || (i.isEmpty())) {
      u();
    }
    if (!j)
    {
      n().getContentResolver().registerContentObserver(h, false, g);
      j = true;
    }
  }
  
  protected void j()
  {
    t();
  }
  
  protected void k()
  {
    super.k();
    j();
    i.clear();
    l();
  }
  
  protected void x()
  {
    super.x();
    l();
  }
}

/* Location:
 * Qualified Name:     bsz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */