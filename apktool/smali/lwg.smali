.class public final Llwg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:[B

.field public static final d:Ljava/nio/ByteBuffer;

.field public static final e:Llvp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Llwg;->a:Ljava/nio/charset/Charset;

    .line 29
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Llwg;->b:Ljava/nio/charset/Charset;

    .line 369
    new-array v0, v2, [B

    .line 374
    sput-object v0, Llwg;->c:[B

    .line 375
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Llwg;->d:Ljava/nio/ByteBuffer;

    .line 378
    sget-object v0, Llwg;->c:[B

    .line 1037
    array-length v1, v0

    .line 1045
    invoke-static {v0, v2, v1, v2}, Llvp;->a([BIIZ)Llvp;

    move-result-object v0

    .line 379
    sput-object v0, Llwg;->e:Llvp;

    .line 378
    return-void
.end method

.method static a(I[BII)I
    .locals 3

    .prologue
    move v0, p2

    .line 277
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 278
    mul-int/lit8 v1, p0, 0x1f

    aget-byte v2, p1, v0

    add-int p0, v1, v2

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return p0
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    return v0
.end method
