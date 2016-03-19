.class public final Ljak;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljak;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljcs;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1283
    invoke-direct {p0}, Llyb;-><init>()V

    .line 2288
    iput-object v1, p0, Ljak;->a:Ljbn;

    .line 2289
    invoke-static {}, Ljcs;->d()[Ljcs;

    move-result-object v0

    iput-object v0, p0, Ljak;->b:[Ljcs;

    .line 2290
    iput-object v1, p0, Ljak;->eD:Llyd;

    .line 2291
    const/4 v0, -0x1

    iput v0, p0, Ljak;->eE:I

    .line 1285
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2336
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 2337
    sparse-switch v0, :sswitch_data_0

    .line 2341
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    :sswitch_0
    return-object p0

    .line 2347
    :sswitch_1
    iget-object v0, p0, Ljak;->a:Ljbn;

    if-nez v0, :cond_1

    .line 2348
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljak;->a:Ljbn;

    .line 2350
    :cond_1
    iget-object v0, p0, Ljak;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 2354
    :sswitch_2
    const/16 v0, 0x12

    .line 2355
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 2356
    iget-object v0, p0, Ljak;->b:[Ljcs;

    if-nez v0, :cond_3

    move v0, v1

    .line 2357
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljcs;

    .line 2359
    if-eqz v0, :cond_2

    .line 2360
    iget-object v3, p0, Ljak;->b:[Ljcs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2362
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 2363
    new-instance v3, Ljcs;

    invoke-direct {v3}, Ljcs;-><init>()V

    aput-object v3, v2, v0

    .line 2364
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 2365
    invoke-virtual {p1}, Llxy;->a()I

    .line 2362
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2356
    :cond_3
    iget-object v0, p0, Ljak;->b:[Ljcs;

    array-length v0, v0

    goto :goto_1

    .line 2368
    :cond_4
    new-instance v3, Ljcs;

    invoke-direct {v3}, Ljcs;-><init>()V

    aput-object v3, v2, v0

    .line 2369
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 2370
    iput-object v2, p0, Ljak;->b:[Ljcs;

    goto :goto_0

    .line 2337
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 1298
    iget-object v0, p0, Ljak;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 1299
    const/4 v0, 0x1

    iget-object v1, p0, Ljak;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 1301
    :cond_0
    iget-object v0, p0, Ljak;->b:[Ljcs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljak;->b:[Ljcs;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 1302
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljak;->b:[Ljcs;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1303
    iget-object v1, p0, Ljak;->b:[Ljcs;

    aget-object v1, v1, v0

    .line 1304
    if-eqz v1, :cond_1

    .line 1305
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 1302
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1309
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 1310
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 1314
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 1315
    iget-object v1, p0, Ljak;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 1316
    const/4 v1, 0x1

    iget-object v2, p0, Ljak;->a:Ljbn;

    .line 1317
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1319
    :cond_0
    iget-object v1, p0, Ljak;->b:[Ljcs;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljak;->b:[Ljcs;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 1320
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljak;->b:[Ljcs;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1321
    iget-object v2, p0, Ljak;->b:[Ljcs;

    aget-object v2, v2, v0

    .line 1322
    if-eqz v2, :cond_1

    .line 1323
    const/4 v3, 0x2

    .line 1324
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 1320
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1328
    :cond_3
    return v0
.end method
