.class Lcom/google/android/talk/fragments/BuddyListFragment$7;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;->showSortChoicesDialog()V
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
    .line 1411
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$7;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$7;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$7;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    # getter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$900(Lcom/google/android/talk/fragments/BuddyListFragment;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1416
    iget-object v0, p0, Lcom/google/android/talk/fragments/BuddyListFragment$7;->this$0:Lcom/google/android/talk/fragments/BuddyListFragment;

    const/4 v1, 0x0

    # setter for: Lcom/google/android/talk/fragments/BuddyListFragment;->mSortChoiceDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/google/android/talk/fragments/BuddyListFragment;->access$902(Lcom/google/android/talk/fragments/BuddyListFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1418
    :cond_0
    return-void
.end method
