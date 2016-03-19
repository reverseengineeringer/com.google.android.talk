.class final Lso;
.super Lmo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lsn;


# direct methods
.method constructor <init>(Lsn;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lso;->a:Lsn;

    invoke-direct {p0}, Lmo;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lso;->a:Lsn;

    .line 3074
    iget-boolean v0, v0, Lsn;->j:Z

    .line 139
    if-eqz v0, :cond_0

    iget-object v0, p0, Lso;->a:Lsn;

    .line 4074
    iget-object v0, v0, Lsn;->f:Landroid/view/View;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lso;->a:Lsn;

    .line 5074
    iget-object v0, v0, Lsn;->f:Landroid/view/View;

    .line 140
    invoke-static {v0, v1}, Lks;->b(Landroid/view/View;F)V

    .line 141
    iget-object v0, p0, Lso;->a:Lsn;

    .line 6074
    iget-object v0, v0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 141
    invoke-static {v0, v1}, Lks;->b(Landroid/view/View;F)V

    .line 143
    :cond_0
    iget-object v0, p0, Lso;->a:Lsn;

    .line 7074
    iget-object v0, v0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 143
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lso;->a:Lsn;

    .line 8074
    iget-object v0, v0, Lsn;->c:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Z)V

    .line 145
    iget-object v0, p0, Lso;->a:Lsn;

    .line 9074
    const/4 v1, 0x0

    iput-object v1, v0, Lsn;->m:Lta;

    .line 146
    iget-object v0, p0, Lso;->a:Lsn;

    invoke-virtual {v0}, Lsn;->k()V

    .line 147
    iget-object v0, p0, Lso;->a:Lsn;

    .line 10074
    iget-object v0, v0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 147
    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lso;->a:Lsn;

    .line 11074
    iget-object v0, v0, Lsn;->b:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 11736
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v0}, Llc;->r(Landroid/view/View;)V

    .line 150
    :cond_1
    return-void
.end method
