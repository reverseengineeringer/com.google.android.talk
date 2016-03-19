.class public final Lw;
.super Ly;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly",
        "<",
        "Landroid/support/design/widget/Snackbar$SnackbarLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/Snackbar;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lw;->a:Landroid/support/design/widget/Snackbar;

    invoke-direct {p0}, Ly;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 814
    instance-of v0, p1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public synthetic a(Lk;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 811
    check-cast p2, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 1822
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Lk;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1834
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Ly;->a(Lk;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 811
    return v0

    .line 1825
    :pswitch_1
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Lw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)La;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdr;->c(La;)V

    goto :goto_0

    .line 1829
    :pswitch_2
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Lw;->a:Landroid/support/design/widget/Snackbar;

    invoke-static {v1}, Landroid/support/design/widget/Snackbar;->a(Landroid/support/design/widget/Snackbar;)La;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfdr;->d(La;)V

    goto :goto_0

    .line 1823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
