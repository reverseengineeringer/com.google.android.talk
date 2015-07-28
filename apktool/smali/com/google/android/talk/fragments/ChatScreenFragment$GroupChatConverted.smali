.class Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupChatConverted"
.end annotation


# instance fields
.field mAccountId:J

.field mActivity:Landroid/app/Activity;

.field mChatSession:Lcom/google/android/gtalkservice/IChatSession;

.field mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Landroid/app/Activity;Lcom/google/android/gtalkservice/IChatSession;J)V
    .locals 0
    .param p1, "fragment"    # Lcom/google/android/talk/fragments/ChatScreenFragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "session"    # Lcom/google/android/gtalkservice/IChatSession;
    .param p4, "accountId"    # J

    .prologue
    .line 1846
    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 1847
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1848
    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1849
    iput-object p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1850
    iput-wide p4, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    .line 1851
    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 0

    .prologue
    .line 1932
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 1922
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 1924
    return-void
.end method

.method public clearRefs()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1854
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1855
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1856
    iput-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    .line 1857
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 1871
    iget-object v9, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1872
    .local v9, "c":Lcom/google/android/talk/fragments/ChatScreenFragment;
    iget-object v8, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    .line 1873
    .local v8, "a":Landroid/app/Activity;
    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z
    invoke-static {v9}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3100(Lcom/google/android/talk/fragments/ChatScreenFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertedToGroupChat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->log(Ljava/lang/String;)V
    invoke-static {v9, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$1200(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    .line 1883
    iget-object v6, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    .line 1884
    .local v6, "fragment":Lcom/google/android/talk/fragments/ChatScreenFragment;
    iget-wide v3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mAccountId:J

    .line 1885
    .local v3, "accountId":J
    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 1886
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mFragment:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2300(Lcom/google/android/talk/fragments/ChatScreenFragment;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    .line 1887
    .local v2, "service":Lcom/google/android/gtalkservice/IGTalkService;
    new-instance v0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;

    move-object v1, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted$1;-><init>(Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;Lcom/google/android/gtalkservice/IGTalkService;JLjava/lang/String;Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1906
    .end local v2    # "service":Lcom/google/android/gtalkservice/IGTalkService;
    :cond_2
    const/4 v0, 0x0

    # setter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mInvitePending:Z
    invoke-static {v9, v0}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3102(Lcom/google/android/talk/fragments/ChatScreenFragment;Z)Z

    .line 1908
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->mChatSession:Lcom/google/android/gtalkservice/IChatSession;

    invoke-interface {v0, p0}, Lcom/google/android/gtalkservice/IChatSession;->removeRemoteChatListener(Lcom/google/android/gtalkservice/IChatListener;)V

    .line 1909
    invoke-virtual {p0}, Lcom/google/android/talk/fragments/ChatScreenFragment$GroupChatConverted;->clearRefs()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1910
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public missedCall()V
    .locals 0

    .prologue
    .line 1930
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "notify"    # Z

    .prologue
    .line 1926
    return-void
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 1928
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1934
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "room"    # Ljava/lang/String;
    .param p2, "nickname"    # Ljava/lang/String;

    .prologue
    .line 1936
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 1918
    const/4 v0, 0x0

    return v0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "oldJid"    # Ljava/lang/String;
    .param p2, "groupChatRoom"    # Ljava/lang/String;
    .param p3, "groupId"    # J

    .prologue
    .line 1864
    return-void
.end method
