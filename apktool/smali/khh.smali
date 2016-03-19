.class public final Lkhh;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkhh;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkhf;

.field public b:Ljava/lang/String;

.field public c:Lkii;

.field public d:[Lkhf;

.field public responseHeader:Lkdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2271
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3276
    iput-object v1, p0, Lkhh;->responseHeader:Lkdp;

    .line 3277
    iput-object v1, p0, Lkhh;->a:Lkhf;

    .line 3278
    iput-object v1, p0, Lkhh;->b:Ljava/lang/String;

    .line 3279
    iput-object v1, p0, Lkhh;->c:Lkii;

    .line 3280
    invoke-static {}, Lkhf;->d()[Lkhf;

    move-result-object v0

    iput-object v0, p0, Lkhh;->d:[Lkhf;

    .line 3281
    iput-object v1, p0, Lkhh;->eD:Llyd;

    .line 3282
    const/4 v0, -0x1

    iput v0, p0, Lkhh;->eE:I

    .line 2273
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3348
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3349
    sparse-switch v0, :sswitch_data_0

    .line 3353
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3354
    :sswitch_0
    return-object p0

    .line 3359
    :sswitch_1
    iget-object v0, p0, Lkhh;->responseHeader:Lkdp;

    if-nez v0, :cond_1

    .line 3360
    new-instance v0, Lkdp;

    invoke-direct {v0}, Lkdp;-><init>()V

    iput-object v0, p0, Lkhh;->responseHeader:Lkdp;

    .line 3362
    :cond_1
    iget-object v0, p0, Lkhh;->responseHeader:Lkdp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3366
    :sswitch_2
    iget-object v0, p0, Lkhh;->a:Lkhf;

    if-nez v0, :cond_2

    .line 3367
    new-instance v0, Lkhf;

    invoke-direct {v0}, Lkhf;-><init>()V

    iput-object v0, p0, Lkhh;->a:Lkhf;

    .line 3369
    :cond_2
    iget-object v0, p0, Lkhh;->a:Lkhf;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3373
    :sswitch_3
    iget-object v0, p0, Lkhh;->c:Lkii;

    if-nez v0, :cond_3

    .line 3374
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkhh;->c:Lkii;

    .line 3376
    :cond_3
    iget-object v0, p0, Lkhh;->c:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3380
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkhh;->b:Ljava/lang/String;

    goto :goto_0

    .line 3384
    :sswitch_5
    const/16 v0, 0x2a

    .line 3385
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3386
    iget-object v0, p0, Lkhh;->d:[Lkhf;

    if-nez v0, :cond_5

    move v0, v1

    .line 3387
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkhf;

    .line 3389
    if-eqz v0, :cond_4

    .line 3390
    iget-object v3, p0, Lkhh;->d:[Lkhf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3392
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3393
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 3394
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3395
    invoke-virtual {p1}, Llxy;->a()I

    .line 3392
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3386
    :cond_5
    iget-object v0, p0, Lkhh;->d:[Lkhf;

    array-length v0, v0

    goto :goto_1

    .line 3398
    :cond_6
    new-instance v3, Lkhf;

    invoke-direct {v3}, Lkhf;-><init>()V

    aput-object v3, v2, v0

    .line 3399
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3400
    iput-object v2, p0, Lkhh;->d:[Lkhf;

    goto/16 :goto_0

    .line 3349
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2289
    iget-object v0, p0, Lkhh;->responseHeader:Lkdp;

    if-eqz v0, :cond_0

    .line 2290
    const/4 v0, 0x1

    iget-object v1, p0, Lkhh;->responseHeader:Lkdp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2292
    :cond_0
    iget-object v0, p0, Lkhh;->a:Lkhf;

    if-eqz v0, :cond_1

    .line 2293
    const/4 v0, 0x2

    iget-object v1, p0, Lkhh;->a:Lkhf;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2295
    :cond_1
    iget-object v0, p0, Lkhh;->c:Lkii;

    if-eqz v0, :cond_2

    .line 2296
    const/4 v0, 0x3

    iget-object v1, p0, Lkhh;->c:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2298
    :cond_2
    iget-object v0, p0, Lkhh;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2299
    const/4 v0, 0x4

    iget-object v1, p0, Lkhh;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 2301
    :cond_3
    iget-object v0, p0, Lkhh;->d:[Lkhf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lkhh;->d:[Lkhf;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 2302
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkhh;->d:[Lkhf;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 2303
    iget-object v1, p0, Lkhh;->d:[Lkhf;

    aget-object v1, v1, v0

    .line 2304
    if-eqz v1, :cond_4

    .line 2305
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2302
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2309
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2310
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2314
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2315
    iget-object v1, p0, Lkhh;->responseHeader:Lkdp;

    if-eqz v1, :cond_0

    .line 2316
    const/4 v1, 0x1

    iget-object v2, p0, Lkhh;->responseHeader:Lkdp;

    .line 2317
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2319
    :cond_0
    iget-object v1, p0, Lkhh;->a:Lkhf;

    if-eqz v1, :cond_1

    .line 2320
    const/4 v1, 0x2

    iget-object v2, p0, Lkhh;->a:Lkhf;

    .line 2321
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2323
    :cond_1
    iget-object v1, p0, Lkhh;->c:Lkii;

    if-eqz v1, :cond_2

    .line 2324
    const/4 v1, 0x3

    iget-object v2, p0, Lkhh;->c:Lkii;

    .line 2325
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2327
    :cond_2
    iget-object v1, p0, Lkhh;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2328
    const/4 v1, 0x4

    iget-object v2, p0, Lkhh;->b:Ljava/lang/String;

    .line 2329
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2331
    :cond_3
    iget-object v1, p0, Lkhh;->d:[Lkhf;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lkhh;->d:[Lkhf;

    array-length v1, v1

    if-lez v1, :cond_6

    .line 2332
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkhh;->d:[Lkhf;

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 2333
    iget-object v2, p0, Lkhh;->d:[Lkhf;

    aget-object v2, v2, v0

    .line 2334
    if-eqz v2, :cond_4

    .line 2335
    const/4 v3, 0x5

    .line 2336
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2332
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2340
    :cond_6
    return v0
.end method
