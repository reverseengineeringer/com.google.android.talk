.class public final Ljou;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljou;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljov;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1358
    invoke-static {}, Ljov;->d()[Ljov;

    move-result-object v0

    iput-object v0, p0, Ljou;->a:[Ljov;

    .line 1359
    const/4 v0, 0x0

    iput-object v0, p0, Ljou;->eD:Llyd;

    .line 1360
    const/4 v0, -0x1

    iput v0, p0, Ljou;->eE:I

    .line 355
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1398
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1399
    sparse-switch v0, :sswitch_data_0

    .line 1403
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1404
    :sswitch_0
    return-object p0

    .line 1409
    :sswitch_1
    const/16 v0, 0xa

    .line 1410
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1411
    iget-object v0, p0, Ljou;->a:[Ljov;

    if-nez v0, :cond_2

    move v0, v1

    .line 1412
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljov;

    .line 1414
    if-eqz v0, :cond_1

    .line 1415
    iget-object v3, p0, Ljou;->a:[Ljov;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1417
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1418
    new-instance v3, Ljov;

    invoke-direct {v3}, Ljov;-><init>()V

    aput-object v3, v2, v0

    .line 1419
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1420
    invoke-virtual {p1}, Llxy;->a()I

    .line 1417
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1411
    :cond_2
    iget-object v0, p0, Ljou;->a:[Ljov;

    array-length v0, v0

    goto :goto_1

    .line 1423
    :cond_3
    new-instance v3, Ljov;

    invoke-direct {v3}, Ljov;-><init>()V

    aput-object v3, v2, v0

    .line 1424
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1425
    iput-object v2, p0, Ljou;->a:[Ljov;

    goto :goto_0

    .line 1399
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Ljou;->a:[Ljov;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljou;->a:[Ljov;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 368
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljou;->a:[Ljov;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Ljou;->a:[Ljov;

    aget-object v1, v1, v0

    .line 370
    if-eqz v1, :cond_0

    .line 371
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 376
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 380
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 381
    iget-object v0, p0, Ljou;->a:[Ljov;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljou;->a:[Ljov;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 382
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljou;->a:[Ljov;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 383
    iget-object v2, p0, Ljou;->a:[Ljov;

    aget-object v2, v2, v0

    .line 384
    if-eqz v2, :cond_0

    .line 385
    const/4 v3, 0x1

    .line 386
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 382
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    return v1
.end method
