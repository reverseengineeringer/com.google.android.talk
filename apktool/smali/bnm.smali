.class final Lbnm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbng;


# direct methods
.method constructor <init>(Lbng;Z)V
    .locals 0

    .prologue
    .line 2074
    iput-object p1, p0, Lbnm;->b:Lbng;

    iput-boolean p2, p0, Lbnm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 2077
    iget-boolean v0, p0, Lbnm;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbnm;->b:Lbng;

    .line 2285
    iget-object v0, v0, Lbng;->bh:Ljava/lang/Runnable;

    .line 2077
    if-eqz v0, :cond_0

    .line 2078
    iget-object v0, p0, Lbnm;->b:Lbng;

    .line 3285
    iget-object v0, v0, Lbng;->bh:Ljava/lang/Runnable;

    .line 2078
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2079
    iget-object v0, p0, Lbnm;->b:Lbng;

    .line 4285
    const/4 v1, 0x0

    iput-object v1, v0, Lbng;->bh:Ljava/lang/Runnable;

    .line 2081
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 2087
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 2084
    return-void
.end method
