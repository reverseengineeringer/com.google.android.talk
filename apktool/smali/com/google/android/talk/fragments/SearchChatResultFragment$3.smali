.class Lcom/google/android/talk/fragments/SearchChatResultFragment$3;
.super Ljava/lang/Object;
.source "SearchChatResultFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SearchChatResultFragment;->showRetryAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/talk/fragments/SearchChatResultFragment$3;->this$0:Lcom/google/android/talk/fragments/SearchChatResultFragment;

    # invokes: Lcom/google/android/talk/fragments/SearchChatResultFragment;->finish()V
    invoke-static {v0}, Lcom/google/android/talk/fragments/SearchChatResultFragment;->access$1700(Lcom/google/android/talk/fragments/SearchChatResultFragment;)V

    .line 674
    return-void
.end method
