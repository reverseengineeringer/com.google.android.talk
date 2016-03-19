.class public final Lmnh;
.super Lmng;
.source "SourceFile"


# instance fields
.field private final d:Ljava/io/File;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "application/octet-stream"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmnh;-><init>(Ljava/io/File;Ljava/lang/String;B)V

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmnh;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;B)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lmnh;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p2}, Lmng;-><init>(Ljava/lang/String;)V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p1, p0, Lmnh;->d:Ljava/io/File;

    .line 63
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmnh;->e:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lmnh;->f:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lmnh;->d:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 94
    const/16 v0, 0x1000

    :try_start_0
    new-array v0, v0, [B

    .line 96
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    .line 99
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 102
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmnh;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string v0, "binary"

    return-object v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lmnh;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lmnh;->e:Ljava/lang/String;

    return-object v0
.end method
