.class final Lhtl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lhti;

.field private b:Lhtj;


# direct methods
.method public constructor <init>(Lhti;Lhtj;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lhtl;->a:Lhti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lhtl;->b:Lhtj;

    .line 196
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lhtl;->a:Lhti;

    iget-object v1, p0, Lhtl;->b:Lhtj;

    .line 1037
    invoke-virtual {v0, v1}, Lhti;->a(Lhtj;)V

    .line 201
    return-void
.end method
