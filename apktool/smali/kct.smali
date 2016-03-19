.class public final Lkct;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkct;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lkcs;

.field public b:[Ljxg;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25283
    invoke-direct {p0}, Llyb;-><init>()V

    .line 26288
    invoke-static {}, Lkcs;->d()[Lkcs;

    move-result-object v0

    iput-object v0, p0, Lkct;->a:[Lkcs;

    .line 26289
    invoke-static {}, Ljxg;->d()[Ljxg;

    move-result-object v0

    iput-object v0, p0, Lkct;->b:[Ljxg;

    .line 26290
    iput-object v1, p0, Lkct;->c:Ljava/lang/Integer;

    .line 26291
    iput-object v1, p0, Lkct;->eD:Llyd;

    .line 26292
    const/4 v0, -0x1

    iput v0, p0, Lkct;->eE:I

    .line 25285
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 26354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 26355
    sparse-switch v0, :sswitch_data_0

    .line 26359
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26360
    :sswitch_0
    return-object p0

    .line 26365
    :sswitch_1
    const/16 v0, 0xa

    .line 26366
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 26367
    iget-object v0, p0, Lkct;->a:[Lkcs;

    if-nez v0, :cond_2

    move v0, v1

    .line 26368
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lkcs;

    .line 26370
    if-eqz v0, :cond_1

    .line 26371
    iget-object v3, p0, Lkct;->a:[Lkcs;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26373
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 26374
    new-instance v3, Lkcs;

    invoke-direct {v3}, Lkcs;-><init>()V

    aput-object v3, v2, v0

    .line 26375
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 26376
    invoke-virtual {p1}, Llxy;->a()I

    .line 26373
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 26367
    :cond_2
    iget-object v0, p0, Lkct;->a:[Lkcs;

    array-length v0, v0

    goto :goto_1

    .line 26379
    :cond_3
    new-instance v3, Lkcs;

    invoke-direct {v3}, Lkcs;-><init>()V

    aput-object v3, v2, v0

    .line 26380
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 26381
    iput-object v2, p0, Lkct;->a:[Lkcs;

    goto :goto_0

    .line 26385
    :sswitch_2
    const/16 v0, 0x12

    .line 26386
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 26387
    iget-object v0, p0, Lkct;->b:[Ljxg;

    if-nez v0, :cond_5

    move v0, v1

    .line 26388
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljxg;

    .line 26390
    if-eqz v0, :cond_4

    .line 26391
    iget-object v3, p0, Lkct;->b:[Ljxg;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26393
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 26394
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 26395
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 26396
    invoke-virtual {p1}, Llxy;->a()I

    .line 26393
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 26387
    :cond_5
    iget-object v0, p0, Lkct;->b:[Ljxg;

    array-length v0, v0

    goto :goto_3

    .line 26399
    :cond_6
    new-instance v3, Ljxg;

    invoke-direct {v3}, Ljxg;-><init>()V

    aput-object v3, v2, v0

    .line 26400
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 26401
    iput-object v2, p0, Lkct;->b:[Ljxg;

    goto/16 :goto_0

    .line 26405
    :sswitch_3
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 26406
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 26410
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lkct;->c:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 26355
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    .line 26406
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 25299
    iget-object v0, p0, Lkct;->a:[Lkcs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkct;->a:[Lkcs;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 25300
    :goto_0
    iget-object v2, p0, Lkct;->a:[Lkcs;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 25301
    iget-object v2, p0, Lkct;->a:[Lkcs;

    aget-object v2, v2, v0

    .line 25302
    if-eqz v2, :cond_0

    .line 25303
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 25300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25307
    :cond_1
    iget-object v0, p0, Lkct;->b:[Ljxg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkct;->b:[Ljxg;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 25308
    :goto_1
    iget-object v0, p0, Lkct;->b:[Ljxg;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 25309
    iget-object v0, p0, Lkct;->b:[Ljxg;

    aget-object v0, v0, v1

    .line 25310
    if-eqz v0, :cond_2

    .line 25311
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Llxz;->b(ILlyi;)V

    .line 25308
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25315
    :cond_3
    iget-object v0, p0, Lkct;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 25316
    const/4 v0, 0x3

    iget-object v1, p0, Lkct;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 25318
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 25319
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 25323
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 25324
    iget-object v2, p0, Lkct;->a:[Lkcs;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lkct;->a:[Lkcs;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 25325
    :goto_0
    iget-object v3, p0, Lkct;->a:[Lkcs;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 25326
    iget-object v3, p0, Lkct;->a:[Lkcs;

    aget-object v3, v3, v0

    .line 25327
    if-eqz v3, :cond_0

    .line 25328
    const/4 v4, 0x1

    .line 25329
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 25325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 25333
    :cond_2
    iget-object v2, p0, Lkct;->b:[Ljxg;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lkct;->b:[Ljxg;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 25334
    :goto_1
    iget-object v2, p0, Lkct;->b:[Ljxg;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 25335
    iget-object v2, p0, Lkct;->b:[Ljxg;

    aget-object v2, v2, v1

    .line 25336
    if-eqz v2, :cond_3

    .line 25337
    const/4 v3, 0x2

    .line 25338
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v0, v2

    .line 25334
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 25342
    :cond_4
    iget-object v1, p0, Lkct;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 25343
    const/4 v1, 0x3

    iget-object v2, p0, Lkct;->c:Ljava/lang/Integer;

    .line 25344
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 25346
    :cond_5
    return v0
.end method
