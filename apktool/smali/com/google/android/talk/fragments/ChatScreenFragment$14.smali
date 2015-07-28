.class Lcom/google/android/talk/fragments/ChatScreenFragment$14;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;)V
    .locals 0

    .prologue
    .line 1678
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$14;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1681
    move-object v1, p1

    check-cast v1, Lcom/google/android/talk/ChatView;

    .line 1682
    .local v1, "cv":Lcom/google/android/talk/ChatView;
    invoke-virtual {v1}, Lcom/google/android/talk/ChatView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1683
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1684
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1686
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
