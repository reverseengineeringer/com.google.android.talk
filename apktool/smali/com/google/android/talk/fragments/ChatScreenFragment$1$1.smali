.class Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment$1;->invalidateImSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment$1;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 876
    move-object v0, p1

    check-cast v0, Lcom/google/android/talk/ChatView;

    .line 877
    .local v0, "cv":Lcom/google/android/talk/ChatView;
    if-eqz v0, :cond_0

    .line 878
    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView;->initSession(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    const-string v1, "talk"

    const-string v2, "invalidateImSessions failed. Finish!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$1$1;->this$1:Lcom/google/android/talk/fragments/ChatScreenFragment$1;

    iget-object v1, v1, Lcom/google/android/talk/fragments/ChatScreenFragment$1;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # getter for: Lcom/google/android/talk/fragments/ChatScreenFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$200(Lcom/google/android/talk/fragments/ChatScreenFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/ActivityUtils;->showLandingPage(Landroid/app/Activity;)V

    .line 881
    const/4 v1, 0x0

    .line 884
    :cond_0
    return v1
.end method
