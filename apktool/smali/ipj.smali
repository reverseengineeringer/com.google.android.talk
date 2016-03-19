.class public final Lipj;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lipj;->b:I

    .line 87
    iput-object p1, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    .line 88
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lipj;->b:I

    .line 102
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, -0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    iget-object v1, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 136
    :goto_0
    return v0

    .line 134
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    iget v1, p0, Lipj;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    return-void
.end method

.method public skip(J)J
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 117
    iget-object v1, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lipj;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    int-to-long v0, v0

    return-wide v0
.end method
