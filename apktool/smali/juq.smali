.class public final Ljuq;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljuq;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljvb;

.field public c:Ljuz;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5279
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6284
    iput-object v0, p0, Ljuq;->a:Ljava/lang/Integer;

    .line 6285
    iput-object v0, p0, Ljuq;->b:Ljvb;

    .line 6286
    iput-object v0, p0, Ljuq;->c:Ljuz;

    .line 6287
    iput-object v0, p0, Ljuq;->d:Ljava/lang/String;

    .line 6288
    iput-object v0, p0, Ljuq;->e:Ljava/lang/String;

    .line 6289
    iput-object v0, p0, Ljuq;->f:Ljava/lang/Integer;

    .line 6290
    iput-object v0, p0, Ljuq;->g:Ljava/lang/Long;

    .line 6291
    iput-object v0, p0, Ljuq;->h:Ljava/lang/String;

    .line 6292
    iput-object v0, p0, Ljuq;->eD:Llyd;

    .line 6293
    const/4 v0, -0x1

    iput v0, p0, Ljuq;->eE:I

    .line 5281
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 6370
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6371
    sparse-switch v0, :sswitch_data_0

    .line 6375
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6376
    :sswitch_0
    return-object p0

    .line 6381
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 6382
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 6445
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuq;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 6451
    :sswitch_3
    iget-object v0, p0, Ljuq;->b:Ljvb;

    if-nez v0, :cond_1

    .line 6452
    new-instance v0, Ljvb;

    invoke-direct {v0}, Ljvb;-><init>()V

    iput-object v0, p0, Ljuq;->b:Ljvb;

    .line 6454
    :cond_1
    iget-object v0, p0, Ljuq;->b:Ljvb;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6458
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuq;->d:Ljava/lang/String;

    goto :goto_0

    .line 6462
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuq;->e:Ljava/lang/String;

    goto :goto_0

    .line 6466
    :sswitch_6
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljuq;->f:Ljava/lang/Integer;

    goto :goto_0

    .line 6470
    :sswitch_7
    iget-object v0, p0, Ljuq;->c:Ljuz;

    if-nez v0, :cond_2

    .line 6471
    new-instance v0, Ljuz;

    invoke-direct {v0}, Ljuz;-><init>()V

    iput-object v0, p0, Ljuq;->c:Ljuz;

    .line 6473
    :cond_2
    iget-object v0, p0, Ljuq;->c:Ljuz;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 6477
    :sswitch_8
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Ljuq;->g:Ljava/lang/Long;

    goto :goto_0

    .line 6481
    :sswitch_9
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljuq;->h:Ljava/lang/String;

    goto :goto_0

    .line 6371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x32 -> :sswitch_7
        0x38 -> :sswitch_8
        0x42 -> :sswitch_9
    .end sparse-switch

    .line 6382
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_2
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0xcc -> :sswitch_2
        0xcd -> :sswitch_2
        0xce -> :sswitch_2
        0xcf -> :sswitch_2
        0xd0 -> :sswitch_2
        0xd1 -> :sswitch_2
        0xd2 -> :sswitch_2
        0xd3 -> :sswitch_2
        0xd4 -> :sswitch_2
        0xd5 -> :sswitch_2
        0xd6 -> :sswitch_2
        0xd7 -> :sswitch_2
        0xd8 -> :sswitch_2
        0xd9 -> :sswitch_2
        0xda -> :sswitch_2
        0xdb -> :sswitch_2
        0xdc -> :sswitch_2
        0xdd -> :sswitch_2
        0xde -> :sswitch_2
        0xdf -> :sswitch_2
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe2 -> :sswitch_2
        0xe3 -> :sswitch_2
        0xe4 -> :sswitch_2
        0xe5 -> :sswitch_2
        0xe6 -> :sswitch_2
        0xe7 -> :sswitch_2
        0xe8 -> :sswitch_2
        0xe9 -> :sswitch_2
        0xea -> :sswitch_2
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x130 -> :sswitch_2
        0x131 -> :sswitch_2
        0x132 -> :sswitch_2
        0x133 -> :sswitch_2
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x138 -> :sswitch_2
        0x139 -> :sswitch_2
        0x13a -> :sswitch_2
        0x13b -> :sswitch_2
        0x13c -> :sswitch_2
        0x13d -> :sswitch_2
        0x13e -> :sswitch_2
        0x13f -> :sswitch_2
        0x140 -> :sswitch_2
        0x141 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 5300
    iget-object v0, p0, Ljuq;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5301
    const/4 v0, 0x1

    iget-object v1, p0, Ljuq;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5303
    :cond_0
    iget-object v0, p0, Ljuq;->b:Ljvb;

    if-eqz v0, :cond_1

    .line 5304
    const/4 v0, 0x2

    iget-object v1, p0, Ljuq;->b:Ljvb;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5306
    :cond_1
    iget-object v0, p0, Ljuq;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5307
    const/4 v0, 0x3

    iget-object v1, p0, Ljuq;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5309
    :cond_2
    iget-object v0, p0, Ljuq;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5310
    const/4 v0, 0x4

    iget-object v1, p0, Ljuq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5312
    :cond_3
    iget-object v0, p0, Ljuq;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 5313
    const/4 v0, 0x5

    iget-object v1, p0, Ljuq;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 5315
    :cond_4
    iget-object v0, p0, Ljuq;->c:Ljuz;

    if-eqz v0, :cond_5

    .line 5316
    const/4 v0, 0x6

    iget-object v1, p0, Ljuq;->c:Ljuz;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 5318
    :cond_5
    iget-object v0, p0, Ljuq;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 5319
    const/4 v0, 0x7

    iget-object v1, p0, Ljuq;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 5321
    :cond_6
    iget-object v0, p0, Ljuq;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 5322
    const/16 v0, 0x8

    iget-object v1, p0, Ljuq;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 5324
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5325
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 5329
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5330
    iget-object v1, p0, Ljuq;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 5331
    const/4 v1, 0x1

    iget-object v2, p0, Ljuq;->a:Ljava/lang/Integer;

    .line 5332
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5334
    :cond_0
    iget-object v1, p0, Ljuq;->b:Ljvb;

    if-eqz v1, :cond_1

    .line 5335
    const/4 v1, 0x2

    iget-object v2, p0, Ljuq;->b:Ljvb;

    .line 5336
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5338
    :cond_1
    iget-object v1, p0, Ljuq;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 5339
    const/4 v1, 0x3

    iget-object v2, p0, Ljuq;->d:Ljava/lang/String;

    .line 5340
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5342
    :cond_2
    iget-object v1, p0, Ljuq;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5343
    const/4 v1, 0x4

    iget-object v2, p0, Ljuq;->e:Ljava/lang/String;

    .line 5344
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5346
    :cond_3
    iget-object v1, p0, Ljuq;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 5347
    const/4 v1, 0x5

    iget-object v2, p0, Ljuq;->f:Ljava/lang/Integer;

    .line 5348
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5350
    :cond_4
    iget-object v1, p0, Ljuq;->c:Ljuz;

    if-eqz v1, :cond_5

    .line 5351
    const/4 v1, 0x6

    iget-object v2, p0, Ljuq;->c:Ljuz;

    .line 5352
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5354
    :cond_5
    iget-object v1, p0, Ljuq;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 5355
    const/4 v1, 0x7

    iget-object v2, p0, Ljuq;->g:Ljava/lang/Long;

    .line 5356
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5358
    :cond_6
    iget-object v1, p0, Ljuq;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 5359
    const/16 v1, 0x8

    iget-object v2, p0, Ljuq;->h:Ljava/lang/String;

    .line 5360
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5362
    :cond_7
    return v0
.end method
