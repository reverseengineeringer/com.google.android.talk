.class final Lhwv;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:[B

.field private final c:Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lhwv;->a:I

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lhwv;->b:[B

    .line 33
    iget-object v0, p0, Lhwv;->b:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    .line 37
    return-void
.end method

.method private a([BI)V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lhwv;->read([BII)I

    move-result v0

    .line 88
    if-eq v0, p2, :cond_0

    .line 89
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lhwv;->a:I

    return v0
.end method

.method public a(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-array v0, p1, [B

    .line 1094
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lhwv;->a([BI)V

    .line 140
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 81
    iget v0, p0, Lhwv;->a:I

    int-to-long v0, v0

    .line 82
    sub-long v0, p1, v0

    .line 1072
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1073
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    invoke-virtual {p0, v0, v1}, Lhwv;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 1076
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 84
    :cond_1
    return-void
.end method

.method public a(Ljava/nio/ByteOrder;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 99
    return-void
.end method

.method public b()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public c()S
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lhwv;->b:[B

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lhwv;->a([BI)V

    .line 107
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 108
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lhwv;->c()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lhwv;->b:[B

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lhwv;->a([BI)V

    .line 117
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 118
    iget-object v0, p0, Lhwv;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lhwv;->e()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lhwv;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 60
    iget v2, p0, Lhwv;->a:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    iput v0, p0, Lhwv;->a:I

    .line 61
    return v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public read([B)I
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lhwv;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 46
    iget v1, p0, Lhwv;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lhwv;->a:I

    .line 47
    return v0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lhwv;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 53
    iget v1, p0, Lhwv;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lhwv;->a:I

    .line 54
    return v0
.end method

.method public skip(J)J
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lhwv;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 67
    iget v2, p0, Lhwv;->a:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lhwv;->a:I

    .line 68
    return-wide v0
.end method
