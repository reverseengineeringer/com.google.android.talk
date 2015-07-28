.class Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChatListener"
.end annotation


# instance fields
.field private mForceLoadRunnable:Ljava/lang/Runnable;

.field private mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/google/android/talk/fragments/BuddyListFragment;

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 286
    new-instance v0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener$1;-><init>(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)V

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    .line 297
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 298
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;)Lcom/google/android/talk/fragments/BuddyListFragment;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    return-object v0
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 332
    .local v0, "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.chatClosed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 337
    iget-object v1, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 321
    .local v0, "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 325
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.ChatRead from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 326
    iget-object v1, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public clearRefs()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 302
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "oldFrom"    # Ljava/lang/String;
    .param p2, "room"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 354
    return-void
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "messageBody"    # Ljava/lang/String;
    .param p3, "notify"    # Z

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    .line 307
    .local v0, "b":Lcom/google/android/talk/fragments/BuddyListFragment;
    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.newMessageReceived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$500(Lcom/google/android/talk/fragments/BuddyListFragment;Ljava/lang/String;)V

    .line 313
    if-eqz p2, :cond_0

    .line 314
    iget-object v1, v0, Lcom/google/android/talk/fragments/RosterListFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ChatListener;->mForceLoadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageBody"    # Ljava/lang/String;

    .prologue
    .line 346
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 356
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 358
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "oldFrom"    # Ljava/lang/String;
    .param p2, "room"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 352
    return-void
.end method
