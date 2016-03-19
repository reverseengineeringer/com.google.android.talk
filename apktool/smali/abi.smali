.class public final Labi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 11411
    iput-object p1, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Laao;)V
    .locals 3

    .prologue
    .line 10441
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 11144
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Laab;

    .line 10441
    iget-object v1, p1, Laao;->a:Landroid/view/View;

    iget-object v2, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    invoke-virtual {v0, v1, v2}, Laab;->a(Landroid/view/View;Laag;)V

    .line 10442
    return-void
.end method

.method public a(Laao;Lzz;Lzz;)V
    .locals 2

    .prologue
    .line 3415
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Laag;

    invoke-virtual {v0, p1}, Laag;->b(Laao;)V

    .line 3416
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 5044
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Laao;)V

    .line 5045
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Laao;->a(Z)V

    .line 5046
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v1, p1, p2, p3}, Lzx;->a(Laao;Lzz;Lzz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5047
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 3417
    :cond_0
    return-void
.end method

.method public b(Laao;Lzz;Lzz;)V
    .locals 2

    .prologue
    .line 5421
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 7036
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Laao;->a(Z)V

    .line 7037
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v1, p1, p2, p3}, Lzx;->b(Laao;Lzz;Lzz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7038
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 5422
    :cond_0
    return-void
.end method

.method public c(Laao;Lzz;Lzz;)V
    .locals 1

    .prologue
    .line 7427
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laao;->a(Z)V

    .line 7428
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 8144
    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Z

    .line 7428
    if-eqz v0, :cond_1

    .line 7432
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v0, p1, p1, p2, p3}, Lzx;->a(Laao;Laao;Lzz;Lzz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7433
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9144
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    .line 7438
    :cond_0
    :goto_0
    return-void

    .line 7435
    :cond_1
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->s:Lzx;

    invoke-virtual {v0, p1, p2, p3}, Lzx;->c(Laao;Lzz;Lzz;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7436
    iget-object v0, p0, Labi;->a:Landroid/support/v7/widget/RecyclerView;

    .line 10144
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->s()V

    goto :goto_0
.end method
