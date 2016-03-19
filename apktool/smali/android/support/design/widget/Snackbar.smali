.class public final Landroid/support/design/widget/Snackbar;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/os/Handler;


# instance fields
.field public final b:Landroid/view/ViewGroup;

.field public final c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

.field public final d:La;

.field private e:Laal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lq;

    invoke-direct {v2}, Lq;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Landroid/support/design/widget/Snackbar;->a:Landroid/os/Handler;

    .line 170
    return-void
.end method

.method public static synthetic a(Landroid/support/design/widget/Snackbar;)La;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->d:La;

    return-object v0
.end method

.method public static synthetic b(Landroid/support/design/widget/Snackbar;)Laal;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->e:Laal;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 418
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:La;

    invoke-virtual {v0, v1}, Lfdr;->e(La;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0xfa

    .line 508
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lks;->b(Landroid/view/View;F)V

    .line 510
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 3447
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmd;->c(F)Lmd;

    move-result-object v0

    sget-object v1, Lj;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lmd;->a(Landroid/view/animation/Interpolator;)Lmd;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lmd;->a(J)Lmd;

    move-result-object v0

    new-instance v1, Lt;

    invoke-direct {v1, p0}, Lt;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    invoke-virtual {v0}, Lmd;->c()V

    .line 551
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Laal;->h:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 532
    sget-object v1, Lj;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 533
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 534
    new-instance v1, Lu;

    invoke-direct {v1, p0}, Lu;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 549
    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Lfdr;->b()Lfdr;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->d:La;

    invoke-virtual {v0, v1}, Lfdr;->a(La;)V

    .line 606
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 607
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 608
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 610
    :cond_0
    return-void
.end method
