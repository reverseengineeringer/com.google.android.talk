.class public final Ljdv;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljdv;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile e:[Ljdv;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljeh;

.field public c:[Ljek;

.field public d:[Ljgk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5218
    invoke-direct {p0}, Llyb;-><init>()V

    .line 6223
    iput-object v1, p0, Ljdv;->a:Ljava/lang/String;

    .line 6224
    invoke-static {}, Ljeh;->d()[Ljeh;

    move-result-object v0

    iput-object v0, p0, Ljdv;->b:[Ljeh;

    .line 6225
    invoke-static {}, Ljek;->d()[Ljek;

    move-result-object v0

    iput-object v0, p0, Ljdv;->c:[Ljek;

    .line 6226
    invoke-static {}, Ljgk;->d()[Ljgk;

    move-result-object v0

    iput-object v0, p0, Ljdv;->d:[Ljgk;

    .line 6227
    iput-object v1, p0, Ljdv;->eD:Llyd;

    .line 6228
    const/4 v0, -0x1

    iput v0, p0, Ljdv;->eE:I

    .line 5220
    return-void
.end method

.method public static d()[Ljdv;
    .locals 2

    .prologue
    .line 5193
    sget-object v0, Ljdv;->e:[Ljdv;

    if-nez v0, :cond_1

    .line 5194
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 5196
    :try_start_0
    sget-object v0, Ljdv;->e:[Ljdv;

    if-nez v0, :cond_0

    .line 5197
    const/4 v0, 0x0

    new-array v0, v0, [Ljdv;

    sput-object v0, Ljdv;->e:[Ljdv;

    .line 5199
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5201
    :cond_1
    sget-object v0, Ljdv;->e:[Ljdv;

    return-object v0

    .line 5199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6307
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 6308
    sparse-switch v0, :sswitch_data_0

    .line 6312
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6313
    :sswitch_0
    return-object p0

    .line 6318
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljdv;->a:Ljava/lang/String;

    goto :goto_0

    .line 6322
    :sswitch_2
    const/16 v0, 0x12

    .line 6323
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6324
    iget-object v0, p0, Ljdv;->b:[Ljeh;

    if-nez v0, :cond_2

    move v0, v1

    .line 6325
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljeh;

    .line 6327
    if-eqz v0, :cond_1

    .line 6328
    iget-object v3, p0, Ljdv;->b:[Ljeh;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6330
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 6331
    new-instance v3, Ljeh;

    invoke-direct {v3}, Ljeh;-><init>()V

    aput-object v3, v2, v0

    .line 6332
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6333
    invoke-virtual {p1}, Llxy;->a()I

    .line 6330
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6324
    :cond_2
    iget-object v0, p0, Ljdv;->b:[Ljeh;

    array-length v0, v0

    goto :goto_1

    .line 6336
    :cond_3
    new-instance v3, Ljeh;

    invoke-direct {v3}, Ljeh;-><init>()V

    aput-object v3, v2, v0

    .line 6337
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6338
    iput-object v2, p0, Ljdv;->b:[Ljeh;

    goto :goto_0

    .line 6342
    :sswitch_3
    const/16 v0, 0x1a

    .line 6343
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6344
    iget-object v0, p0, Ljdv;->c:[Ljek;

    if-nez v0, :cond_5

    move v0, v1

    .line 6345
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljek;

    .line 6347
    if-eqz v0, :cond_4

    .line 6348
    iget-object v3, p0, Ljdv;->c:[Ljek;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6350
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 6351
    new-instance v3, Ljek;

    invoke-direct {v3}, Ljek;-><init>()V

    aput-object v3, v2, v0

    .line 6352
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6353
    invoke-virtual {p1}, Llxy;->a()I

    .line 6350
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 6344
    :cond_5
    iget-object v0, p0, Ljdv;->c:[Ljek;

    array-length v0, v0

    goto :goto_3

    .line 6356
    :cond_6
    new-instance v3, Ljek;

    invoke-direct {v3}, Ljek;-><init>()V

    aput-object v3, v2, v0

    .line 6357
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6358
    iput-object v2, p0, Ljdv;->c:[Ljek;

    goto/16 :goto_0

    .line 6362
    :sswitch_4
    const/16 v0, 0x22

    .line 6363
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 6364
    iget-object v0, p0, Ljdv;->d:[Ljgk;

    if-nez v0, :cond_8

    move v0, v1

    .line 6365
    :goto_5
    add-int/2addr v2, v0

    new-array v2, v2, [Ljgk;

    .line 6367
    if-eqz v0, :cond_7

    .line 6368
    iget-object v3, p0, Ljdv;->d:[Ljgk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6370
    :cond_7
    :goto_6
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_9

    .line 6371
    new-instance v3, Ljgk;

    invoke-direct {v3}, Ljgk;-><init>()V

    aput-object v3, v2, v0

    .line 6372
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 6373
    invoke-virtual {p1}, Llxy;->a()I

    .line 6370
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 6364
    :cond_8
    iget-object v0, p0, Ljdv;->d:[Ljgk;

    array-length v0, v0

    goto :goto_5

    .line 6376
    :cond_9
    new-instance v3, Ljgk;

    invoke-direct {v3}, Ljgk;-><init>()V

    aput-object v3, v2, v0

    .line 6377
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 6378
    iput-object v2, p0, Ljdv;->d:[Ljgk;

    goto/16 :goto_0

    .line 6308
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5235
    iget-object v0, p0, Ljdv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5236
    const/4 v0, 0x1

    iget-object v2, p0, Ljdv;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Llxz;->a(ILjava/lang/String;)V

    .line 5238
    :cond_0
    iget-object v0, p0, Ljdv;->b:[Ljeh;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljdv;->b:[Ljeh;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 5239
    :goto_0
    iget-object v2, p0, Ljdv;->b:[Ljeh;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 5240
    iget-object v2, p0, Ljdv;->b:[Ljeh;

    aget-object v2, v2, v0

    .line 5241
    if-eqz v2, :cond_1

    .line 5242
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 5239
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5246
    :cond_2
    iget-object v0, p0, Ljdv;->c:[Ljek;

    if-eqz v0, :cond_4

    iget-object v0, p0, Ljdv;->c:[Ljek;

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    .line 5247
    :goto_1
    iget-object v2, p0, Ljdv;->c:[Ljek;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 5248
    iget-object v2, p0, Ljdv;->c:[Ljek;

    aget-object v2, v2, v0

    .line 5249
    if-eqz v2, :cond_3

    .line 5250
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 5247
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5254
    :cond_4
    iget-object v0, p0, Ljdv;->d:[Ljgk;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ljdv;->d:[Ljgk;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 5255
    :goto_2
    iget-object v0, p0, Ljdv;->d:[Ljgk;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 5256
    iget-object v0, p0, Ljdv;->d:[Ljgk;

    aget-object v0, v0, v1

    .line 5257
    if-eqz v0, :cond_5

    .line 5258
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 5255
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5262
    :cond_6
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 5263
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5267
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 5268
    iget-object v2, p0, Ljdv;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5269
    const/4 v2, 0x1

    iget-object v3, p0, Ljdv;->a:Ljava/lang/String;

    .line 5270
    invoke-static {v2, v3}, Llxz;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5272
    :cond_0
    iget-object v2, p0, Ljdv;->b:[Ljeh;

    if-eqz v2, :cond_3

    iget-object v2, p0, Ljdv;->b:[Ljeh;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 5273
    :goto_0
    iget-object v3, p0, Ljdv;->b:[Ljeh;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 5274
    iget-object v3, p0, Ljdv;->b:[Ljeh;

    aget-object v3, v3, v0

    .line 5275
    if-eqz v3, :cond_1

    .line 5276
    const/4 v4, 0x2

    .line 5277
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5281
    :cond_3
    iget-object v2, p0, Ljdv;->c:[Ljek;

    if-eqz v2, :cond_6

    iget-object v2, p0, Ljdv;->c:[Ljek;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v0

    move v0, v1

    .line 5282
    :goto_1
    iget-object v3, p0, Ljdv;->c:[Ljek;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 5283
    iget-object v3, p0, Ljdv;->c:[Ljek;

    aget-object v3, v3, v0

    .line 5284
    if-eqz v3, :cond_4

    .line 5285
    const/4 v4, 0x3

    .line 5286
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 5282
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 5290
    :cond_6
    iget-object v2, p0, Ljdv;->d:[Ljgk;

    if-eqz v2, :cond_8

    iget-object v2, p0, Ljdv;->d:[Ljgk;

    array-length v2, v2

    if-lez v2, :cond_8

    .line 5291
    :goto_2
    iget-object v2, p0, Ljdv;->d:[Ljgk;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 5292
    iget-object v2, p0, Ljdv;->d:[Ljgk;

    aget-object v2, v2, v1

    .line 5293
    if-eqz v2, :cond_7

    .line 5294
    const/4 v3, 0x4

    .line 5295
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5291
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5299
    :cond_8
    return v0
.end method
