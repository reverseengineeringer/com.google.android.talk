.class public final Ljjs;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljjs;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2323
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3328
    iput-object v0, p0, Ljjs;->a:Ljava/lang/Integer;

    .line 3329
    iput-object v0, p0, Ljjs;->b:Ljava/lang/String;

    .line 3330
    iput-object v0, p0, Ljjs;->c:Ljava/lang/String;

    .line 3331
    iput-object v0, p0, Ljjs;->d:Ljava/lang/String;

    .line 3332
    iput-object v0, p0, Ljjs;->e:Ljava/lang/String;

    .line 3333
    iput-object v0, p0, Ljjs;->f:Ljava/lang/String;

    .line 3334
    iput-object v0, p0, Ljjs;->g:Ljava/lang/String;

    .line 3335
    iput-object v0, p0, Ljjs;->h:Ljava/lang/String;

    .line 3336
    iput-object v0, p0, Ljjs;->i:Ljava/lang/String;

    .line 3337
    iput-object v0, p0, Ljjs;->j:Ljava/lang/String;

    .line 3338
    iput-object v0, p0, Ljjs;->k:Ljava/lang/String;

    .line 3339
    iput-object v0, p0, Ljjs;->l:Ljava/lang/String;

    .line 3340
    iput-object v0, p0, Ljjs;->eD:Llyd;

    .line 3341
    const/4 v0, -0x1

    iput v0, p0, Ljjs;->eE:I

    .line 2325
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3442
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3443
    sparse-switch v0, :sswitch_data_0

    .line 3447
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3448
    :sswitch_0
    return-object p0

    .line 3453
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 3454
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3457
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljjs;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 3463
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->b:Ljava/lang/String;

    goto :goto_0

    .line 3467
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->c:Ljava/lang/String;

    goto :goto_0

    .line 3471
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->d:Ljava/lang/String;

    goto :goto_0

    .line 3475
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->e:Ljava/lang/String;

    goto :goto_0

    .line 3479
    :sswitch_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->f:Ljava/lang/String;

    goto :goto_0

    .line 3483
    :sswitch_7
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->g:Ljava/lang/String;

    goto :goto_0

    .line 3487
    :sswitch_8
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->h:Ljava/lang/String;

    goto :goto_0

    .line 3491
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->i:Ljava/lang/String;

    goto :goto_0

    .line 3495
    :sswitch_a
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->j:Ljava/lang/String;

    goto :goto_0

    .line 3499
    :sswitch_b
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->k:Ljava/lang/String;

    goto :goto_0

    .line 3503
    :sswitch_c
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljjs;->l:Ljava/lang/String;

    goto :goto_0

    .line 3443
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
    .end sparse-switch

    .line 3454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2348
    const/4 v0, 0x1

    iget-object v1, p0, Ljjs;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 2349
    iget-object v0, p0, Ljjs;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2350
    const/4 v0, 0x2

    iget-object v1, p0, Ljjs;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2352
    :cond_0
    iget-object v0, p0, Ljjs;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2353
    const/4 v0, 0x3

    iget-object v1, p0, Ljjs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2355
    :cond_1
    iget-object v0, p0, Ljjs;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2356
    const/4 v0, 0x4

    iget-object v1, p0, Ljjs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2358
    :cond_2
    iget-object v0, p0, Ljjs;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2359
    const/4 v0, 0x5

    iget-object v1, p0, Ljjs;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2361
    :cond_3
    iget-object v0, p0, Ljjs;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2362
    const/4 v0, 0x6

    iget-object v1, p0, Ljjs;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2364
    :cond_4
    iget-object v0, p0, Ljjs;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2365
    const/4 v0, 0x7

    iget-object v1, p0, Ljjs;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2367
    :cond_5
    iget-object v0, p0, Ljjs;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2368
    const/16 v0, 0x8

    iget-object v1, p0, Ljjs;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2370
    :cond_6
    iget-object v0, p0, Ljjs;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 2371
    const/16 v0, 0x9

    iget-object v1, p0, Ljjs;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2373
    :cond_7
    iget-object v0, p0, Ljjs;->j:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 2374
    const/16 v0, 0xa

    iget-object v1, p0, Ljjs;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2376
    :cond_8
    iget-object v0, p0, Ljjs;->k:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2377
    const/16 v0, 0xb

    iget-object v1, p0, Ljjs;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2379
    :cond_9
    iget-object v0, p0, Ljjs;->l:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2380
    const/16 v0, 0xc

    iget-object v1, p0, Ljjs;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2382
    :cond_a
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2383
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2387
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2388
    const/4 v1, 0x1

    iget-object v2, p0, Ljjs;->a:Ljava/lang/Integer;

    .line 2389
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2390
    iget-object v1, p0, Ljjs;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2391
    const/4 v1, 0x2

    iget-object v2, p0, Ljjs;->b:Ljava/lang/String;

    .line 2392
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2394
    :cond_0
    iget-object v1, p0, Ljjs;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2395
    const/4 v1, 0x3

    iget-object v2, p0, Ljjs;->c:Ljava/lang/String;

    .line 2396
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2398
    :cond_1
    iget-object v1, p0, Ljjs;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2399
    const/4 v1, 0x4

    iget-object v2, p0, Ljjs;->d:Ljava/lang/String;

    .line 2400
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2402
    :cond_2
    iget-object v1, p0, Ljjs;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2403
    const/4 v1, 0x5

    iget-object v2, p0, Ljjs;->e:Ljava/lang/String;

    .line 2404
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2406
    :cond_3
    iget-object v1, p0, Ljjs;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2407
    const/4 v1, 0x6

    iget-object v2, p0, Ljjs;->f:Ljava/lang/String;

    .line 2408
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2410
    :cond_4
    iget-object v1, p0, Ljjs;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2411
    const/4 v1, 0x7

    iget-object v2, p0, Ljjs;->g:Ljava/lang/String;

    .line 2412
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2414
    :cond_5
    iget-object v1, p0, Ljjs;->h:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2415
    const/16 v1, 0x8

    iget-object v2, p0, Ljjs;->h:Ljava/lang/String;

    .line 2416
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2418
    :cond_6
    iget-object v1, p0, Ljjs;->i:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 2419
    const/16 v1, 0x9

    iget-object v2, p0, Ljjs;->i:Ljava/lang/String;

    .line 2420
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2422
    :cond_7
    iget-object v1, p0, Ljjs;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 2423
    const/16 v1, 0xa

    iget-object v2, p0, Ljjs;->j:Ljava/lang/String;

    .line 2424
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2426
    :cond_8
    iget-object v1, p0, Ljjs;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 2427
    const/16 v1, 0xb

    iget-object v2, p0, Ljjs;->k:Ljava/lang/String;

    .line 2428
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2430
    :cond_9
    iget-object v1, p0, Ljjs;->l:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 2431
    const/16 v1, 0xc

    iget-object v2, p0, Ljjs;->l:Ljava/lang/String;

    .line 2432
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2434
    :cond_a
    return v0
.end method
