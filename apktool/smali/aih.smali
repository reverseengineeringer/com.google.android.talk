.class final Laih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final a:Ljava/nio/charset/Charset;

.field private final b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Laih;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V

    .line 73
    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;B)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 93
    :cond_1
    sget-object v0, Laij;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_2
    iput-object p1, p0, Laih;->b:Ljava/io/InputStream;

    .line 98
    iput-object p2, p0, Laih;->a:Ljava/nio/charset/Charset;

    .line 99
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Laih;->c:[B

    .line 100
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-object v0, p0, Laih;->b:Ljava/io/InputStream;

    iget-object v1, p0, Laih;->c:[B

    iget-object v2, p0, Laih;->c:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 189
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iput v3, p0, Laih;->d:I

    .line 193
    iput v0, p0, Laih;->e:I

    .line 194
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 126
    iget-object v3, p0, Laih;->b:Ljava/io/InputStream;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v0, p0, Laih;->c:[B

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/io/IOException;

    const-string v1, "LineReader is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_0
    :try_start_1
    iget v0, p0, Laih;->d:I

    iget v1, p0, Laih;->e:I

    if-lt v0, v1, :cond_1

    .line 135
    invoke-direct {p0}, Laih;->c()V

    .line 138
    :cond_1
    iget v2, p0, Laih;->d:I

    :goto_0
    iget v0, p0, Laih;->e:I

    if-eq v2, v0, :cond_4

    .line 139
    iget-object v0, p0, Laih;->c:[B

    aget-byte v0, v0, v2

    if-ne v0, v6, :cond_3

    .line 140
    iget v0, p0, Laih;->d:I

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Laih;->c:[B

    add-int/lit8 v1, v2, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    .line 141
    :goto_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Laih;->c:[B

    iget v5, p0, Laih;->d:I

    iget v6, p0, Laih;->d:I

    sub-int/2addr v1, v6

    iget-object v6, p0, Laih;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v4, v5, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Laih;->d:I

    .line 143
    monitor-exit v3

    .line 172
    :goto_2
    return-object v0

    :cond_2
    move v1, v2

    .line 140
    goto :goto_1

    .line 138
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_4
    new-instance v1, Laii;

    iget v0, p0, Laih;->e:I

    iget v2, p0, Laih;->d:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x50

    invoke-direct {v1, p0, v0}, Laii;-><init>(Laih;I)V

    .line 161
    :cond_5
    iget-object v0, p0, Laih;->c:[B

    iget v2, p0, Laih;->d:I

    iget v4, p0, Laih;->e:I

    iget v5, p0, Laih;->d:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Laih;->e:I

    .line 164
    invoke-direct {p0}, Laih;->c()V

    .line 166
    iget v0, p0, Laih;->d:I

    :goto_3
    iget v2, p0, Laih;->e:I

    if-eq v0, v2, :cond_5

    .line 167
    iget-object v2, p0, Laih;->c:[B

    aget-byte v2, v2, v0

    if-ne v2, v6, :cond_7

    .line 168
    iget v2, p0, Laih;->d:I

    if-eq v0, v2, :cond_6

    .line 169
    iget-object v2, p0, Laih;->c:[B

    iget v4, p0, Laih;->d:I

    iget v5, p0, Laih;->d:I

    sub-int v5, v0, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 171
    :cond_6
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laih;->d:I

    .line 172
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 166
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Laih;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Laih;->b:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_0
    iget-object v0, p0, Laih;->c:[B

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Laih;->c:[B

    .line 112
    iget-object v0, p0, Laih;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
