.class public final Lmja;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmja;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lmks;

.field public c:[Lmjb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1310
    iput-object v1, p0, Lmja;->a:Ljava/lang/String;

    .line 1311
    iput-object v1, p0, Lmja;->b:Lmks;

    .line 1312
    invoke-static {}, Lmjb;->d()[Lmjb;

    move-result-object v0

    iput-object v0, p0, Lmja;->c:[Lmjb;

    .line 1313
    iput-object v1, p0, Lmja;->eD:Llyd;

    .line 1314
    const/4 v0, -0x1

    iput v0, p0, Lmja;->eE:I

    .line 307
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1367
    sparse-switch v0, :sswitch_data_0

    .line 1371
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    :sswitch_0
    return-object p0

    .line 1377
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmja;->a:Ljava/lang/String;

    goto :goto_0

    .line 1381
    :sswitch_2
    iget-object v0, p0, Lmja;->b:Lmks;

    if-nez v0, :cond_1

    .line 1382
    new-instance v0, Lmks;

    invoke-direct {v0}, Lmks;-><init>()V

    iput-object v0, p0, Lmja;->b:Lmks;

    .line 1384
    :cond_1
    iget-object v0, p0, Lmja;->b:Lmks;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1388
    :sswitch_3
    const/16 v0, 0x1a

    .line 1389
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1390
    iget-object v0, p0, Lmja;->c:[Lmjb;

    if-nez v0, :cond_3

    move v0, v1

    .line 1391
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmjb;

    .line 1393
    if-eqz v0, :cond_2

    .line 1394
    iget-object v3, p0, Lmja;->c:[Lmjb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1397
    new-instance v3, Lmjb;

    invoke-direct {v3}, Lmjb;-><init>()V

    aput-object v3, v2, v0

    .line 1398
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1399
    invoke-virtual {p1}, Llxy;->a()I

    .line 1396
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1390
    :cond_3
    iget-object v0, p0, Lmja;->c:[Lmjb;

    array-length v0, v0

    goto :goto_1

    .line 1402
    :cond_4
    new-instance v3, Lmjb;

    invoke-direct {v3}, Lmjb;-><init>()V

    aput-object v3, v2, v0

    .line 1403
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1404
    iput-object v2, p0, Lmja;->c:[Lmjb;

    goto :goto_0

    .line 1367
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lmja;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x1

    iget-object v1, p0, Lmja;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 324
    :cond_0
    iget-object v0, p0, Lmja;->b:Lmks;

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x2

    iget-object v1, p0, Lmja;->b:Lmks;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 327
    :cond_1
    iget-object v0, p0, Lmja;->c:[Lmjb;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmja;->c:[Lmjb;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 328
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmja;->c:[Lmjb;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 329
    iget-object v1, p0, Lmja;->c:[Lmjb;

    aget-object v1, v1, v0

    .line 330
    if-eqz v1, :cond_2

    .line 331
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 328
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    :cond_3
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 336
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 340
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 341
    iget-object v1, p0, Lmja;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 342
    const/4 v1, 0x1

    iget-object v2, p0, Lmja;->a:Ljava/lang/String;

    .line 343
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 345
    :cond_0
    iget-object v1, p0, Lmja;->b:Lmks;

    if-eqz v1, :cond_1

    .line 346
    const/4 v1, 0x2

    iget-object v2, p0, Lmja;->b:Lmks;

    .line 347
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_1
    iget-object v1, p0, Lmja;->c:[Lmjb;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmja;->c:[Lmjb;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 350
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lmja;->c:[Lmjb;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 351
    iget-object v2, p0, Lmja;->c:[Lmjb;

    aget-object v2, v2, v0

    .line 352
    if-eqz v2, :cond_2

    .line 353
    const/4 v3, 0x3

    .line 354
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 358
    :cond_4
    return v0
.end method
