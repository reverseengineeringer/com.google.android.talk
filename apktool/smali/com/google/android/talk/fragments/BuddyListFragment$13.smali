.class Lcom/google/android/talk/fragments/BuddyListFragment$13;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
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
    .line 2029
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2032
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2033
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2034
    iget-object v1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mCurrentSearchString:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$1100(Lcom/google/android/talk/fragments/BuddyListFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$13;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/BuddyListFragment;->getAccountInfo()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->launchSearchActivity(Ljava/lang/String;Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    .line 2036
    :cond_0
    return-void
.end method
