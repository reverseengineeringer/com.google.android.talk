.class public final Lhph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lhpg;

.field private b:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Lhpg;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lhph;->b:Landroid/animation/Animator;

    .line 36
    iput-object p1, p0, Lhph;->a:Lhpg;

    .line 37
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhph;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lhph;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lhph;->a()V

    .line 53
    iget-object v0, p0, Lhph;->a:Lhpg;

    invoke-interface {v0}, Lhpg;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lhph;->b:Landroid/animation/Animator;

    .line 58
    iget-object v0, p0, Lhph;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public b(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lhph;->a()V

    .line 69
    iget-object v0, p0, Lhph;->a:Lhpg;

    invoke-interface {v0}, Lhpg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Lhph;->b:Landroid/animation/Animator;

    .line 74
    iget-object v0, p0, Lhph;->b:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method
