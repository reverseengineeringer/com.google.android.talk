.class final Lrw;
.super Lmo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrv;


# direct methods
.method constructor <init>(Lrv;)V
    .locals 0

    .prologue
    .line 1718
    iput-object p1, p0, Lrw;->a:Lrv;

    invoke-direct {p0}, Lmo;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1721
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 1722
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->t:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->t:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1727
    :cond_0
    :goto_0
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->removeAllViews()V

    .line 1728
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->v:Lmd;

    invoke-virtual {v0, v2}, Lmd;->a(Lmn;)Lmd;

    .line 1729
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iput-object v2, v0, Lri;->v:Lmd;

    .line 1730
    return-void

    .line 1724
    :cond_1
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Lrw;->a:Lrv;

    iget-object v0, v0, Lrv;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3736
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->r(Landroid/view/View;)V

    goto :goto_0
.end method
