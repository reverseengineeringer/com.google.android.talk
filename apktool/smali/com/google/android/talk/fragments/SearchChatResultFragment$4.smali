.class Lcom/google/android/talk/fragments/SearchChatResultFragment$4;
.super Landroid/webkit/WebViewClient;
.source "SearchChatResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;->buildConversationIfLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$2000(Lcom/google/android/talk/fragments/SearchChatResultFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # getter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I
    invoke-static {v1}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1900(Lcom/google/android/talk/fragments/SearchChatResultFragment;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    .line 760
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # setter for: Lcom/google/android/talk/fragments/SearchChatResultFragment;->mWebViewY:I
    invoke-static {v0, v2}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1902(Lcom/google/android/talk/fragments/SearchChatResultFragment;I)I

    .line 761
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 783
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 788
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 766
    .local v1, "result":Z
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 767
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-virtual {v3}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 768
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 770
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$4;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-virtual {v2, v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    const/4 v1, 0x1

    .line 777
    :goto_0
    return v1

    .line 772
    :catch_0
    move-exception v2

    goto :goto_0
.end method
