.class Lcom/google/android/talk/fragments/BuddyListFragment$11;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->closeAllChats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment;)V
    .locals 0

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1770
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/BuddyListFragment;->mController:Lcom/google/android/talk/fragments/BuddyListFragment$Controller;

    invoke-interface {v1}, Lcom/google/android/talk/fragments/BuddyListFragment$Controller;->onCloseAllChats()V

    .line 1773
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    if-eqz v1, :cond_0

    .line 1774
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$11;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    iget-object v1, v1, Lcom/google/android/talk/fragments/RosterListFragment;->mImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-interface {v1}, Lcom/google/android/gtalkservice/IImSession;->closeAllChatSessions()V

    .line 1785
    :goto_0
    return-void

    .line 1780
    :cond_0
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats: mImSession is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "talk"

    const-string v2, "[BuddyList] closeAllChats: caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
