.class Lcom/google/android/talk/ChatView$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field private volatile mActivity:Landroid/app/Activity;

.field private volatile mChatView:Lcom/google/android/talk/ChatView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 1
    .param p1, "chatView"    # Lcom/google/android/talk/ChatView;

    .prologue
    .line 2416
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 2417
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2418
    # getter for: Lcom/google/android/talk/ChatView;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/google/android/talk/ChatView;->access$2400(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2419
    return-void
.end method

.method static synthetic access$6500(Lcom/google/android/talk/ChatView$ConnectionStateListener;)Lcom/google/android/talk/ChatView;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/ChatView$ConnectionStateListener;

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    return-object v0
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2423
    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2424
    iput-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2425
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 5
    .param p1, "state"    # Lcom/google/android/gtalkservice/ConnectionState;
    .param p2, "error"    # Lcom/google/android/gtalkservice/ConnectionError;
    .param p3, "accountId"    # J
    .param p5, "username"    # Ljava/lang/String;

    .prologue
    .line 2433
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mChatView:Lcom/google/android/talk/ChatView;

    .line 2434
    .local v1, "cv":Lcom/google/android/talk/ChatView;
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 2435
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2473
    :cond_0
    :goto_0
    return-void

    .line 2439
    :cond_1
    new-instance v3, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/google/android/talk/ChatView$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/ChatView$ConnectionStateListener;Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;Lcom/google/android/talk/ChatView;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2469
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "cv":Lcom/google/android/talk/ChatView;
    :catch_0
    move-exception v2

    .line 2470
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "talk"

    const-string v4, "ChatView.connectionStateChanged error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2471
    throw v2
.end method
