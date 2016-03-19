.class public final Lhxm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:F

.field private final f:F

.field private final g:Lhxo;

.field private h:Ljava/io/File;

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JJFF)V
    .locals 11

    .prologue
    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 48
    new-instance v10, Lhxp;

    .line 1371
    invoke-direct {v10}, Lhxp;-><init>()V

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 46
    invoke-direct/range {v1 .. v10}, Lhxm;-><init>(Landroid/content/Context;Ljava/lang/String;JJFFLhxo;)V

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v10, Lhxn;

    .line 1387
    invoke-direct {v10}, Lhxn;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;JJFFLhxo;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lhxm;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lhxm;->b:Ljava/lang/String;

    .line 56
    iput-wide p3, p0, Lhxm;->c:J

    .line 57
    iput-wide p5, p0, Lhxm;->d:J

    .line 58
    iput p7, p0, Lhxm;->e:F

    .line 59
    iput p8, p0, Lhxm;->f:F

    .line 60
    iput-object p9, p0, Lhxm;->g:Lhxo;

    .line 61
    return-void
.end method

.method private a(Ljava/io/File;)J
    .locals 6

    .prologue
    .line 331
    const-wide/16 v2, 0x0

    .line 332
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_1

    .line 334
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 335
    aget-object v4, v1, v0

    .line 336
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lhxm;->a(Ljava/io/File;)J

    move-result-wide v4

    :goto_1
    add-long/2addr v2, v4

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1

    .line 339
    :cond_1
    return-wide v2
.end method

.method private d()Ljava/io/File;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lhxm;->h:Ljava/io/File;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lhxm;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lhxm;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lhxm;->h:Ljava/io/File;

    .line 67
    :cond_0
    iget-object v0, p0, Lhxm;->h:Ljava/io/File;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lhxm;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lhxm;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lhxm;->i:Ljava/lang/String;

    .line 74
    :cond_0
    iget-object v0, p0, Lhxm;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()J
    .locals 4

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lhxm;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lhxm;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lhxm;->j:J

    .line 292
    :cond_0
    iget-wide v0, p0, Lhxm;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lhxm;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :try_start_0
    invoke-static {p2, v1}, Laal;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 111
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    .line 2078
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2079
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2081
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    :goto_1
    :try_start_2
    invoke-static {p2, v1}, Laal;->a(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    const-string v3, "FileCache"

    const-string v4, "Cannot write file to cache: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2082
    :catch_2
    move-exception v1

    .line 2083
    const-string v2, "FileCache"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Cannot create cache directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2084
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Cannot create cache directory"

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 2087
    :cond_0
    const-string v3, "FileCache"

    const-string v4, "Cannot write file to cache: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :catch_3
    move-exception v2

    .line 109
    const-string v3, "FileCache"

    const-string v4, "Cannot write file to cache: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 2037
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0}, Lhxm;->a(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 93
    return-void
.end method

.method public b()J
    .locals 7

    .prologue
    .line 300
    iget-wide v0, p0, Lhxm;->d:J

    .line 302
    iget-object v2, p0, Lhxm;->g:Lhxo;

    invoke-interface {v2}, Lhxo;->a()J

    move-result-wide v2

    .line 303
    long-to-float v4, v0

    long-to-float v5, v2

    iget v6, p0, Lhxm;->e:F

    mul-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 304
    long-to-float v0, v2

    iget v1, p0, Lhxm;->e:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 307
    :cond_0
    iget-wide v2, p0, Lhxm;->c:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 308
    iget-wide v0, p0, Lhxm;->c:J

    .line 311
    :cond_1
    iget-object v2, p0, Lhxm;->g:Lhxo;

    invoke-interface {v2}, Lhxo;->b()J

    move-result-wide v2

    .line 312
    long-to-float v4, v0

    long-to-float v5, v2

    iget v6, p0, Lhxm;->f:F

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 320
    :goto_0
    return-wide v0

    .line 317
    :cond_2
    invoke-virtual {p0}, Lhxm;->c()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 320
    long-to-float v0, v0

    iget v1, p0, Lhxm;->f:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lhxm;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 193
    invoke-direct {p0}, Lhxm;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lhxm;->d()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lhxm;->d()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lhxm;->a(Ljava/io/File;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
