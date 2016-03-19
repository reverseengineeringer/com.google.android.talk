.class public final Ljei;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljei;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[Ljej;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9313
    invoke-direct {p0}, Llyb;-><init>()V

    .line 10318
    iput-object v1, p0, Ljei;->a:Ljava/lang/String;

    .line 10319
    invoke-static {}, Ljej;->d()[Ljej;

    move-result-object v0

    iput-object v0, p0, Ljei;->b:[Ljej;

    .line 10320
    iput-object v1, p0, Ljei;->eD:Llyd;

    .line 10321
    const/4 v0, -0x1

    iput v0, p0, Ljei;->eE:I

    .line 9315
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10366
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 10367
    sparse-switch v0, :sswitch_data_0

    .line 10371
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10372
    :sswitch_0
    return-object p0

    .line 10377
    :sswitch_1
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljei;->a:Ljava/lang/String;

    goto :goto_0

    .line 10381
    :sswitch_2
    const/16 v0, 0x12

    .line 10382
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 10383
    iget-object v0, p0, Ljei;->b:[Ljej;

    if-nez v0, :cond_2

    move v0, v1

    .line 10384
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljej;

    .line 10386
    if-eqz v0, :cond_1

    .line 10387
    iget-object v3, p0, Ljei;->b:[Ljej;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10389
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 10390
    new-instance v3, Ljej;

    invoke-direct {v3}, Ljej;-><init>()V

    aput-object v3, v2, v0

    .line 10391
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 10392
    invoke-virtual {p1}, Llxy;->a()I

    .line 10389
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10383
    :cond_2
    iget-object v0, p0, Ljei;->b:[Ljej;

    array-length v0, v0

    goto :goto_1

    .line 10395
    :cond_3
    new-instance v3, Ljej;

    invoke-direct {v3}, Ljej;-><init>()V

    aput-object v3, v2, v0

    .line 10396
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 10397
    iput-object v2, p0, Ljei;->b:[Ljej;

    goto :goto_0

    .line 10367
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
    .line 9328
    iget-object v0, p0, Ljei;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9329
    const/4 v0, 0x1

    iget-object v1, p0, Ljei;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 9331
    :cond_0
    iget-object v0, p0, Ljei;->b:[Ljej;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljei;->b:[Ljej;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 9332
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljei;->b:[Ljej;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 9333
    iget-object v1, p0, Ljei;->b:[Ljej;

    aget-object v1, v1, v0

    .line 9334
    if-eqz v1, :cond_1

    .line 9335
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 9332
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9339
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 9340
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 9344
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 9345
    iget-object v1, p0, Ljei;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9346
    const/4 v1, 0x1

    iget-object v2, p0, Ljei;->a:Ljava/lang/String;

    .line 9347
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9349
    :cond_0
    iget-object v1, p0, Ljei;->b:[Ljej;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljei;->b:[Ljej;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 9350
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljei;->b:[Ljej;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 9351
    iget-object v2, p0, Ljei;->b:[Ljej;

    aget-object v2, v2, v0

    .line 9352
    if-eqz v2, :cond_1

    .line 9353
    const/4 v3, 0x2

    .line 9354
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 9350
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 9358
    :cond_3
    return v0
.end method
