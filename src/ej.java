import android.content.ClipData;
import android.content.ClipData.Item;
import android.content.ClipDescription;
import android.content.Intent;
import android.os.Bundle;

final class ej
  implements eg
{
  public Bundle a(Intent paramIntent)
  {
    paramIntent = paramIntent.getClipData();
    if (paramIntent != null)
    {
      ClipDescription localClipDescription = paramIntent.getDescription();
      if ((localClipDescription.hasMimeType("text/vnd.android.intent")) && (localClipDescription.getLabel().equals("android.remoteinput.results"))) {
        return (Bundle)paramIntent.getItemAt(0).getIntent().getExtras().getParcelable("android.remoteinput.resultsData");
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */