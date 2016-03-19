.class final Lhxk;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field private final a:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 26
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)Lhxk;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 46
    iget-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    iget-object v0, p0, Lhxk;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 48
    return-object p0
.end method

.method public a(Lhxl;)Lhxk;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p1}, Lhxl;->a()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lhxk;->a(I)Lhxk;

    .line 53
    invoke-virtual {p1}, Lhxl;->b()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lhxk;->a(I)Lhxk;

    .line 54
    return-object p0
.end method

.method public a(Ljava/nio/ByteOrder;)Lhxk;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 34
    return-object p0
.end method

.method public a(S)Lhxk;
    .locals 4

    .prologue
    .line 38
    iget-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    iget-object v0, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lhxk;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lhxk;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    return-object p0
.end method
