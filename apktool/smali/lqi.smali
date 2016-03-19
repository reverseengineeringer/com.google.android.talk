.class public final Llqi;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llqi;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Llqf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1301
    invoke-static {}, Llqf;->d()[Llqf;

    move-result-object v0

    iput-object v0, p0, Llqi;->a:[Llqf;

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Llqi;->eD:Llyd;

    .line 1303
    const/4 v0, -0x1

    iput v0, p0, Llqi;->eE:I

    .line 298
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1341
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1342
    sparse-switch v0, :sswitch_data_0

    .line 1346
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    :sswitch_0
    return-object p0

    .line 1352
    :sswitch_1
    const/16 v0, 0x12

    .line 1353
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1354
    iget-object v0, p0, Llqi;->a:[Llqf;

    if-nez v0, :cond_2

    move v0, v1

    .line 1355
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llqf;

    .line 1357
    if-eqz v0, :cond_1

    .line 1358
    iget-object v3, p0, Llqi;->a:[Llqf;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1360
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1361
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1362
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1363
    invoke-virtual {p1}, Llxy;->a()I

    .line 1360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1354
    :cond_2
    iget-object v0, p0, Llqi;->a:[Llqf;

    array-length v0, v0

    goto :goto_1

    .line 1366
    :cond_3
    new-instance v3, Llqf;

    invoke-direct {v3}, Llqf;-><init>()V

    aput-object v3, v2, v0

    .line 1367
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1368
    iput-object v2, p0, Llqi;->a:[Llqf;

    goto :goto_0

    .line 1342
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 310
    iget-object v0, p0, Llqi;->a:[Llqf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llqi;->a:[Llqf;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 311
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llqi;->a:[Llqf;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 312
    iget-object v1, p0, Llqi;->a:[Llqf;

    aget-object v1, v1, v0

    .line 313
    if-eqz v1, :cond_0

    .line 314
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 319
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 323
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 324
    iget-object v0, p0, Llqi;->a:[Llqf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Llqi;->a:[Llqf;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 325
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llqi;->a:[Llqf;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 326
    iget-object v2, p0, Llqi;->a:[Llqf;

    aget-object v2, v2, v0

    .line 327
    if-eqz v2, :cond_0

    .line 328
    const/4 v3, 0x2

    .line 329
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return v1
.end method
