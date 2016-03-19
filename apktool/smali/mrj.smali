.class public final Lmrj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmrj;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lmrk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 254
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1259
    invoke-static {}, Lmrk;->d()[Lmrk;

    move-result-object v0

    iput-object v0, p0, Lmrj;->a:[Lmrk;

    .line 1260
    const/4 v0, 0x0

    iput-object v0, p0, Lmrj;->eD:Llyd;

    .line 1261
    const/4 v0, -0x1

    iput v0, p0, Lmrj;->eE:I

    .line 256
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1299
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1300
    sparse-switch v0, :sswitch_data_0

    .line 1304
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    :sswitch_0
    return-object p0

    .line 1310
    :sswitch_1
    const/16 v0, 0xa

    .line 1311
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1312
    iget-object v0, p0, Lmrj;->a:[Lmrk;

    if-nez v0, :cond_2

    move v0, v1

    .line 1313
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lmrk;

    .line 1315
    if-eqz v0, :cond_1

    .line 1316
    iget-object v3, p0, Lmrj;->a:[Lmrk;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1318
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1319
    new-instance v3, Lmrk;

    invoke-direct {v3}, Lmrk;-><init>()V

    aput-object v3, v2, v0

    .line 1320
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1321
    invoke-virtual {p1}, Llxy;->a()I

    .line 1318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1312
    :cond_2
    iget-object v0, p0, Lmrj;->a:[Lmrk;

    array-length v0, v0

    goto :goto_1

    .line 1324
    :cond_3
    new-instance v3, Lmrk;

    invoke-direct {v3}, Lmrk;-><init>()V

    aput-object v3, v2, v0

    .line 1325
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1326
    iput-object v2, p0, Lmrj;->a:[Lmrk;

    goto :goto_0

    .line 1300
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lmrj;->a:[Lmrk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmrj;->a:[Lmrk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 269
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmrj;->a:[Lmrk;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 270
    iget-object v1, p0, Lmrj;->a:[Lmrk;

    aget-object v1, v1, v0

    .line 271
    if-eqz v1, :cond_0

    .line 272
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 277
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 281
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 282
    iget-object v0, p0, Lmrj;->a:[Lmrk;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmrj;->a:[Lmrk;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 283
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmrj;->a:[Lmrk;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 284
    iget-object v2, p0, Lmrj;->a:[Lmrk;

    aget-object v2, v2, v0

    .line 285
    if-eqz v2, :cond_0

    .line 286
    const/4 v3, 0x1

    .line 287
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    return v1
.end method
