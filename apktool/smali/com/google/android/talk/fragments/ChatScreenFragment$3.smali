.class Lcom/google/android/talk/fragments/ChatScreenFragment$3;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->setupInputFieldAndSendButton(Landroid/view/View;)V
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
    .line 1154
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1159
    .local v0, "id":I
    const v1, 0x7f10004e

    if-ne v0, v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$3;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    # invokes: Lcom/google/android/talk/fragments/ChatScreenFragment;->sendMessage()V
    invoke-static {v1}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$2500(Lcom/google/android/talk/fragments/ChatScreenFragment;)V

    .line 1162
    :cond_0
    return-void
.end method
