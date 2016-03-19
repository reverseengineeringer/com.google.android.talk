.class final Lzq;
.super Lzo;
.source "SourceFile"


# direct methods
.method constructor <init>(Laab;)V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzo;-><init>(Laab;B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 318
    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1, p1}, Laab;->i(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Laac;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0, p1}, Laab;->h(I)V

    .line 284
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 311
    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1, p1}, Laab;->k(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Laac;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0}, Laab;->z()I

    move-result v0

    return v0
.end method

.method public c(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 295
    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1, p1}, Laab;->g(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Laac;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Laac;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0}, Laab;->x()I

    move-result v0

    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1}, Laab;->B()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Laac;

    .line 303
    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1, p1}, Laab;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Laac;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Laac;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0}, Laab;->x()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0}, Laab;->x()I

    move-result v0

    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1}, Laab;->z()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lzq;->a:Laab;

    invoke-virtual {v1}, Laab;->B()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lzq;->a:Laab;

    invoke-virtual {v0}, Laab;->B()I

    move-result v0

    return v0
.end method
