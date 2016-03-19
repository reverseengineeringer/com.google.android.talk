.class final Lrs;
.super Lmo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lrr;


# direct methods
.method constructor <init>(Lrr;)V
    .locals 0

    .prologue
    .line 731
    iput-object p1, p0, Lrs;->a:Lrr;

    invoke-direct {p0}, Lmo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lrs;->a:Lrr;

    iget-object v0, v0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 742
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 734
    iget-object v0, p0, Lrs;->a:Lrr;

    iget-object v0, v0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lks;->c(Landroid/view/View;F)V

    .line 735
    iget-object v0, p0, Lrs;->a:Lrr;

    iget-object v0, v0, Lrr;->a:Lri;

    iget-object v0, v0, Lri;->v:Lmd;

    invoke-virtual {v0, v2}, Lmd;->a(Lmn;)Lmd;

    .line 736
    iget-object v0, p0, Lrs;->a:Lrr;

    iget-object v0, v0, Lrr;->a:Lri;

    iput-object v2, v0, Lri;->v:Lmd;

    .line 737
    return-void
.end method
