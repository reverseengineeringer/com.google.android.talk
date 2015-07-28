.class Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;)V
    .locals 0

    .prologue
    .line 533
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener$2;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$ConnectionStateListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->setIsOnline(Z)V
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$600(Lcom/google/android/talk/fragments/BuddyListFragment;Z)V

    goto :goto_0
.end method
