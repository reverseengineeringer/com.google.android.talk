.class final Likw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public a:Z

.field final synthetic b:Likv;


# direct methods
.method constructor <init>(Likv;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Likw;->b:Likv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, Likw;->a:Z

    .line 291
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Likw;->a:Z

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Likw;->b:Likv;

    iget-boolean v0, v0, Likv;->al:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 286
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Likw;->a:Z

    .line 277
    return-void
.end method
