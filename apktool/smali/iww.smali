.class public final Liww;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liww;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Boolean;

.field public b:[Liwy;

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10248
    invoke-direct {p0}, Llyb;-><init>()V

    .line 11253
    iput-object v1, p0, Liww;->a:Ljava/lang/Boolean;

    .line 11254
    invoke-static {}, Liwy;->d()[Liwy;

    move-result-object v0

    iput-object v0, p0, Liww;->b:[Liwy;

    .line 11255
    sget-object v0, Llyo;->f:[Ljava/lang/String;

    iput-object v0, p0, Liww;->c:[Ljava/lang/String;

    .line 11256
    iput-object v1, p0, Liww;->eD:Llyd;

    .line 11257
    const/4 v0, -0x1

    iput v0, p0, Liww;->eE:I

    .line 10250
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 12324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12325
    sparse-switch v0, :sswitch_data_0

    .line 12329
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12330
    :sswitch_0
    return-object p0

    .line 12335
    :sswitch_1
    invoke-virtual {p1}, Llxy;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liww;->a:Ljava/lang/Boolean;

    goto :goto_0

    .line 12339
    :sswitch_2
    const/16 v0, 0x12

    .line 12340
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12341
    iget-object v0, p0, Liww;->b:[Liwy;

    if-nez v0, :cond_2

    move v0, v1

    .line 12342
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Liwy;

    .line 12344
    if-eqz v0, :cond_1

    .line 12345
    iget-object v3, p0, Liww;->b:[Liwy;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12347
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 12348
    new-instance v3, Liwy;

    invoke-direct {v3}, Liwy;-><init>()V

    aput-object v3, v2, v0

    .line 12349
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 12350
    invoke-virtual {p1}, Llxy;->a()I

    .line 12347
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 12341
    :cond_2
    iget-object v0, p0, Liww;->b:[Liwy;

    array-length v0, v0

    goto :goto_1

    .line 12353
    :cond_3
    new-instance v3, Liwy;

    invoke-direct {v3}, Liwy;-><init>()V

    aput-object v3, v2, v0

    .line 12354
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 12355
    iput-object v2, p0, Liww;->b:[Liwy;

    goto :goto_0

    .line 12359
    :sswitch_3
    const/16 v0, 0x1a

    .line 12360
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 12361
    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    .line 12362
    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 12363
    if-eqz v0, :cond_4

    .line 12364
    iget-object v3, p0, Liww;->c:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12366
    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    .line 12367
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 12368
    invoke-virtual {p1}, Llxy;->a()I

    .line 12366
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 12361
    :cond_5
    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    .line 12371
    :cond_6
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 12372
    iput-object v2, p0, Liww;->c:[Ljava/lang/String;

    goto/16 :goto_0

    .line 12325
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 10264
    iget-object v0, p0, Liww;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 10265
    const/4 v0, 0x1

    iget-object v2, p0, Liww;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Llxz;->a(IZ)V

    .line 10267
    :cond_0
    iget-object v0, p0, Liww;->b:[Liwy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Liww;->b:[Liwy;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 10268
    :goto_0
    iget-object v2, p0, Liww;->b:[Liwy;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 10269
    iget-object v2, p0, Liww;->b:[Liwy;

    aget-object v2, v2, v0

    .line 10270
    if-eqz v2, :cond_1

    .line 10271
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Llxz;->b(ILlyi;)V

    .line 10268
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10275
    :cond_2
    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 10276
    :goto_1
    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 10277
    iget-object v0, p0, Liww;->c:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 10278
    if-eqz v0, :cond_3

    .line 10279
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Llxz;->a(ILjava/lang/String;)V

    .line 10276
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10283
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 10284
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 10288
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 10289
    iget-object v2, p0, Liww;->a:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 10290
    const/4 v2, 0x1

    iget-object v3, p0, Liww;->a:Ljava/lang/Boolean;

    .line 10291
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11620
    invoke-static {v2}, Llxz;->f(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 10291
    add-int/2addr v0, v2

    .line 10293
    :cond_0
    iget-object v2, p0, Liww;->b:[Liwy;

    if-eqz v2, :cond_3

    iget-object v2, p0, Liww;->b:[Liwy;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 10294
    :goto_0
    iget-object v3, p0, Liww;->b:[Liwy;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 10295
    iget-object v3, p0, Liww;->b:[Liwy;

    aget-object v3, v3, v0

    .line 10296
    if-eqz v3, :cond_1

    .line 10297
    const/4 v4, 0x2

    .line 10298
    invoke-static {v4, v3}, Llxz;->d(ILlyi;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10294
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 10302
    :cond_3
    iget-object v2, p0, Liww;->c:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Liww;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    move v3, v1

    .line 10305
    :goto_1
    iget-object v4, p0, Liww;->c:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 10306
    iget-object v4, p0, Liww;->c:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 10307
    if-eqz v4, :cond_4

    .line 10308
    add-int/lit8 v3, v3, 0x1

    .line 10310
    invoke-static {v4}, Llxz;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 10305
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10313
    :cond_5
    add-int/2addr v0, v2

    .line 10314
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 10316
    :cond_6
    return v0
.end method
