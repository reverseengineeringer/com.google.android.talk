.class Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->selfPresenceChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener$3;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;

    iget-object v0, v0, Lcom/google/android/talk/fragments/BuddyListFragment$RosterListener;->mFragment:Lcom/google/android/talk/fragments/BuddyListFragment;

    # invokes: Lcom/google/android/talk/fragments/BuddyListFragment;->loadSelfStatus()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$300(Lcom/google/android/talk/fragments/BuddyListFragment;)V

    goto :goto_0
.end method
