.class public Lmhp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:[B


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:[I

.field e:I

.field f:I

.field g:I

.field private final h:[B

.field private final i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x300

    new-array v0, v0, [B

    sput-object v0, Lmhp;->l:[B

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 38
    invoke-static {p1}, Lmhp;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 1042
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    .line 38
    :goto_0
    invoke-direct {p0, v1, v0}, Lmhp;-><init>([BI)V

    .line 39
    return-void

    .line 1042
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>([BI)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lmhp;->d:[I

    .line 61
    iput-object p1, p0, Lmhp;->h:[B

    .line 62
    iput p2, p0, Lmhp;->i:I

    .line 64
    new-instance v3, Lmhq;

    .line 1178
    invoke-direct {v3, p0, p1}, Lmhq;-><init>(Lmhp;[B)V

    .line 65
    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Lmhq;->skip(J)J

    .line 2107
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x47

    if-ne v2, v4, :cond_1

    move v2, v1

    .line 2108
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x49

    if-ne v2, v4, :cond_2

    move v2, v1

    .line 2109
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v4, 0x46

    if-ne v2, v4, :cond_3

    move v2, v1

    .line 2110
    :goto_2
    if-nez v2, :cond_4

    .line 2111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmhp;->c:Z

    .line 68
    :cond_0
    :goto_3
    invoke-virtual {v3}, Lmhq;->a()I

    move-result v0

    iput v0, p0, Lmhp;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_4
    :try_start_1
    invoke-virtual {v3}, Lmhq;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    :goto_5
    return-void

    :cond_1
    move v2, v0

    .line 2107
    goto :goto_0

    :cond_2
    move v2, v0

    .line 2108
    goto :goto_1

    :cond_3
    move v2, v0

    .line 2109
    goto :goto_2

    .line 2116
    :cond_4
    const-wide/16 v4, 0x3

    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 2131
    invoke-static {v3}, Lmhp;->a(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Lmhp;->j:I

    .line 2132
    invoke-static {v3}, Lmhp;->a(Ljava/io/InputStream;)I

    move-result v2

    iput v2, p0, Lmhp;->k:I

    .line 2134
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 2135
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lmhp;->b:Z

    .line 2138
    const/4 v0, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v0, v2

    iput v0, p0, Lmhp;->e:I

    .line 2139
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lmhp;->g:I

    .line 2140
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    .line 2120
    iget-boolean v0, p0, Lmhp;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmhp;->c:Z

    if-nez v0, :cond_0

    .line 2121
    iget-object v0, p0, Lmhp;->d:[I

    iget v2, p0, Lmhp;->e:I

    invoke-static {v3, v0, v2}, Lmhp;->a(Ljava/io/InputStream;[II)Z

    .line 2122
    iget-object v0, p0, Lmhp;->d:[I

    iget v2, p0, Lmhp;->g:I

    aget v0, v0, v2

    iput v0, p0, Lmhp;->f:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 70
    :catch_0
    move-exception v0

    iput-boolean v1, p0, Lmhp;->c:Z

    goto :goto_4

    .line 78
    :catch_1
    move-exception v0

    goto :goto_5
.end method

.method private static a(Ljava/io/InputStream;)I
    .locals 2

    .prologue
    .line 175
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/io/InputStream;[II)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 150
    sget-object v3, Lmhp;->l:[B

    monitor-enter v3

    .line 151
    mul-int/lit8 v1, p2, 0x3

    .line 152
    :try_start_0
    sget-object v2, Lmhp;->l:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 153
    if-ge v2, v1, :cond_0

    .line 154
    monitor-exit v3

    .line 167
    :goto_0
    return v0

    :cond_0
    move v1, v0

    .line 158
    :goto_1
    if-ge v1, p2, :cond_1

    .line 159
    sget-object v2, Lmhp;->l:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v5, v0, 0xff

    .line 160
    sget-object v0, Lmhp;->l:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    .line 161
    sget-object v6, Lmhp;->l:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v6, v2, 0xff

    .line 162
    add-int/lit8 v2, v1, 0x1

    const/high16 v7, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v7

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, p1, v1

    move v1, v2

    .line 163
    goto :goto_1

    .line 165
    :cond_1
    monitor-exit v3

    .line 167
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    .line 52
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lmhp;->h:[B

    array-length v0, v0

    iget-object v1, p0, Lmhp;->d:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
