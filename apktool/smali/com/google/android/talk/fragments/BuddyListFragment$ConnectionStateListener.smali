.class Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStateListener"
.end annotation


# instance fields
.field mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 499
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 501
    return-void
.end method


# virtual methods
.method public clearRefs()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 505
    return-void
.end method

.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 5
    .param p1, "state"    # Lcom/google/android/gtalkservice/ConnectionState;
    .param p2, "error"    # Lcom/google/android/gtalkservice/ConnectionError;
    .param p3, "accountId"    # J
    .param p5, "username"    # Ljava/lang/String;

    .prologue
    .line 511
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 512
    .local v0, "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 548
    :goto_0
    return-void

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v1

    .line 518
    .local v1, "connState":I
    packed-switch v1, :pswitch_data_0

    .line 533
    iget-object v3, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    .end local v0    # "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    .end local v1    # "connState":I
    :catch_0
    move-exception v2

    .line 545
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string v3, "talk"

    const-string v4, "BuddyListFragment.connectionStateChanged error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    throw v2

    .line 521
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    .restart local v1    # "connState":I
    :pswitch_0
    :try_start_1
    iget-object v3, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;

    invoke-direct {v4, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 518
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
