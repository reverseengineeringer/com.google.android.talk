.class public final Lloc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lloc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llog;

.field public b:[Lloe;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1250
    iput-object v1, p0, Lloc;->a:Llog;

    .line 1251
    invoke-static {}, Lloe;->d()[Lloe;

    move-result-object v0

    iput-object v0, p0, Lloc;->b:[Lloe;

    .line 1252
    iput-object v1, p0, Lloc;->eD:Llyd;

    .line 1253
    const/4 v0, -0x1

    iput v0, p0, Lloc;->eE:I

    .line 247
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1298
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1299
    sparse-switch v0, :sswitch_data_0

    .line 1303
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1304
    :sswitch_0
    return-object p0

    .line 1309
    :sswitch_1
    iget-object v0, p0, Lloc;->a:Llog;

    if-nez v0, :cond_1

    .line 1310
    new-instance v0, Llog;

    invoke-direct {v0}, Llog;-><init>()V

    iput-object v0, p0, Lloc;->a:Llog;

    .line 1312
    :cond_1
    iget-object v0, p0, Lloc;->a:Llog;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1316
    :sswitch_2
    const/16 v0, 0x12

    .line 1317
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1318
    iget-object v0, p0, Lloc;->b:[Lloe;

    if-nez v0, :cond_3

    move v0, v1

    .line 1319
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lloe;

    .line 1321
    if-eqz v0, :cond_2

    .line 1322
    iget-object v3, p0, Lloc;->b:[Lloe;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1324
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1325
    new-instance v3, Lloe;

    invoke-direct {v3}, Lloe;-><init>()V

    aput-object v3, v2, v0

    .line 1326
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1327
    invoke-virtual {p1}, Llxy;->a()I

    .line 1324
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1318
    :cond_3
    iget-object v0, p0, Lloc;->b:[Lloe;

    array-length v0, v0

    goto :goto_1

    .line 1330
    :cond_4
    new-instance v3, Lloe;

    invoke-direct {v3}, Lloe;-><init>()V

    aput-object v3, v2, v0

    .line 1331
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1332
    iput-object v2, p0, Lloc;->b:[Lloe;

    goto :goto_0

    .line 1299
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
    .line 260
    iget-object v0, p0, Lloc;->a:Llog;

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iget-object v1, p0, Lloc;->a:Llog;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 263
    :cond_0
    iget-object v0, p0, Lloc;->b:[Lloe;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lloc;->b:[Lloe;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 264
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lloc;->b:[Lloe;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 265
    iget-object v1, p0, Lloc;->b:[Lloe;

    aget-object v1, v1, v0

    .line 266
    if-eqz v1, :cond_1

    .line 267
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 272
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 276
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 277
    iget-object v1, p0, Lloc;->a:Llog;

    if-eqz v1, :cond_0

    .line 278
    const/4 v1, 0x1

    iget-object v2, p0, Lloc;->a:Llog;

    .line 279
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_0
    iget-object v1, p0, Lloc;->b:[Lloe;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lloc;->b:[Lloe;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 282
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lloc;->b:[Lloe;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 283
    iget-object v2, p0, Lloc;->b:[Lloe;

    aget-object v2, v2, v0

    .line 284
    if-eqz v2, :cond_1

    .line 285
    const/4 v3, 0x2

    .line 286
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 282
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 290
    :cond_3
    return v0
.end method
