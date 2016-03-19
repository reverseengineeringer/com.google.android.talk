.class public final Litg;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Litg;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lith;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2242
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3247
    iput-object v0, p0, Litg;->a:Ljava/lang/Long;

    .line 3248
    iput-object v0, p0, Litg;->b:Lith;

    .line 3249
    iput-object v0, p0, Litg;->c:Ljava/lang/Integer;

    .line 3250
    iput-object v0, p0, Litg;->d:Ljava/lang/Integer;

    .line 3251
    iput-object v0, p0, Litg;->e:Ljava/lang/Integer;

    .line 3252
    iput-object v0, p0, Litg;->f:Ljava/lang/Integer;

    .line 3253
    iput-object v0, p0, Litg;->g:Ljava/lang/Integer;

    .line 3254
    iput-object v0, p0, Litg;->h:Ljava/lang/String;

    .line 3255
    iput-object v0, p0, Litg;->eD:Llyd;

    .line 3256
    const/4 v0, -0x1

    iput v0, p0, Litg;->eE:I

    .line 2244
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3333
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3334
    sparse-switch v0, :sswitch_data_0

    .line 3338
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3339
    :sswitch_0
    return-object p0

    .line 3344
    :sswitch_1
    iget-object v0, p0, Litg;->b:Lith;

    if-nez v0, :cond_1

    .line 3345
    new-instance v0, Lith;

    invoke-direct {v0}, Lith;-><init>()V

    iput-object v0, p0, Litg;->b:Lith;

    .line 3347
    :cond_1
    iget-object v0, p0, Litg;->b:Lith;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3351
    :sswitch_2
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3352
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3357
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Litg;->c:Ljava/lang/Integer;

    goto :goto_0

    .line 3363
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3364
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 3367
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Litg;->d:Ljava/lang/Integer;

    goto :goto_0

    .line 3373
    :sswitch_4
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3374
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 3379
    :pswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Litg;->e:Ljava/lang/Integer;

    goto :goto_0

    .line 3385
    :sswitch_5
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3386
    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 3389
    :pswitch_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Litg;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 3395
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3396
    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 3402
    :pswitch_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Litg;->g:Ljava/lang/Integer;

    goto :goto_0

    .line 3408
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Litg;->h:Ljava/lang/String;

    goto :goto_0

    .line 3412
    :sswitch_8
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Litg;->a:Ljava/lang/Long;

    goto :goto_0

    .line 3334
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x28 -> :sswitch_4
        0x30 -> :sswitch_5
        0x38 -> :sswitch_6
        0x42 -> :sswitch_7
        0x48 -> :sswitch_8
    .end sparse-switch

    .line 3352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 3364
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 3374
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 3386
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 3396
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 2263
    iget-object v0, p0, Litg;->b:Lith;

    if-eqz v0, :cond_0

    .line 2264
    const/4 v0, 0x1

    iget-object v1, p0, Litg;->b:Lith;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2266
    :cond_0
    iget-object v0, p0, Litg;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 2267
    const/4 v0, 0x2

    iget-object v1, p0, Litg;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2269
    :cond_1
    iget-object v0, p0, Litg;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2270
    const/4 v0, 0x3

    iget-object v1, p0, Litg;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2272
    :cond_2
    iget-object v0, p0, Litg;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 2273
    const/4 v0, 0x5

    iget-object v1, p0, Litg;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2275
    :cond_3
    iget-object v0, p0, Litg;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 2276
    const/4 v0, 0x6

    iget-object v1, p0, Litg;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2278
    :cond_4
    iget-object v0, p0, Litg;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 2279
    const/4 v0, 0x7

    iget-object v1, p0, Litg;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2281
    :cond_5
    iget-object v0, p0, Litg;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2282
    const/16 v0, 0x8

    iget-object v1, p0, Litg;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2284
    :cond_6
    iget-object v0, p0, Litg;->a:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 2285
    const/16 v0, 0x9

    iget-object v1, p0, Litg;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 2287
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2288
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 2292
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2293
    iget-object v1, p0, Litg;->b:Lith;

    if-eqz v1, :cond_0

    .line 2294
    const/4 v1, 0x1

    iget-object v2, p0, Litg;->b:Lith;

    .line 2295
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2297
    :cond_0
    iget-object v1, p0, Litg;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 2298
    const/4 v1, 0x2

    iget-object v2, p0, Litg;->c:Ljava/lang/Integer;

    .line 2299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2301
    :cond_1
    iget-object v1, p0, Litg;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 2302
    const/4 v1, 0x3

    iget-object v2, p0, Litg;->d:Ljava/lang/Integer;

    .line 2303
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2305
    :cond_2
    iget-object v1, p0, Litg;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 2306
    const/4 v1, 0x5

    iget-object v2, p0, Litg;->e:Ljava/lang/Integer;

    .line 2307
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2309
    :cond_3
    iget-object v1, p0, Litg;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 2310
    const/4 v1, 0x6

    iget-object v2, p0, Litg;->f:Ljava/lang/Integer;

    .line 2311
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2313
    :cond_4
    iget-object v1, p0, Litg;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 2314
    const/4 v1, 0x7

    iget-object v2, p0, Litg;->g:Ljava/lang/Integer;

    .line 2315
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2317
    :cond_5
    iget-object v1, p0, Litg;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2318
    const/16 v1, 0x8

    iget-object v2, p0, Litg;->h:Ljava/lang/String;

    .line 2319
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2321
    :cond_6
    iget-object v1, p0, Litg;->a:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 2322
    const/16 v1, 0x9

    iget-object v2, p0, Litg;->a:Ljava/lang/Long;

    .line 2323
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2325
    :cond_7
    return v0
.end method
