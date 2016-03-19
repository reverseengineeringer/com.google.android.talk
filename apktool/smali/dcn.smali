.class public final Ldcn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method public constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 3497
    iput-object p1, p0, Ldcn;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Ldcn;->a:Landroid/support/design/widget/Snackbar;

    .line 2067
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    .line 1501
    iget-object v0, p0, Ldcn;->a:Landroid/support/design/widget/Snackbar;

    .line 3067
    iget-object v0, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 1501
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Ldcn;)V

    .line 1502
    return-void
.end method
