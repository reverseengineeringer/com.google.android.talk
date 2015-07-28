.class Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "BlockedListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void
.end method
