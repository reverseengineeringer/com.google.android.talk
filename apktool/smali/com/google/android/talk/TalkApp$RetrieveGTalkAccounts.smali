.class Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;
.super Landroid/os/AsyncTask;
.source "TalkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/TalkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetrieveGTalkAccounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mCompleted:Z

.field private mDeviceAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/google/android/talk/TalkApp;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/TalkApp;[Landroid/accounts/Account;)V
    .locals 2
    .param p2, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 829
    iput-object p2, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrieveGTalkAccounts account count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 831
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 823
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 7
    .param p1, "contentResolvers"    # [Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/google/android/talk/DatabaseUtils;->getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v0

    .line 836
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    # getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RetrieveGTalkAccounts.onPostExecute size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDeviceAccounts.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 843
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 846
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 847
    .local v3, "gtalkAccounts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    const/4 v2, 0x0

    .line 848
    .local v2, "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v1, 0x0

    .line 849
    .local v1, "found":Z
    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 850
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    check-cast v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 851
    .restart local v2    # "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gtalkAccount name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 852
    iget-object v5, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v6, v6, v4

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 853
    const/4 v1, 0x1

    .line 857
    :cond_1
    if-nez v1, :cond_2

    .line 858
    new-instance v2, Lcom/google/android/talk/TalkApp$AccountInfo;

    .end local v2    # "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    invoke-direct {v2}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 859
    .restart local v2    # "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mDeviceAccounts:[Landroid/accounts/Account;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 861
    :cond_2
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    # getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 866
    .end local v1    # "found":Z
    .end local v2    # "gtalkAccount":Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v3    # "gtalkAccounts":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    :cond_3
    iget-object v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    # invokes: Lcom/google/android/talk/TalkApp;->verifyAccountInPrefs()V
    invoke-static {v5}, Lcom/google/android/talk/TalkApp;->access$500(Lcom/google/android/talk/TalkApp;)V

    .line 868
    monitor-enter p0

    .line 869
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mCompleted:Z

    .line 870
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 871
    monitor-exit p0

    .line 873
    return-object v0

    .line 871
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 823
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    const/4 v1, 0x1

    # setter for: Lcom/google/android/talk/TalkApp;->mAccountsLoaded:Z
    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->access$602(Lcom/google/android/talk/TalkApp;Z)Z

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RetrieveGTalkAccountsonPostExecute mAccountList count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    # getter for: Lcom/google/android/talk/TalkApp;->mAccountList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->access$400(Lcom/google/android/talk/TalkApp;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/google/android/talk/TalkApp;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$000(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->this$0:Lcom/google/android/talk/TalkApp;

    # invokes: Lcom/google/android/talk/TalkApp;->broadcastAccountListChanged()V
    invoke-static {v0}, Lcom/google/android/talk/TalkApp;->access$700(Lcom/google/android/talk/TalkApp;)V

    .line 882
    return-void
.end method

.method public waitForAccounts()V
    .locals 1

    .prologue
    .line 891
    :goto_0
    monitor-enter p0

    .line 892
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/TalkApp$RetrieveGTalkAccounts;->mCompleted:Z

    if-eqz v0, :cond_0

    .line 893
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 896
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 897
    :catch_0
    move-exception v0

    goto :goto_1
.end method
