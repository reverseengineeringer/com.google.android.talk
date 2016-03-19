.class final Lrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwc;


# instance fields
.field final synthetic a:Lri;

.field private b:Lwc;


# direct methods
.method public constructor <init>(Lri;Lwc;)V
    .locals 0

    .prologue
    .line 1693
    iput-object p1, p0, Lrv;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    iput-object p2, p0, Lrv;->b:Lwc;

    .line 1695
    return-void
.end method


# virtual methods
.method public a(Lwb;)V
    .locals 3

    .prologue
    .line 1710
    iget-object v0, p0, Lrv;->b:Lwc;

    invoke-interface {v0, p1}, Lwc;->a(Lwb;)V

    .line 1711
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1712
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lrv;->a:Lri;

    iget-object v1, v1, Lri;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1715
    :cond_0
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1716
    iget-object v0, p0, Lrv;->a:Lri;

    .line 3092
    invoke-virtual {v0}, Lri;->o()V

    .line 1717
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v1, p0, Lrv;->a:Lri;

    iget-object v1, v1, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 3447
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 1717
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmd;->a(F)Lmd;

    move-result-object v1

    iput-object v1, v0, Lri;->v:Lmd;

    .line 1718
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->v:Lmd;

    new-instance v1, Lrw;

    invoke-direct {v1, p0}, Lrw;-><init>(Lrv;)V

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 1733
    :cond_1
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->e:Lrg;

    if-eqz v0, :cond_2

    .line 1734
    iget-object v0, p0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->e:Lrg;

    iget-object v1, p0, Lrv;->a:Lri;

    iget-object v1, v1, Lri;->r:Lwb;

    invoke-interface {v0, v1}, Lrg;->b(Lwb;)V

    .line 1736
    :cond_2
    iget-object v0, p0, Lrv;->a:Lri;

    const/4 v1, 0x0

    iput-object v1, v0, Lri;->r:Lwb;

    .line 1737
    return-void
.end method

.method public a(Lwb;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lrv;->b:Lwc;

    invoke-interface {v0, p1, p2}, Lwc;->a(Lwb;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Lwb;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Lrv;->b:Lwc;

    invoke-interface {v0, p1, p2}, Lwc;->a(Lwb;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b(Lwb;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1702
    iget-object v0, p0, Lrv;->b:Lwc;

    invoke-interface {v0, p1, p2}, Lwc;->b(Lwb;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
