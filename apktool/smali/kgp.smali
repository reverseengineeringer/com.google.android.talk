.class public final Lkgp;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkgp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkgd;

.field public b:Lkii;

.field public c:[Lkgd;

.field public requestHeader:Lkdo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2268
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3273
    iput-object v1, p0, Lkgp;->requestHeader:Lkdo;

    .line 3274
    iput-object v1, p0, Lkgp;->a:Lkgd;

    .line 3275
    iput-object v1, p0, Lkgp;->b:Lkii;

    .line 3276
    invoke-static {}, Lkgd;->d()[Lkgd;

    move-result-object v0

    iput-object v0, p0, Lkgp;->c:[Lkgd;

    .line 3277
    iput-object v1, p0, Lkgp;->eD:Llyd;

    .line 3278
    const/4 v0, -0x1

    iput v0, p0, Lkgp;->eE:I

    .line 2270
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3337
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3338
    sparse-switch v0, :sswitch_data_0

    .line 3342
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3343
    :sswitch_0
    return-object p0

    .line 3348
    :sswitch_1
    iget-object v0, p0, Lkgp;->requestHeader:Lkdo;

    if-nez v0, :cond_1

    .line 3349
    new-instance v0, Lkdo;

    invoke-direct {v0}, Lkdo;-><init>()V

    iput-object v0, p0, Lkgp;->requestHeader:Lkdo;

    .line 3351
    :cond_1
    iget-object v0, p0, Lkgp;->requestHeader:Lkdo;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3355
    :sswitch_2
    iget-object v0, p0, Lkgp;->a:Lkgd;

    if-nez v0, :cond_2

    .line 3356
    new-instance v0, Lkgd;

    invoke-direct {v0}, Lkgd;-><init>()V

    iput-object v0, p0, Lkgp;->a:Lkgd;

    .line 3358
    :cond_2
    iget-object v0, p0, Lkgp;->a:Lkgd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3362
    :sswitch_3
    iget-object v0, p0, Lkgp;->b:Lkii;

    if-nez v0, :cond_3

    .line 3363
    new-instance v0, Lkii;

    invoke-direct {v0}, Lkii;-><init>()V

    iput-object v0, p0, Lkgp;->b:Lkii;

    .line 3365
    :cond_3
    iget-object v0, p0, Lkgp;->b:Lkii;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3369
    :sswitch_4
    const/16 v0, 0x22

    .line 3370
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3371
    iget-object v0, p0, Lkgp;->c:[Lkgd;

    if-nez v0, :cond_5

    move v0, v1

    .line 3372
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkgd;

    .line 3374
    if-eqz v0, :cond_4

    .line 3375
    iget-object v3, p0, Lkgp;->c:[Lkgd;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3377
    :cond_4
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 3378
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3379
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3380
    invoke-virtual {p1}, Llxy;->a()I

    .line 3377
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3371
    :cond_5
    iget-object v0, p0, Lkgp;->c:[Lkgd;

    array-length v0, v0

    goto :goto_1

    .line 3383
    :cond_6
    new-instance v3, Lkgd;

    invoke-direct {v3}, Lkgd;-><init>()V

    aput-object v3, v2, v0

    .line 3384
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3385
    iput-object v2, p0, Lkgp;->c:[Lkgd;

    goto :goto_0

    .line 3338
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
    .locals 3

    .prologue
    .line 2285
    iget-object v0, p0, Lkgp;->requestHeader:Lkdo;

    if-eqz v0, :cond_0

    .line 2286
    const/4 v0, 0x1

    iget-object v1, p0, Lkgp;->requestHeader:Lkdo;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2288
    :cond_0
    iget-object v0, p0, Lkgp;->a:Lkgd;

    if-eqz v0, :cond_1

    .line 2289
    const/4 v0, 0x2

    iget-object v1, p0, Lkgp;->a:Lkgd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2291
    :cond_1
    iget-object v0, p0, Lkgp;->b:Lkii;

    if-eqz v0, :cond_2

    .line 2292
    const/4 v0, 0x3

    iget-object v1, p0, Lkgp;->b:Lkii;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2294
    :cond_2
    iget-object v0, p0, Lkgp;->c:[Lkgd;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lkgp;->c:[Lkgd;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 2295
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lkgp;->c:[Lkgd;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 2296
    iget-object v1, p0, Lkgp;->c:[Lkgd;

    aget-object v1, v1, v0

    .line 2297
    if-eqz v1, :cond_3

    .line 2298
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2295
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2302
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2303
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2307
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2308
    iget-object v1, p0, Lkgp;->requestHeader:Lkdo;

    if-eqz v1, :cond_0

    .line 2309
    const/4 v1, 0x1

    iget-object v2, p0, Lkgp;->requestHeader:Lkdo;

    .line 2310
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2312
    :cond_0
    iget-object v1, p0, Lkgp;->a:Lkgd;

    if-eqz v1, :cond_1

    .line 2313
    const/4 v1, 0x2

    iget-object v2, p0, Lkgp;->a:Lkgd;

    .line 2314
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2316
    :cond_1
    iget-object v1, p0, Lkgp;->b:Lkii;

    if-eqz v1, :cond_2

    .line 2317
    const/4 v1, 0x3

    iget-object v2, p0, Lkgp;->b:Lkii;

    .line 2318
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2320
    :cond_2
    iget-object v1, p0, Lkgp;->c:[Lkgd;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lkgp;->c:[Lkgd;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 2321
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lkgp;->c:[Lkgd;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 2322
    iget-object v2, p0, Lkgp;->c:[Lkgd;

    aget-object v2, v2, v0

    .line 2323
    if-eqz v2, :cond_3

    .line 2324
    const/4 v3, 0x4

    .line 2325
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2321
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 2329
    :cond_5
    return v0
.end method
