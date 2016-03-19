.class public abstract Liqy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field public final b:B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final c:B

.field public final d:I

.field private final e:I

.field private final f:I


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1, p2}, Liqy;-><init>(IIII)V

    .line 193
    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 3

    .prologue
    const/16 v2, 0x3d

    const/4 v0, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-byte v2, p0, Liqy;->b:B

    .line 206
    const/4 v1, 0x3

    iput v1, p0, Liqy;->a:I

    .line 207
    const/4 v1, 0x4

    iput v1, p0, Liqy;->e:I

    .line 208
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v1, 0x1

    .line 209
    :goto_0
    if-eqz v1, :cond_0

    div-int/lit8 v0, p3, 0x4

    shl-int/lit8 v0, v0, 0x2

    :cond_0
    iput v0, p0, Liqy;->d:I

    .line 210
    iput p4, p0, Liqy;->f:I

    .line 212
    iput-byte v2, p0, Liqy;->c:B

    .line 213
    return-void

    :cond_1
    move v1, v0

    .line 208
    goto :goto_0
.end method


# virtual methods
.method a(Liqz;)I
    .locals 2

    .prologue
    .line 232
    iget-object v0, p1, Liqz;->c:[B

    if-eqz v0, :cond_0

    iget v0, p1, Liqz;->d:I

    iget v1, p1, Liqz;->e:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a([BILiqz;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 292
    iget-object v0, p3, Liqz;->c:[B

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0, p3}, Liqy;->a(Liqz;)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 294
    iget-object v2, p3, Liqz;->c:[B

    iget v3, p3, Liqz;->e:I

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    iget v1, p3, Liqz;->e:I

    add-int/2addr v1, v0

    iput v1, p3, Liqz;->e:I

    .line 296
    iget v1, p3, Liqz;->e:I

    iget v2, p3, Liqz;->d:I

    if-lt v1, v2, :cond_0

    .line 297
    const/4 v1, 0x0

    iput-object v1, p3, Liqz;->c:[B

    .line 301
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p3, Liqz;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method abstract a([BIILiqz;)V
.end method

.method protected abstract a(B)Z
.end method

.method protected a(ILiqz;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 269
    iget-object v0, p2, Liqz;->c:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Liqz;->c:[B

    array-length v0, v0

    iget v1, p2, Liqz;->d:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_2

    .line 1249
    :cond_0
    iget-object v0, p2, Liqz;->c:[B

    if-nez v0, :cond_1

    .line 1250
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p2, Liqz;->c:[B

    .line 1251
    iput v3, p2, Liqz;->d:I

    .line 1252
    iput v3, p2, Liqz;->e:I

    .line 1258
    :goto_0
    iget-object v0, p2, Liqz;->c:[B

    .line 272
    :goto_1
    return-object v0

    .line 1254
    :cond_1
    iget-object v0, p2, Liqz;->c:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 1255
    iget-object v1, p2, Liqz;->c:[B

    iget-object v2, p2, Liqz;->c:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    iput-object v0, p2, Liqz;->c:[B

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p2, Liqz;->c:[B

    goto :goto_1
.end method

.method public c([B)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-object p1

    .line 429
    :cond_1
    new-instance v0, Liqz;

    invoke-direct {v0}, Liqz;-><init>()V

    .line 430
    array-length v1, p1

    invoke-virtual {p0, p1, v2, v1, v0}, Liqy;->a([BIILiqz;)V

    .line 431
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v2, v1, v0}, Liqy;->a([BIILiqz;)V

    .line 432
    iget v1, v0, Liqz;->d:I

    iget v2, v0, Liqz;->e:I

    sub-int/2addr v1, v2

    new-array p1, v1, [B

    .line 433
    array-length v1, p1

    invoke-virtual {p0, p1, v1, v0}, Liqy;->a([BILiqz;)I

    goto :goto_0
.end method

.method protected d([B)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 496
    if-nez p1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 499
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-byte v3, p1, v1

    .line 500
    iget-byte v4, p0, Liqy;->c:B

    if-eq v4, v3, :cond_2

    invoke-virtual {p0, v3}, Liqy;->a(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 501
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 499
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public e([B)J
    .locals 6

    .prologue
    .line 518
    array-length v0, p1

    iget v1, p0, Liqy;->a:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Liqy;->a:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Liqy;->e:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 519
    iget v2, p0, Liqy;->d:I

    if-lez v2, :cond_0

    .line 521
    iget v2, p0, Liqy;->d:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Liqy;->d:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Liqy;->f:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 523
    :cond_0
    return-wide v0
.end method
