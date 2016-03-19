.class public abstract Llvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llvk;


# instance fields
.field b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Llvo;

    sget-object v1, Llwg;->c:[B

    invoke-direct {v0, v1}, Llvo;-><init>([B)V

    sput-object v0, Llvk;->a:Llvk;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Llvk;->b:I

    .line 70
    return-void
.end method

.method static a(III)I
    .locals 3

    .prologue
    .line 1126
    sub-int v0, p1, p0

    .line 1127
    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_2

    .line 1128
    if-gez p0, :cond_0

    .line 1129
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Beginning index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1131
    :cond_0
    if-ge p1, p0, :cond_1

    .line 1132
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Beginning index larger than ending index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1136
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "End index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_2
    return v0
.end method

.method public static a(Ljava/lang/String;)Llvk;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Llvo;

    sget-object v1, Llwg;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Llvo;-><init>([B)V

    return-object v0
.end method

.method static a([B)Llvk;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Llvo;

    invoke-direct {v0, p0}, Llvo;-><init>([B)V

    return-object v0
.end method

.method public static a([BII)Llvk;
    .locals 2

    .prologue
    .line 223
    new-array v0, p2, [B

    .line 224
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    new-instance v1, Llvo;

    invoke-direct {v1, v0}, Llvo;-><init>([B)V

    return-object v1
.end method

.method static b([BII)Llvk;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Llvl;

    invoke-direct {v0, p0, p1, p2}, Llvl;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public abstract a(I)B
.end method

.method public abstract a(II)Llvk;
.end method

.method public final a()Llvm;
    .locals 1

    .prologue
    .line 93
    new-instance v0, Llvm;

    invoke-direct {v0, p0}, Llvm;-><init>(Llvk;)V

    return-object v0
.end method

.method abstract a(Ljava/io/OutputStream;II)V
.end method

.method public final a([BIII)V
    .locals 2

    .prologue
    .line 520
    add-int v0, p2, p4

    invoke-virtual {p0}, Llvk;->b()I

    move-result v1

    invoke-static {p2, v0, v1}, Llvk;->a(III)I

    .line 521
    add-int v0, p3, p4

    array-length v1, p1

    invoke-static {p3, v0, v1}, Llvk;->a(III)I

    .line 522
    if-lez p4, :cond_0

    .line 523
    invoke-virtual {p0, p1, p2, p3, p4}, Llvk;->b([BIII)V

    .line 525
    :cond_0
    return-void
.end method

.method public abstract b()I
.end method

.method protected abstract b(II)I
.end method

.method protected abstract b([BIII)V
.end method

.method public abstract c()Llvp;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Llvk;->b:I

    .line 762
    if-nez v0, :cond_1

    .line 763
    invoke-virtual {p0}, Llvk;->b()I

    move-result v0

    .line 764
    invoke-virtual {p0, v0, v0}, Llvk;->b(II)I

    move-result v0

    .line 765
    if-nez v0, :cond_0

    .line 766
    const/4 v0, 0x1

    .line 768
    :cond_0
    iput v0, p0, Llvk;->b:I

    .line 770
    :cond_1
    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Llvk;->a()Llvm;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1143
    const-string v0, "<ByteString@%s size=%d>"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1144
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Llvk;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1143
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
