.class final Llvl;
.super Llvo;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final d:I

.field private final e:I


# direct methods
.method constructor <init>([BII)V
    .locals 2

    .prologue
    .line 1397
    invoke-direct {p0, p1}, Llvo;-><init>([B)V

    .line 1398
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Llvl;->a(III)I

    .line 1400
    iput p2, p0, Llvl;->d:I

    .line 1401
    iput p3, p0, Llvl;->e:I

    .line 1402
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 1452
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(I)B
    .locals 4

    .prologue
    .line 1418
    invoke-virtual {p0}, Llvl;->b()I

    move-result v0

    .line 2108
    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    .line 2109
    if-gez p1, :cond_0

    .line 2110
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2112
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Index > length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1419
    :cond_1
    iget-object v0, p0, Llvl;->c:[B

    iget v1, p0, Llvl;->d:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1424
    iget v0, p0, Llvl;->e:I

    return v0
.end method

.method protected b([BIII)V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Llvl;->c:[B

    invoke-virtual {p0}, Llvl;->d()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1440
    return-void
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 1429
    iget v0, p0, Llvl;->d:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2552
    invoke-virtual {p0}, Llvk;->b()I

    move-result v1

    .line 2553
    if-nez v1, :cond_0

    .line 2554
    sget-object v0, Llwg;->c:[B

    .line 1448
    :goto_0
    invoke-static {v0}, Llvk;->a([B)Llvk;

    move-result-object v0

    return-object v0

    .line 2556
    :cond_0
    new-array v0, v1, [B

    .line 2557
    invoke-virtual {p0, v0, v2, v2, v1}, Llvk;->b([BIII)V

    goto :goto_0
.end method
