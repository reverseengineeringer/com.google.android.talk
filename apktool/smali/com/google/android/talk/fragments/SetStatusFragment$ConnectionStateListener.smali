.class Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "SetStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/talk/fragments/SetStatusFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 252
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 253
    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 254
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 258
    iput-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 259
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 5
    .param p1, "state"    # Lcom/google/android/gtalkservice/ConnectionState;
    .param p2, "error"    # Lcom/google/android/gtalkservice/ConnectionError;
    .param p3, "accountId"    # J
    .param p5, "username"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/SetStatusFragment;

    .line 266
    .local v2, "s":Lcom/google/android/talk/fragments/SetStatusFragment;
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;->mActivity:Landroid/app/Activity;

    .line 268
    .local v0, "a":Landroid/app/Activity;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 288
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 299
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    .end local v0    # "a":Landroid/app/Activity;
    .end local v2    # "s":Lcom/google/android/talk/fragments/SetStatusFragment;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v3, "talk"

    const-string v4, "SetStatusFragment.connectionStateChanged error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    throw v1

    .line 276
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v2    # "s":Lcom/google/android/talk/fragments/SetStatusFragment;
    :pswitch_0
    :try_start_3
    new-instance v3, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$ConnectionStateListener;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
