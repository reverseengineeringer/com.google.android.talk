.class public final Lq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0xfa

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 167
    :goto_0
    return v0

    .line 161
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/Snackbar;

    .line 3434
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3435
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3437
    instance-of v3, v1, Lm;

    if-eqz v3, :cond_0

    .line 3440
    new-instance v3, Lw;

    invoke-direct {v3, v0}, Lw;-><init>(Landroid/support/design/widget/Snackbar;)V

    .line 3441
    invoke-virtual {v3}, Lw;->b()V

    .line 3442
    invoke-virtual {v3}, Lw;->c()V

    .line 3443
    invoke-virtual {v3}, Lw;->a()V

    .line 3444
    new-instance v4, Lfhz;

    invoke-direct {v4, v0}, Lfhz;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v3, v4}, Lw;->a(Lfhz;)V

    .line 3465
    check-cast v1, Lm;

    invoke-virtual {v1, v3}, Lm;->a(Laen;)V

    .line 3468
    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->b:Landroid/view/ViewGroup;

    iget-object v3, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3471
    :cond_1
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Laen;

    invoke-direct {v3, v0}, Laen;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Laen;)V

    .line 3492
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 4134
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v1}, Llc;->z(Landroid/view/View;)Z

    move-result v1

    .line 3492
    if-eqz v1, :cond_2

    .line 3494
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->b()V

    :goto_1
    move v0, v2

    .line 162
    goto :goto_0

    .line 3497
    :cond_2
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    new-instance v3, Ldcn;

    invoke-direct {v3, v0}, Ldcn;-><init>(Landroid/support/design/widget/Snackbar;)V

    invoke-virtual {v1, v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->a(Ldcn;)V

    goto :goto_1

    .line 164
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/design/widget/Snackbar;

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 4591
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 4616
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4618
    instance-of v5, v1, Lm;

    if-eqz v5, :cond_3

    .line 4619
    check-cast v1, Lm;

    .line 4620
    invoke-virtual {v1}, Lm;->a()Laen;

    move-result-object v1

    .line 4622
    instance-of v5, v1, Ly;

    if-eqz v5, :cond_3

    .line 4623
    check-cast v1, Ly;

    invoke-virtual {v1}, Ly;->d()I

    move-result v1

    if-eqz v1, :cond_3

    move v3, v2

    .line 4591
    :cond_3
    if-eqz v3, :cond_5

    .line 4592
    :cond_4
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->c()V

    :goto_2
    move v0, v2

    .line 165
    goto/16 :goto_0

    .line 5554
    :cond_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_6

    .line 5555
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    .line 6447
    sget-object v3, Lks;->a:Llc;

    invoke-virtual {v3, v1}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 5555
    iget-object v3, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lmd;->c(F)Lmd;

    move-result-object v1

    sget-object v3, Lj;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Lmd;->a(Landroid/view/animation/Interpolator;)Lmd;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Lmd;->a(J)Lmd;

    move-result-object v1

    new-instance v3, Lv;

    invoke-direct {v3, v0, v4}, Lv;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v1, v3}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    invoke-virtual {v0}, Lmd;->c()V

    goto :goto_2

    .line 5571
    :cond_6
    iget-object v1, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Laal;->i:I

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 5572
    sget-object v3, Lj;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 5573
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 5574
    new-instance v3, Lr;

    invoke-direct {v3, v0, v4}, Lr;-><init>(Landroid/support/design/widget/Snackbar;I)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 5586
    iget-object v0, v0, Landroid/support/design/widget/Snackbar;->c:Landroid/support/design/widget/Snackbar$SnackbarLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/Snackbar$SnackbarLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
