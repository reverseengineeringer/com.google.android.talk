import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;

public final class brq
  extends AsyncTask<Intent, Integer, blb>
{
  private final Context a;
  private final int b;
  
  public brq(Context paramContext)
  {
    a = paramContext;
    b = ((hpu)ilh.a(paramContext, hpu.class)).a();
  }
  
  private blb a(Intent... paramVarArgs)
  {
    paramVarArgs = (blb)paramVarArgs[0].getParcelableExtra("result_media_attachment");
    if (paramVarArgs == null)
    {
      ezi.d("Babel", "Attachment is null, stop sending the attachment.", new Object[0]);
      cancel(true);
    }
    try
    {
      blb localblb = bmo.a(a, b, c, Uri.parse(a), a, d);
      return localblb;
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      ezi.d("Babel_SendMediaAttTask", "File too big to attach.", localOutOfMemoryError);
    }
    return paramVarArgs;
  }
}

/* Location:
 * Qualified Name:     brq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */