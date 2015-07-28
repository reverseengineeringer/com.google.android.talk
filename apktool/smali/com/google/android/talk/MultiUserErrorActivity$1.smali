.class Lcom/google/android/talk/MultiUserErrorActivity$1;
.super Ljava/lang/Object;
.source "MultiUserErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/MultiUserErrorActivity;->showMultiUserErrorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/MultiUserErrorActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/MultiUserErrorActivity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/talk/MultiUserErrorActivity$1;->this$0:Lcom/google/android/talk/MultiUserErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/talk/MultiUserErrorActivity$1;->this$0:Lcom/google/android/talk/MultiUserErrorActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/MultiUserErrorActivity;->finish()V

    .line 38
    return-void
.end method
