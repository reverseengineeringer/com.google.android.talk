.class public final Lv;
.super Lmo;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lv;->b:Landroid/support/design/widget/Snackbar;

    iput p2, p0, Lv;->a:I

    invoke-direct {p0}, Lmo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lv;->b:Landroid/support/design/widget/Snackbar;

    .line 1067
    iget-object v0, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 562
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->b()V

    .line 563
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lv;->b:Landroid/support/design/widget/Snackbar;

    .line 2067
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    .line 568
    return-void
.end method
