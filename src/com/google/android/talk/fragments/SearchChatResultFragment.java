package com.google.android.talk.fragments;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.text.TextUtils.StringSplitter;
import android.text.format.DateUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.talk.ContactInfoQuery;
import com.google.android.talk.ContactInfoQuery.ContactInfoQueryCallback;
import com.google.android.talk.GmailProviderWrapper;
import com.google.android.talk.GmailProviderWrapper.CursorStatus;
import com.google.android.talk.GmailProviderWrapper.MessageCursor;
import com.google.android.talk.IProgressMonitor;
import com.google.android.talk.NetworkProgressMonitor;
import com.google.android.talk.SearchActivity;
import com.google.android.talk.TalkApp;
import com.google.common.collect.Maps;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SearchChatResultFragment
  extends Fragment
  implements ContactInfoQuery.ContactInfoQueryCallback
{
  private static final String[] AUTHOR_COLORS = { "#00681c", "#790619", "#5b1094", "#c88900", "#cc0060", "#008391", "#009486", "#b90038", "#846600", "#330099" };
  private static final int MESSAGE_PREFIX_LENGTH = "m".length();
  private static final Pattern NAME_ADDR_EMAIL_PATTERN = Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");
  private String mAccount;
  private long mAccountId;
  private String mCcHeading;
  private ContactInfoQuery mContactInfoQuery;
  private ContentObserver mContentObserver;
  private Long mConversationId;
  private Map<String, String> mCurrentColorMap = Maps.newHashMap();
  private Matcher mEmailMatcher = Pattern.compile("\\\"(.*)\\\"\\s*<(.*)>").matcher("");
  private final Map<Long, Boolean> mExpandedMessageIds = Maps.newHashMap();
  private String mForwardString;
  private GmailProviderWrapper mGmail;
  private Handler mHandler = new Handler() {};
  private boolean mHasCcAddresses;
  private String mLastFromAddress;
  private String mLastPresenceEmail;
  private String mLastPresencePath = mPresencePath;
  private boolean mLoaded = false;
  private GmailProviderWrapper.MessageCursor mMessageCursor;
  private String mPresencePath = "file:///android_asset/presence_offline.png";
  private IProgressMonitor mProgressMonitor;
  private String mReplyByChatString;
  private String mReplyString;
  private String mToHeading;
  private WebView mWebView;
  private int mWebViewY = 0;
  
  private void addAddresses(StringBuilder paramStringBuilder, String paramString, String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    paramStringBuilder.append(paramString + " ");
    int i = 0;
    while (i < j)
    {
      paramStringBuilder.append(getDisplayAddress(paramArrayOfString[i]));
      if (i < j - 1) {
        paramStringBuilder.append(", ");
      }
      i += 1;
    }
  }
  
  private void addCollapsedHeaders(StringBuilder paramStringBuilder, GmailProviderWrapper.MessageCursor paramMessageCursor, int paramInt1, int paramInt2)
  {
    Object localObject2 = null;
    TextUtils.StringSplitter localStringSplitter = GmailProviderWrapper.newMessageLabelIdsSplitter();
    while (paramInt1 <= paramInt2)
    {
      paramMessageCursor.moveTo(paramInt1);
      long l = paramMessageCursor.getMessageId();
      String str1 = "m" + l;
      Object localObject3 = paramMessageCursor.getRawLabelIds();
      Object localObject1 = localObject2;
      if (!((String)localObject3).equals(localObject2))
      {
        localObject1 = localObject3;
        localStringSplitter.setString((String)localObject3);
      }
      l = paramMessageCursor.getDateReceivedMs();
      localObject2 = DateUtils.getRelativeTimeSpanString(getActivity(), l).toString();
      localObject3 = buildFromDiv(paramMessageCursor, getSenderPersonal(paramMessageCursor), getUnencodedSenderEmail(paramMessageCursor.getFromAddress()), str1);
      String str2 = TextUtils.htmlEncode(getSnippet(paramMessageCursor));
      addCollapsedMessage(paramStringBuilder, str1, localObject3.toString(), "snippetDiv", str2, (String)localObject2, "toggleHeader");
      paramInt1 += 1;
      localObject2 = localObject1;
    }
  }
  
  private void addCollapsedMessage(StringBuilder paramStringBuilder, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    paramStringBuilder.append("<table class=\"tableHeader\" id=\"");
    paramStringBuilder.append(paramString1);
    paramStringBuilder.append("\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>");
    addMessageHeader(paramStringBuilder, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6);
    paramStringBuilder.append("</td><tr><td  class=\"bodyCell\"><div id=\"a:body\"></div></td></tr></table>");
  }
  
  private void addExpandedBody(StringBuilder paramStringBuilder, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramStringBuilder.append("<div class=\"bodyDiv\">");
    paramStringBuilder.append(paramString1);
    paramStringBuilder.append("</div>");
    addFooter(paramStringBuilder, paramString2, paramString3, paramString4, paramString5, paramBoolean2);
  }
  
  private void addExpandedMessage(StringBuilder paramStringBuilder, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramStringBuilder.append("<table id=\"");
    paramStringBuilder.append(paramString1);
    paramStringBuilder.append("\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\"><tr><td>");
    addMessageHeader(paramStringBuilder, paramString1, paramString2, paramString3, paramString4, paramString5, "toggleHeader");
    paramStringBuilder.append("</td><tr><td  class=\"bodyCell\"><div id=\"a:body\">");
    addExpandedBody(paramStringBuilder, paramString6, paramString1, paramString7, paramString8, paramString9, paramBoolean1, paramBoolean2);
    paramStringBuilder.append("</div></td></tr></table>");
  }
  
  private void addFooter(StringBuilder paramStringBuilder, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "<div class=\"messageFooterDiv2\">";; str = "<div class=\"messageFooterDiv1\">")
    {
      paramStringBuilder.append(str);
      if (!mHasCcAddresses)
      {
        paramStringBuilder.append("<table width=\"100%\"><tr><td><button class=\"footerButton\" onClick=\"window.gmail.replyByChat('");
        paramStringBuilder.append(paramString1);
        paramStringBuilder.append("')\"><div class=\"footerTextElementDiv\">");
        paramStringBuilder.append(paramString4);
      }
      paramStringBuilder.append("</div></button><button class=\"footerButton\" onClick=\"window.gmail.reply('");
      paramStringBuilder.append(paramString1);
      paramStringBuilder.append("')\"><div class=\"footerTextElementDiv\">");
      paramStringBuilder.append(paramString2);
      paramStringBuilder.append("</div></button><button class=\"footerButton\" onClick=\"window.gmail.forward('");
      paramStringBuilder.append(paramString1);
      paramStringBuilder.append("')\"><div class=\"footerTextElementDiv\">");
      paramStringBuilder.append(paramString3);
      paramStringBuilder.append("</div></button></td></tr></table></div>");
      return;
    }
  }
  
  private void addMessageHeader(StringBuilder paramStringBuilder, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    paramStringBuilder.append(String.format("<div class=\"headerDiv\"><table border=\"0\" cellpadding=\"0\"><tr>%s</tr></table><table border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><tr><td width='99%%' class=\"%s\"><div id=\"a:line2\">%s</div></td><td style='white-space: nowrap; float:right' valign='top' align=\"right\">%s</td></tr></table></div>", new Object[] { paramString2, paramString3, paramString4, paramString5 }));
  }
  
  private void buildConversationIfLoaded()
  {
    Object localObject1 = getActivity();
    if (localObject1 == null) {
      return;
    }
    GmailProviderWrapper.MessageCursor localMessageCursor = mMessageCursor;
    int i = localMessageCursor.count();
    label64:
    StringBuilder localStringBuilder;
    Object localObject2;
    int k;
    Object localObject3;
    label122:
    label228:
    int j;
    boolean bool1;
    switch (localMessageCursor.getStatus())
    {
    default: 
      localStringBuilder = new StringBuilder(32768);
      localMessageCursor.moveTo(-1);
      localStringBuilder.append("<html><head><link type=\"text/css\" rel=\"stylesheet\" href=\"file:///android_asset/styles.css\"><script type=\"text/javascript\" src=\"file:///android_asset/script.js\"></script></head><body>");
      localObject2 = null;
      int m = i - 1;
      k = 0;
      localObject3 = getGmailAppName();
      if (TextUtils.isEmpty((CharSequence)localObject3))
      {
        mReplyString = "";
        mForwardString = ((Activity)localObject1).getString(2131493034);
        mReplyByChatString = ((Activity)localObject1).getString(2131493035);
        mToHeading = ((Activity)localObject1).getString(2131493036);
        mCcHeading = ((Activity)localObject1).getString(2131493037);
        String str1 = mReplyString;
        String str2 = mReplyByChatString;
        String str3 = mForwardString;
        TextUtils.StringSplitter localStringSplitter = GmailProviderWrapper.newMessageLabelIdsSplitter();
        i = -1;
        if (mWebViewY == 0) {
          mWebViewY = mWebView.getScrollY();
        }
        mWebView.setWebViewClient(new WebViewClient()
        {
          public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            mWebView.scrollTo(0, mWebViewY);
            SearchChatResultFragment.access$1902(SearchChatResultFragment.this, 0);
          }
          
          public void onUnhandledKeyEvent(WebView paramAnonymousWebView, KeyEvent paramAnonymousKeyEvent)
          {
            if (paramAnonymousKeyEvent.getAction() == 0)
            {
              getActivity().onKeyDown(paramAnonymousKeyEvent.getKeyCode(), paramAnonymousKeyEvent);
              return;
            }
            getActivity().onKeyUp(paramAnonymousKeyEvent.getKeyCode(), paramAnonymousKeyEvent);
          }
          
          public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            paramAnonymousWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString));
            paramAnonymousWebView.putExtra("com.android.browser.application_id", getActivity().getPackageName());
            paramAnonymousWebView.setFlags(524288);
            try
            {
              startActivity(paramAnonymousWebView);
              return true;
            }
            catch (ActivityNotFoundException paramAnonymousWebView) {}
            return false;
          }
        });
        if (!localMessageCursor.next()) {
          break label560;
        }
        long l = localMessageCursor.getMessageId();
        String str4 = "m" + l;
        String str5 = localMessageCursor.getBody();
        localObject3 = localMessageCursor.getRawLabelIds();
        localObject1 = localObject2;
        if (!((String)localObject3).equals(localObject2))
        {
          localObject1 = localObject3;
          localStringSplitter.setString((String)localObject3);
        }
        l = localMessageCursor.getDateReceivedMs();
        localObject2 = DateUtils.getRelativeTimeSpanString(getActivity(), l).toString();
        localObject3 = buildFromDiv(localMessageCursor, getSenderPersonal(localMessageCursor), getUnencodedSenderEmail(localMessageCursor.getFromAddress()), str4);
        if (k != m) {
          break label545;
        }
        j = i;
        if (i >= 0)
        {
          maybeGenerateSuperCollapse(localMessageCursor, localStringBuilder, k, i);
          j = -1;
        }
        localObject3 = localObject3.toString();
        String str6 = getAddressesLine(localMessageCursor);
        boolean bool2 = localMessageCursor.getBodyEmbedsExternalResources();
        if (m != k) {
          break label539;
        }
        bool1 = true;
        label407:
        addExpandedMessage(localStringBuilder, str4, (String)localObject3, "addressDiv", str6, (String)localObject2, str5, str1, str3, str2, bool2, bool1);
      }
      break;
    }
    for (;;)
    {
      k += 1;
      i = j;
      localObject2 = localObject1;
      break label228;
      if (mProgressMonitor != null) {
        break;
      }
      mProgressMonitor = new NetworkProgressMonitor(getActivity(), null);
      mProgressMonitor.beginTask(null, 0);
      return;
      if (mProgressMonitor == null) {
        break label64;
      }
      mProgressMonitor.done();
      mProgressMonitor = null;
      break label64;
      showRetryAlert();
      break label64;
      mReplyString = ((Activity)localObject1).getString(2131493033, new Object[] { localObject3 });
      break label122;
      label539:
      bool1 = false;
      break label407;
      label545:
      j = i;
      if (i < 0) {
        j = localMessageCursor.position();
      }
    }
    label560:
    localObject1 = "x-thread://" + mConversationId;
    mWebView.loadDataWithBaseURL((String)localObject1, localStringBuilder.toString(), "text/html", "utf-8", null);
    mLoaded = true;
  }
  
  private CharSequence buildFromDiv(GmailProviderWrapper.MessageCursor paramMessageCursor, String paramString1, String paramString2, String paramString3)
  {
    return String.format("<td><div onClick=\"contactSender('%s', '%s')\" ><img class=\"presenceImg\"id=\"a:presence\" src=\"%s\"/></div></td><td align='left' width='99%%' onClick=\"toggleHeader('%s')\" width=\"50\"><div class=\"fromDiv\"> %s </div></td>", new Object[] { paramString1, paramString2, getPresenceImage(paramString2), paramString3, colorizePersonal(paramString1, paramMessageCursor.position()) });
  }
  
  private String colorizePersonal(String paramString, int paramInt)
  {
    return "<span style='color:" + getColor(paramString, paramInt) + "'>" + paramString + "</span>";
  }
  
  public static String ellipsize(String paramString, int paramInt)
  {
    int i = paramString.length();
    if (i < paramInt) {
      return paramString;
    }
    paramInt = Math.min(paramInt, i);
    int j = paramString.lastIndexOf(".");
    String str2 = "…";
    String str1 = str2;
    if (j >= 0)
    {
      str1 = str2;
      if (i - j < 5) {
        str1 = "…" + paramString.substring(j + 1);
      }
    }
    i = paramInt - str1.length();
    paramInt = i;
    if (i < 0) {
      paramInt = 0;
    }
    return paramString.substring(0, paramInt) + str1;
  }
  
  private static String extractAddrSpec(String paramString)
  {
    Matcher localMatcher = NAME_ADDR_EMAIL_PATTERN.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(2);
    }
    return paramString;
  }
  
  private void finish() {}
  
  private String getAddressesLine(GmailProviderWrapper.MessageCursor paramMessageCursor)
  {
    boolean bool = true;
    String[] arrayOfString1 = paramMessageCursor.getToAddresses();
    String[] arrayOfString2 = paramMessageCursor.getCcAddresses();
    mLastFromAddress = paramMessageCursor.getFromAddress();
    int i;
    if (arrayOfString1.length > 0)
    {
      i = 1;
      if (arrayOfString2.length <= 0) {
        break label115;
      }
    }
    for (;;)
    {
      mHasCcAddresses = bool;
      paramMessageCursor = new StringBuilder("<div class=\"addressDiv\">");
      if (i != 0) {
        addAddresses(paramMessageCursor, mToHeading, arrayOfString1);
      }
      if (mHasCcAddresses)
      {
        if (i != 0) {
          paramMessageCursor.append("<br/>");
        }
        addAddresses(paramMessageCursor, mCcHeading, arrayOfString2);
      }
      paramMessageCursor.append("</div>");
      return paramMessageCursor.toString();
      i = 0;
      break;
      label115:
      bool = false;
    }
  }
  
  private String getColor(String paramString, int paramInt)
  {
    String str = (String)mCurrentColorMap.get(paramString);
    if (str != null) {
      return str;
    }
    str = AUTHOR_COLORS[(paramInt % AUTHOR_COLORS.length)];
    mCurrentColorMap.put(paramString, str);
    return str;
  }
  
  private String getDisplayAddress(String paramString)
  {
    return TextUtils.htmlEncode(getUnencodedDisplayAddress(paramString));
  }
  
  private CharSequence getGmailAppName()
  {
    PackageManager localPackageManager = getActivity().getPackageManager();
    Object localObject = null;
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo("com.google.android.gm", 0);
      localObject = localApplicationInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;) {}
    }
    if (localObject == null) {
      return null;
    }
    return localPackageManager.getApplicationLabel((ApplicationInfo)localObject);
  }
  
  private long getId(String paramString)
  {
    return Long.parseLong(paramString.substring(MESSAGE_PREFIX_LENGTH));
  }
  
  private String getPresenceImage(String paramString)
  {
    if (mLastPresenceEmail != paramString)
    {
      mLastPresenceEmail = paramString;
      mContactInfoQuery.setContactInfo(mAccountId, paramString);
      mContactInfoQuery.startQueryForContactInfo();
    }
    return mPresencePath;
  }
  
  private String getSenderPersonal(GmailProviderWrapper.MessageCursor paramMessageCursor)
  {
    return getDisplayAddress(paramMessageCursor.getFromAddress()).toString();
  }
  
  private String getSnippet(GmailProviderWrapper.MessageCursor paramMessageCursor)
  {
    return ellipsize(paramMessageCursor.getSnippet(), 35);
  }
  
  private String getUnencodedDisplayAddress(String paramString)
  {
    Matcher localMatcher = mEmailMatcher.reset(paramString);
    if (!localMatcher.matches()) {
      return paramString;
    }
    paramString = localMatcher.group(1);
    if (paramString.length() > 0) {
      return paramString;
    }
    return localMatcher.group(2);
  }
  
  private String getUnencodedSenderEmail(String paramString)
  {
    Object localObject = mEmailMatcher.reset(paramString);
    if (!((Matcher)localObject).matches()) {}
    do
    {
      return paramString;
      localObject = ((Matcher)localObject).group(2);
    } while (((String)localObject).length() <= 0);
    return (String)localObject;
  }
  
  private void launchReplyByChat(String paramString)
  {
    paramString = extractAddrSpec(mLastFromAddress);
    startActivity(new Intent("android.intent.action.SENDTO", Uri.parse("imto://gtalk/" + paramString)));
  }
  
  private void launchReplyOrForward(boolean paramBoolean, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SENDTO", Uri.parse("mailto:"));
    if (paramBoolean) {}
    for (int i = 2;; i = 1)
    {
      localIntent.putExtra("action", i);
      localIntent.putExtra("in-reference-to", getId(paramString));
      localIntent.putExtra("account", mAccount);
      if (!paramBoolean) {
        localIntent.putExtra("to", mLastFromAddress);
      }
      localIntent.setFlags(524288);
      startActivity(localIntent);
      return;
    }
  }
  
  private void maybeGenerateSuperCollapse(GmailProviderWrapper.MessageCursor paramMessageCursor, StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    int i = paramMessageCursor.position() - 1;
    if (i - paramInt2 + 1 >= 1)
    {
      paramMessageCursor = "_collapsed" + paramInt2;
      paramStringBuilder.append("<div id=\"");
      paramStringBuilder.append(paramMessageCursor);
      paramStringBuilder.append("\"><a onClick=\"uncollapse('");
      paramStringBuilder.append(paramMessageCursor);
      paramStringBuilder.append("', ");
      paramStringBuilder.append(paramInt2);
      paramStringBuilder.append(", ");
      paramStringBuilder.append(i);
      paramStringBuilder.append(")\"><div class=\"superCollapsedDiv size");
      paramInt1 -= paramInt2;
      if (paramInt1 != 1) {
        break label180;
      }
      paramMessageCursor = "1";
    }
    for (;;)
    {
      paramStringBuilder.append(paramMessageCursor);
      paramStringBuilder.append("\"><div class=\"superCollapsedLabel\">");
      paramStringBuilder.append(String.format(getActivity().getResources().getQuantityText(2131558400, paramInt1).toString(), new Object[] { Integer.valueOf(paramInt1) }));
      paramStringBuilder.append("</div></div></a></div>");
      return;
      label180:
      if (paramInt1 == 2) {
        paramMessageCursor = "2";
      } else {
        paramMessageCursor = "n";
      }
    }
  }
  
  public static void restrictWebView(WebView paramWebView)
  {
    paramWebView = paramWebView.getSettings();
    paramWebView.setSavePassword(false);
    paramWebView.setSaveFormData(false);
    paramWebView.setJavaScriptEnabled(false);
    paramWebView.setSupportZoom(false);
    paramWebView.setBlockNetworkImage(true);
  }
  
  private void showRetryAlert()
  {
    DialogInterface.OnClickListener local2 = new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        mMessageCursor.retry();
      }
    };
    DialogInterface.OnCancelListener local3 = new DialogInterface.OnCancelListener()
    {
      public void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        SearchChatResultFragment.this.finish();
      }
    };
    new AlertDialog.Builder(getActivity()).setMessage(2131493026).setPositiveButton(2131493027, local2).setOnCancelListener(local3).show();
  }
  
  public void clear()
  {
    mWebView.setVisibility(4);
    mWebView.clearView();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    SearchActivity localSearchActivity = (SearchActivity)getActivity();
    Object localObject = localSearchActivity.getResources().getString(2131493032);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < ((String)localObject).length())
    {
      char c = ((String)localObject).charAt(i);
      if (c <= '~') {
        localStringBuilder.append(c);
      }
      for (;;)
      {
        i += 1;
        break;
        localStringBuilder.append("&#" + c + ";");
      }
    }
    mWebView.setVisibility(0);
    restrictWebView(mWebView);
    registerForContextMenu(mWebView);
    mWebView.setScrollBarStyle(0);
    localObject = localSearchActivity.getIntent().getExtras();
    mAccount = ((Bundle)localObject).getString("account");
    mAccountId = ((Bundle)localObject).getLong("accountId", 0L);
    mConversationId = Long.valueOf(((Bundle)localObject).getLong("thread-id"));
    if (TextUtils.isEmpty(mAccount)) {
      mAccount = localSearchActivity.getUsername();
    }
    if (mConversationId.longValue() == 0L) {
      mConversationId = Long.valueOf(localSearchActivity.getConversationId());
    }
    mGmail = TalkApp.getApplication(localSearchActivity).getGmailProvider();
    try
    {
      mMessageCursor = mGmail.getMessageCursorForConversationId(mAccount, mConversationId.longValue());
      localSearchActivity.startManagingCursor(mMessageCursor.getCursor());
      mWebView.loadData("<h3><p align=\"center\">" + localStringBuilder + "</p></h3>", "text/html", null);
      mContentObserver = new ConversationContentObserver();
      mMessageCursor.registerContentObserver(mContentObserver);
      mWebView.getSettings().setJavaScriptEnabled(true);
      mWebView.addJavascriptInterface(new GmailJsInterface(), "gmail");
      if (paramBundle != null) {
        mWebViewY = paramBundle.getInt("webview-y");
      }
      mContactInfoQuery = new ContactInfoQuery(localSearchActivity, mAccountId, mAccount, mContentObserver, false);
      mContactInfoQuery.setContactInfoCallback(this);
      return;
    }
    catch (IllegalArgumentException paramBundle) {}
  }
  
  public void onContactInfoLoaded()
  {
    switch (mContactInfoQuery.getPresenceStatus())
    {
    default: 
      mPresencePath = "file:///android_asset/presence_offline.png";
    }
    for (;;)
    {
      if (mLastPresencePath != mPresencePath)
      {
        mLastPresencePath = mPresencePath;
        buildConversationIfLoaded();
      }
      return;
      mPresencePath = "file:///android_asset/presence_online.png";
      continue;
      mPresencePath = "file:///android_asset/presence_away.png";
      continue;
      mPresencePath = "file:///android_asset/presence_away.png";
      continue;
      mPresencePath = "file:///android_asset/presence_busy.png";
      continue;
      mPresencePath = "file:///android_asset/presence_invisible.png";
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    getActivity();
    mWebView = ((WebView)paramLayoutInflater.inflate(2130968627, null));
    return mWebView;
  }
  
  public void onPause()
  {
    super.onPause();
    if (mMessageCursor != null) {
      mMessageCursor.getCursor().deactivate();
    }
    Log.d("talk", this + " onPause() finished");
  }
  
  public void onResume()
  {
    super.onResume();
    if (mMessageCursor != null)
    {
      if ((mMessageCursor.count() == 0) && (mMessageCursor.getStatus() != GmailProviderWrapper.CursorStatus.LOADING)) {
        finish();
      }
    }
    else {
      return;
    }
    if (!mMessageCursor.getCursor().requery())
    {
      finish();
      return;
    }
    buildConversationIfLoaded();
  }
  
  public void onStop()
  {
    super.onStop();
    if (mContactInfoQuery != null) {
      mContactInfoQuery.cleanupContactInfoCursor();
    }
  }
  
  final class ConversationContentObserver
    extends ContentObserver
  {
    public ConversationContentObserver()
    {
      super();
    }
    
    public boolean deliverSelfNotifications()
    {
      return false;
    }
    
    public void onChange(boolean paramBoolean)
    {
      if (!paramBoolean)
      {
        if (mMessageCursor.getCursor().requery())
        {
          if (!mLoaded) {
            SearchChatResultFragment.this.buildConversationIfLoaded();
          }
          mContactInfoQuery.requeryForContactInfo();
        }
      }
      else {
        return;
      }
      SearchChatResultFragment.this.finish();
    }
  }
  
  final class GmailJsInterface
  {
    private String mLastAddressLine;
    private String mLastMessageId;
    
    GmailJsInterface() {}
    
    @JavascriptInterface
    public void forward(String paramString)
    {
      SearchChatResultFragment.this.launchReplyOrForward(true, paramString);
    }
    
    public String getAddress(String paramString)
    {
      if (paramString.equals(mLastMessageId)) {
        return mLastAddressLine;
      }
      long l = SearchChatResultFragment.this.getId(paramString);
      paramString = mGmail.getMessageCursorForMessageId(mAccount, l);
      paramString.moveTo(0);
      String str = SearchChatResultFragment.this.getAddressesLine(paramString);
      paramString.getCursor().close();
      return str;
    }
    
    public String getCollapsedSnippet(String arg1)
    {
      long l = SearchChatResultFragment.this.getId(???);
      synchronized (mExpandedMessageIds)
      {
        mExpandedMessageIds.put(Long.valueOf(l), Boolean.valueOf(false));
        ??? = mGmail.getMessageCursorForMessageId(mAccount, l);
        ???.moveTo(0);
        String str = SearchChatResultFragment.this.getSnippet(???);
        ???.getCursor().close();
        return "<div class=\"snippetDiv\">" + TextUtils.htmlEncode(str) + "</div>";
      }
    }
    
    public String getMessageBody(String paramString)
    {
      boolean bool = true;
      mLastMessageId = paramString;
      long l = SearchChatResultFragment.this.getId(paramString);
      for (;;)
      {
        synchronized (mExpandedMessageIds)
        {
          mExpandedMessageIds.put(Long.valueOf(l), Boolean.valueOf(true));
          ??? = mGmail.getMessageCursorForMessageId(mAccount, l);
          ((GmailProviderWrapper.MessageCursor)???).moveTo(0);
          mMessageCursor.moveTo(mMessageCursor.count() - 1);
          if (mMessageCursor.getMessageId() == ((GmailProviderWrapper.MessageCursor)???).getMessageId())
          {
            StringBuilder localStringBuilder = new StringBuilder(16384);
            SearchChatResultFragment.this.addExpandedBody(localStringBuilder, ((GmailProviderWrapper.MessageCursor)???).getBody(), paramString, mReplyString, mForwardString, mReplyByChatString, ((GmailProviderWrapper.MessageCursor)???).getBodyEmbedsExternalResources(), bool);
            mLastAddressLine = SearchChatResultFragment.this.getAddressesLine((GmailProviderWrapper.MessageCursor)???);
            ((GmailProviderWrapper.MessageCursor)???).getCursor().close();
            return localStringBuilder.toString();
          }
        }
        bool = false;
      }
    }
    
    public String getMessageHeaders(int paramInt1, int paramInt2)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      SearchChatResultFragment.this.addCollapsedHeaders(localStringBuilder, mMessageCursor, paramInt1, paramInt2);
      return localStringBuilder.toString();
    }
    
    @JavascriptInterface
    public void reply(String paramString)
    {
      SearchChatResultFragment.this.launchReplyOrForward(false, paramString);
    }
    
    @JavascriptInterface
    public void replyByChat(String paramString)
    {
      SearchChatResultFragment.this.launchReplyByChat(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SearchChatResultFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */