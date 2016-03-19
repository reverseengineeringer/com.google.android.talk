.class final Labz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Labn;


# direct methods
.method constructor <init>(Labn;)V
    .locals 0

    .prologue
    .line 1068
    iput-object p1, p0, Labz;->a:Labn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1071
    iget-object v0, p0, Labz;->a:Labn;

    .line 2918
    iget-object v1, v0, Labn;->c:Lacc;

    invoke-interface {v1}, Lacc;->finish()V

    .line 2919
    iget-object v0, v0, Labn;->c:Lacc;

    invoke-interface {v0, v2, v2}, Lacc;->overridePendingTransition(II)V

    .line 1072
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1076
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method
