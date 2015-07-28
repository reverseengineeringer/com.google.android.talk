.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field private mBareJid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 491
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/videochat/VideoChatActivity$1;

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;-><init>()V

    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 538
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 457
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 459
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 463
    return-void
.end method

.method public getActivity()Lcom/google/android/talk/videochat/VideoChatActivity;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    return-object v0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    return-object v0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 536
    return-void
.end method

.method public declared-synchronized newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "fullJid"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "notify"    # Z

    .prologue
    .line 521
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {v1, v2, p1, p2}, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    :cond_0
    monitor-exit p0

    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized newMessageSent(Ljava/lang/String;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 528
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 530
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    # getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mRecentChatMessageQueue:Ljava/util/Queue;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1700(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 531
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :cond_0
    monitor-exit p0

    return-void

    .line 531
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 528
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupChatRoom"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 540
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupChatRoom"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 542
    return-void
.end method

.method public removeAssociation(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    if-ne v0, p1, :cond_0

    .line 486
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 487
    iput-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 489
    :cond_0
    return-void
.end method

.method public setActivity(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/android/talk/videochat/VideoChatActivity;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 470
    return-void
.end method

.method public setJid(Ljava/lang/String;)V
    .locals 0
    .param p1, "jid"    # Ljava/lang/String;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;->mBareJid:Ljava/lang/String;

    .line 478
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 461
    return-void
.end method
