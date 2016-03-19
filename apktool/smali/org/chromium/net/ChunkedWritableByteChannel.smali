.class public Lorg/chromium/net/ChunkedWritableByteChannel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/ByteBuffer;

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 76
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 77
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    return-object v0

    .line 79
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->d:I

    iget-object v2, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 81
    :cond_2
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 82
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 84
    :cond_3
    iget v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->d:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    .line 85
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 86
    :goto_1
    if-ge v1, v2, :cond_4

    .line 87
    iget-object v3, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 89
    :cond_4
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 38
    :cond_1
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    .line 39
    return-void
.end method

.method public b()[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 98
    iget v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->d:I

    new-array v3, v1, [B

    .line 99
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 100
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 101
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 113
    :cond_0
    return-object v3

    .line 103
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    move v2, v0

    .line 105
    :goto_0
    if-ge v1, v4, :cond_0

    .line 106
    iget-object v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    .line 108
    invoke-virtual {v0, v3, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 110
    add-int/2addr v2, v5

    .line 105
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->e:Z

    .line 119
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 3

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->e:Z

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 48
    iget v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->d:I

    .line 50
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 52
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 68
    :goto_0
    return v0

    .line 58
    :cond_1
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 59
    iget-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->b:Ljava/nio/ByteBuffer;

    .line 65
    :cond_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 67
    iget-object v2, p0, Lorg/chromium/net/ChunkedWritableByteChannel;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
