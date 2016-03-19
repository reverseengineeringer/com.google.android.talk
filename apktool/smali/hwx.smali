.class final Lhwx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:[Lhxi;

.field private e:[B

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private final g:Ljava/nio/ByteOrder;

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lhwx;->a:[B

    .line 40
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lhwx;->b:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lhwx;->c:[B

    return-void

    .line 37
    :array_0
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 40
    :array_1
    .array-data 1
        0x4at
        0x49t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 43
    :array_2
    .array-data 1
        0x55t
        0x4et
        0x49t
        0x43t
        0x4ft
        0x44t
        0x45t
        0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Lhxi;

    iput-object v0, p0, Lhwx;->d:[Lhxi;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lhwx;->g:Ljava/nio/ByteOrder;

    .line 55
    return-void
.end method


# virtual methods
.method protected a(Lhxh;)Lhxh;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 194
    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Lhxh;->a()I

    move-result v1

    .line 1206
    if-eqz p1, :cond_1

    invoke-static {v1}, Lhxh;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2172
    iget-object v0, p0, Lhwx;->d:[Lhxi;

    aget-object v0, v0, v1

    .line 2173
    if-nez v0, :cond_0

    .line 2174
    new-instance v0, Lhxi;

    invoke-direct {v0, v1}, Lhxi;-><init>(I)V

    .line 2175
    iget-object v2, p0, Lhwx;->d:[Lhxi;

    aput-object v0, v2, v1

    .line 1208
    :cond_0
    invoke-virtual {v0, p1}, Lhxi;->a(Lhxh;)Lhxh;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected a(SI)Lhxh;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lhwx;->d:[Lhxi;

    aget-object v0, v0, p2

    .line 186
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lhxi;->a(S)Lhxh;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(I[B)V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v0, p1, :cond_1

    .line 112
    iget-object v1, p0, Lhwx;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected a(Lhxi;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lhwx;->d:[Lhxi;

    invoke-virtual {p1}, Lhxi;->b()I

    move-result v1

    aput-object p1, v0, v1

    .line 165
    return-void
.end method

.method a([B)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lhwx;->h:[B

    .line 71
    return-void
.end method

.method a()[B
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lhwx;->h:[B

    return-object v0
.end method

.method protected a(I)[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected b(I)Lhxi;
    .locals 1

    .prologue
    .line 153
    invoke-static {p1}, Lhxh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lhwx;->d:[Lhxi;

    aget-object v0, v0, p1

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(SI)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lhwx;->d:[Lhxi;

    aget-object v0, v0, p2

    .line 231
    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {v0, p1}, Lhxi;->b(S)V

    goto :goto_0
.end method

.method protected b([B)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lhwx;->e:[B

    .line 95
    return-void
.end method

.method b()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lhwx;->h:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lhwx;->e:[B

    return-object v0
.end method

.method protected d()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lhwx;->e:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 340
    if-ne p0, p1, :cond_1

    move v3, v4

    .line 367
    :cond_0
    :goto_0
    return v3

    .line 343
    :cond_1
    if-eqz p1, :cond_0

    .line 346
    instance-of v0, p1, Lhwx;

    if-eqz v0, :cond_0

    .line 347
    check-cast p1, Lhwx;

    .line 348
    iget-object v0, p1, Lhwx;->g:Ljava/nio/ByteOrder;

    iget-object v1, p0, Lhwx;->g:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lhwx;->f:Ljava/util/ArrayList;

    .line 349
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lhwx;->e:[B

    iget-object v1, p0, Lhwx;->e:[B

    .line 350
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    .line 353
    :goto_1
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 354
    iget-object v0, p1, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v3

    .line 358
    :goto_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 359
    invoke-virtual {p1, v0}, Lhwx;->b(I)Lhxi;

    move-result-object v1

    .line 360
    invoke-virtual {p0, v0}, Lhwx;->b(I)Lhxi;

    move-result-object v2

    .line 361
    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lhxi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v4

    .line 365
    goto :goto_0
.end method

.method protected f()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lhwx;->g:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method protected h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhxh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v2, p0, Lhwx;->d:[Lhxi;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 284
    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {v4}, Lhxi;->a()[Lhxh;

    move-result-object v4

    .line 286
    if-eqz v4, :cond_0

    .line 287
    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 283
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 292
    const/4 v0, 0x0

    .line 294
    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lhwx;->g:Ljava/nio/ByteOrder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 376
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lhwx;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 377
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lhwx;->e:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 378
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lhwx;->d:[Lhxi;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    return v0
.end method
