.class final Lz;
.super Lqd;
.source "SourceFile"


# instance fields
.field final synthetic a:Ly;

.field private b:I


# direct methods
.method constructor <init>(Ly;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lz;->a:Ly;

    invoke-direct {p0}, Lqd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 12174
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p1}, Llc;->u(Landroid/view/View;)I

    move-result v0

    .line 288
    if-ne v0, v1, :cond_0

    move v0, v1

    .line 292
    :goto_0
    iget-object v2, p0, Lz;->a:Ly;

    .line 13035
    iget v2, v2, Ly;->d:I

    .line 292
    if-nez v2, :cond_2

    .line 293
    if-eqz v0, :cond_1

    .line 294
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 295
    iget v0, p0, Lz;->b:I

    .line 15374
    :goto_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 313
    return v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    iget v1, p0, Lz;->b:I

    .line 298
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 300
    :cond_2
    iget-object v2, p0, Lz;->a:Ly;

    .line 14035
    iget v2, v2, Ly;->d:I

    .line 300
    if-ne v2, v1, :cond_4

    .line 301
    if-eqz v0, :cond_3

    .line 302
    iget v1, p0, Lz;->b:I

    .line 303
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    .line 305
    :cond_3
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 306
    iget v0, p0, Lz;->b:I

    goto :goto_1

    .line 309
    :cond_4
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    .line 310
    iget v0, p0, Lz;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lz;->a:Ly;

    .line 3035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 227
    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lz;->a:Ly;

    .line 4035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 228
    invoke-virtual {v0, p1}, Lfhz;->a(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 4256
    cmpl-float v0, p2, v6

    if-eqz v0, :cond_a

    .line 5174
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, p1}, Llc;->u(Landroid/view/View;)I

    move-result v0

    .line 4257
    if-ne v0, v1, :cond_1

    move v0, v1

    .line 4260
    :goto_0
    iget-object v4, p0, Lz;->a:Ly;

    .line 6035
    iget v4, v4, Ly;->d:I

    .line 4260
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v0, v1

    .line 238
    :goto_1
    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v2, p0, Lz;->b:I

    if-ge v0, v2, :cond_d

    iget v0, p0, Lz;->b:I

    sub-int/2addr v0, v3

    .line 248
    :goto_2
    iget-object v2, p0, Lz;->a:Ly;

    .line 10035
    iget-object v2, v2, Ly;->b:Lqa;

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lqa;->a(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    new-instance v0, Laa;

    iget-object v2, p0, Lz;->a:Ly;

    invoke-direct {v0, v2, p1, v1}, Laa;-><init>(Ly;Landroid/view/View;Z)V

    invoke-static {p1, v0}, Lks;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 253
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 4257
    goto :goto_0

    .line 4263
    :cond_2
    iget-object v4, p0, Lz;->a:Ly;

    .line 7035
    iget v4, v4, Ly;->d:I

    .line 4263
    if-nez v4, :cond_6

    .line 4266
    if-eqz v0, :cond_4

    cmpg-float v0, p2, v6

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    cmpl-float v0, p2, v6

    if-lez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    .line 4267
    :cond_6
    iget-object v4, p0, Lz;->a:Ly;

    .line 8035
    iget v4, v4, Ly;->d:I

    .line 4267
    if-ne v4, v1, :cond_c

    .line 4270
    if-eqz v0, :cond_8

    cmpl-float v0, p2, v6

    if-lez v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    cmpg-float v0, p2, v6

    if-gez v0, :cond_9

    move v0, v1

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_1

    .line 4273
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v4, p0, Lz;->b:I

    sub-int/2addr v0, v4

    .line 4274
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lz;->a:Ly;

    .line 9035
    iget v5, v5, Ly;->e:F

    .line 4274
    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 4275
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lt v0, v4, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v2

    .line 4278
    goto :goto_1

    .line 239
    :cond_d
    iget v0, p0, Lz;->b:I

    add-int/2addr v0, v3

    goto :goto_2

    .line 245
    :cond_e
    iget v0, p0, Lz;->b:I

    move v1, v2

    goto :goto_2

    .line 250
    :cond_f
    if-eqz v1, :cond_0

    iget-object v0, p0, Lz;->a:Ly;

    .line 11035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 250
    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lz;->a:Ly;

    .line 12035
    iget-object v0, v0, Ly;->c:Lfhz;

    .line 251
    invoke-virtual {v0}, Lfhz;->a()V

    goto :goto_3
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lz;->a:Ly;

    invoke-virtual {v0, p1}, Ly;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lz;->b:I

    .line 223
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 323
    iget v0, p0, Lz;->b:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lz;->a:Ly;

    .line 16035
    iget v2, v2, Ly;->f:F

    .line 323
    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 325
    iget v1, p0, Lz;->b:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lz;->a:Ly;

    .line 17035
    iget v3, v3, Ly;->g:F

    .line 325
    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 328
    int-to-float v2, p2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_0

    .line 329
    invoke-static {p1, v4}, Lks;->c(Landroid/view/View;F)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    int-to-float v2, p2

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_1

    .line 331
    invoke-static {p1, v5}, Lks;->c(Landroid/view/View;F)V

    goto :goto_0

    .line 334
    :cond_1
    int-to-float v2, p2

    .line 17391
    sub-float/2addr v2, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    .line 335
    sub-float v0, v4, v0

    .line 18035
    invoke-static {v5, v0, v4}, Ly;->a(FFF)F

    move-result v0

    .line 335
    invoke-static {p1, v0}, Lks;->c(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method
