.class final Lrr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lri;


# direct methods
.method constructor <init>(Lri;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lrr;->a:Lri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 725
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->t:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lrr;->a:Lri;

    iget-object v1, v1, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 728
    iget-object v0, p0, Lrr;->a:Lri;

    .line 3092
    invoke-virtual {v0}, Lri;->o()V

    .line 729
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 730
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v1, p0, Lrr;->a:Lri;

    iget-object v1, v1, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 3447
    sget-object v2, Lks;->a:Llc;

    invoke-virtual {v2, v1}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 730
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lmd;->a(F)Lmd;

    move-result-object v1

    iput-object v1, v0, Lri;->v:Lmd;

    .line 731
    iget-object v0, p0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->v:Lmd;

    new-instance v1, Lrs;

    invoke-direct {v1, p0}, Lrs;-><init>(Lrr;)V

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 744
    return-void
.end method
