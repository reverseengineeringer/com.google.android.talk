.class public final Lkbi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkbi;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile h:[Lkbi;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Llcf;

.field public e:Ljava/lang/String;

.field public f:[Lkbj;

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2274
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3279
    iput-object v1, p0, Lkbi;->a:Ljava/lang/String;

    .line 3280
    iput-object v1, p0, Lkbi;->b:Ljava/lang/String;

    .line 3281
    iput-object v1, p0, Lkbi;->c:Ljava/lang/String;

    .line 3282
    iput-object v1, p0, Lkbi;->d:Llcf;

    .line 3283
    iput-object v1, p0, Lkbi;->e:Ljava/lang/String;

    .line 3284
    invoke-static {}, Lkbj;->d()[Lkbj;

    move-result-object v0

    iput-object v0, p0, Lkbi;->f:[Lkbj;

    .line 3285
    iput-object v1, p0, Lkbi;->g:[B

    .line 3286
    iput-object v1, p0, Lkbi;->eD:Llyd;

    .line 3287
    const/4 v0, -0x1

    iput v0, p0, Lkbi;->eE:I

    .line 2276
    return-void
.end method

.method public static d()[Lkbi;
    .locals 2

    .prologue
    .line 2240
    sget-object v0, Lkbi;->h:[Lkbi;

    if-nez v0, :cond_1

    .line 2241
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2243
    :try_start_0
    sget-object v0, Lkbi;->h:[Lkbi;

    if-nez v0, :cond_0

    .line 2244
    const/4 v0, 0x0

    new-array v0, v0, [Lkbi;

    sput-object v0, Lkbi;->h:[Lkbi;

    .line 2246
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    :cond_1
    sget-object v0, Lkbi;->h:[Lkbi;

    return-object v0

    .line 2246
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

    .line 3367
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3368
    sparse-switch v0, :sswitch_data_0

    .line 3372
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3373
    :sswitch_0
    return-object p0

    .line 3378
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbi;->a:Ljava/lang/String;

    goto :goto_0

    .line 3382
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbi;->b:Ljava/lang/String;

    goto :goto_0

    .line 3386
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbi;->c:Ljava/lang/String;

    goto :goto_0

    .line 3390
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkbi;->e:Ljava/lang/String;

    goto :goto_0

    .line 3394
    :sswitch_5
    invoke-virtual {p1}, Llxy;->k()[B

    move-result-object v0

    iput-object v0, p0, Lkbi;->g:[B

    goto :goto_0

    .line 3398
    :sswitch_6
    const/16 v0, 0x32

    .line 3399
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3400
    iget-object v0, p0, Lkbi;->f:[Lkbj;

    if-nez v0, :cond_2

    move v0, v1

    .line 3401
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkbj;

    .line 3403
    if-eqz v0, :cond_1

    .line 3404
    iget-object v3, p0, Lkbi;->f:[Lkbj;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3406
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3407
    new-instance v3, Lkbj;

    invoke-direct {v3}, Lkbj;-><init>()V

    aput-object v3, v2, v0

    .line 3408
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3409
    invoke-virtual {p1}, Llxy;->a()I

    .line 3406
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3400
    :cond_2
    iget-object v0, p0, Lkbi;->f:[Lkbj;

    array-length v0, v0

    goto :goto_1

    .line 3412
    :cond_3
    new-instance v3, Lkbj;

    invoke-direct {v3}, Lkbj;-><init>()V

    aput-object v3, v2, v0

    .line 3413
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3414
    iput-object v2, p0, Lkbi;->f:[Lkbj;

    goto :goto_0

    .line 3418
    :sswitch_7
    iget-object v0, p0, Lkbi;->d:Llcf;

    if-nez v0, :cond_4

    .line 3419
    new-instance v0, Llcf;

    invoke-direct {v0}, Llcf;-><init>()V

    iput-object v0, p0, Lkbi;->d:Llcf;

    .line 3421
    :cond_4
    iget-object v0, p0, Lkbi;->d:Llcf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3368
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2294
    iget-object v0, p0, Lkbi;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2295
    const/4 v0, 0x1

    iget-object v1, p0, Lkbi;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2297
    :cond_0
    iget-object v0, p0, Lkbi;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2298
    const/4 v0, 0x2

    iget-object v1, p0, Lkbi;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2300
    :cond_1
    iget-object v0, p0, Lkbi;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2301
    const/4 v0, 0x3

    iget-object v1, p0, Lkbi;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2303
    :cond_2
    iget-object v0, p0, Lkbi;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2304
    const/4 v0, 0x4

    iget-object v1, p0, Lkbi;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2306
    :cond_3
    iget-object v0, p0, Lkbi;->g:[B

    if-eqz v0, :cond_4

    .line 2307
    const/4 v0, 0x5

    iget-object v1, p0, Lkbi;->g:[B

    invoke-virtual {p1, v0, v1}, Llxz;->a(I[B)V

    .line 2309
    :cond_4
    iget-object v0, p0, Lkbi;->f:[Lkbj;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lkbi;->f:[Lkbj;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 2310
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkbi;->f:[Lkbj;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 2311
    iget-object v1, p0, Lkbi;->f:[Lkbj;

    aget-object v1, v1, v0

    .line 2312
    if-eqz v1, :cond_5

    .line 2313
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2310
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2317
    :cond_6
    iget-object v0, p0, Lkbi;->d:Llcf;

    if-eqz v0, :cond_7

    .line 2318
    const/4 v0, 0x7

    iget-object v1, p0, Lkbi;->d:Llcf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2320
    :cond_7
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2321
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2325
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2326
    iget-object v1, p0, Lkbi;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2327
    const/4 v1, 0x1

    iget-object v2, p0, Lkbi;->a:Ljava/lang/String;

    .line 2328
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2330
    :cond_0
    iget-object v1, p0, Lkbi;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2331
    const/4 v1, 0x2

    iget-object v2, p0, Lkbi;->b:Ljava/lang/String;

    .line 2332
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2334
    :cond_1
    iget-object v1, p0, Lkbi;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2335
    const/4 v1, 0x3

    iget-object v2, p0, Lkbi;->c:Ljava/lang/String;

    .line 2336
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2338
    :cond_2
    iget-object v1, p0, Lkbi;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2339
    const/4 v1, 0x4

    iget-object v2, p0, Lkbi;->e:Ljava/lang/String;

    .line 2340
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2342
    :cond_3
    iget-object v1, p0, Lkbi;->g:[B

    if-eqz v1, :cond_4

    .line 2343
    const/4 v1, 0x5

    iget-object v2, p0, Lkbi;->g:[B

    .line 2344
    invoke-static {v1, v2}, Llxz;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 2346
    :cond_4
    iget-object v1, p0, Lkbi;->f:[Lkbj;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lkbi;->f:[Lkbj;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 2347
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkbi;->f:[Lkbj;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    .line 2348
    iget-object v2, p0, Lkbi;->f:[Lkbj;

    aget-object v2, v2, v0

    .line 2349
    if-eqz v2, :cond_5

    .line 2350
    const/4 v3, 0x6

    .line 2351
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2347
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    .line 2355
    :cond_7
    iget-object v1, p0, Lkbi;->d:Llcf;

    if-eqz v1, :cond_8

    .line 2356
    const/4 v1, 0x7

    iget-object v2, p0, Lkbi;->d:Llcf;

    .line 2357
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2359
    :cond_8
    return v0
.end method
