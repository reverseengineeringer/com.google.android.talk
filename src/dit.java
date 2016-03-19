import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.apps.hangouts.phone.HelpAndFeedbackActivity;
import java.util.Set;

public final class dit
  extends WebViewClient
{
  public dit(HelpAndFeedbackActivity paramHelpAndFeedbackActivity, View paramView) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    a.setVisibility(8);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    a.setVisibility(0);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Uri localUri = Uri.parse(paramString);
    if (("https".equals(localUri.getScheme())) && (HelpAndFeedbackActivity.n.contains(localUri.getHost()))) {
      paramWebView.loadUrl(paramString);
    }
    for (;;)
    {
      return true;
      paramWebView = new Intent("android.intent.action.VIEW");
      paramWebView.setData(localUri);
      b.startActivity(paramWebView);
    }
  }
}

/* Location:
 * Qualified Name:     dit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */