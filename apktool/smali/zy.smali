.class public final Lzy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 13534
    iput-object p1, p0, Lzy;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laao;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 10538
    invoke-virtual {p1, v0}, Laao;->a(Z)V

    .line 10539
    iget-object v2, p1, Laao;->g:Laao;

    if-eqz v2, :cond_0

    iget-object v2, p1, Laao;->h:Laao;

    if-nez v2, :cond_0

    .line 10540
    iput-object v3, p1, Laao;->g:Laao;

    .line 10544
    :cond_0
    iput-object v3, p1, Laao;->h:Laao;

    .line 11604
    iget v2, p1, Laao;->i:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    .line 10545
    :goto_0
    if-nez v0, :cond_2

    .line 10546
    iget-object v0, p0, Lzy;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Laao;->a:Landroid/view/View;

    .line 13086
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->f()V

    .line 13087
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->d:Lya;

    invoke-virtual {v3, v2}, Lya;->g(Landroid/view/View;)Z

    move-result v3

    .line 13088
    if-eqz v3, :cond_1

    .line 13089
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/view/View;)Laao;

    move-result-object v2

    .line 13090
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    invoke-virtual {v4, v2}, Laag;->b(Laao;)V

    .line 13091
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    invoke-virtual {v4, v2}, Laag;->a(Laao;)V

    .line 13096
    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 10546
    if-nez v3, :cond_2

    invoke-virtual {p1}, Laao;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10547
    iget-object v0, p0, Lzy;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p1, Laao;->a:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 10550
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 11604
    goto :goto_0
.end method
