.class public final Lanc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lamu;


# static fields
.field private static a:Lanc;


# instance fields
.field private final b:Lanj;

.field private final c:Ljava/io/File;

.field private final d:I

.field private final e:Lamy;

.field private f:Laib;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lanc;->a:Lanc;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lamy;

    invoke-direct {v0}, Lamy;-><init>()V

    iput-object v0, p0, Lanc;->e:Lamy;

    .line 54
    iput-object p1, p0, Lanc;->c:Ljava/io/File;

    .line 55
    iput p2, p0, Lanc;->d:I

    .line 56
    new-instance v0, Lanj;

    invoke-direct {v0}, Lanj;-><init>()V

    iput-object v0, p0, Lanc;->b:Lanj;

    .line 57
    return-void
.end method

.method private declared-synchronized a()Laib;
    .locals 4

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lanc;->f:Laib;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lanc;->c:Ljava/io/File;

    iget v1, p0, Lanc;->d:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Laib;->a(Ljava/io/File;J)Laib;

    move-result-object v0

    iput-object v0, p0, Lanc;->f:Laib;

    .line 63
    :cond_0
    iget-object v0, p0, Lanc;->f:Laib;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized a(Ljava/io/File;I)Lamu;
    .locals 2

    .prologue
    .line 47
    const-class v1, Lanc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanc;->a:Lanc;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lanc;

    invoke-direct {v0, p0, p1}, Lanc;-><init>(Ljava/io/File;I)V

    sput-object v0, Lanc;->a:Lanc;

    .line 50
    :cond_0
    sget-object v0, Lanc;->a:Lanc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Laiw;)Ljava/io/File;
    .locals 5

    .prologue
    .line 68
    iget-object v0, p0, Lanc;->b:Lanj;

    invoke-virtual {v0, p1}, Lanj;->a(Laiw;)Ljava/lang/String;

    move-result-object v1

    .line 69
    const-string v0, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Get: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lanc;->a()Laib;

    move-result-object v2

    invoke-virtual {v2, v1}, Laib;->a(Ljava/lang/String;)Laig;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Laig;->a()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 86
    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Laiw;Lamw;)V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lanc;->e:Lamy;

    invoke-virtual {v0, p1}, Lamy;->a(Laiw;)V

    .line 95
    :try_start_0
    iget-object v0, p0, Lanc;->b:Lanj;

    invoke-virtual {v0, p1}, Lanj;->a(Laiw;)Ljava/lang/String;

    move-result-object v0

    .line 96
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Put: Obtained: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for for Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lanc;->a()Laib;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v0}, Laib;->a(Ljava/lang/String;)Laig;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 126
    iget-object v0, p0, Lanc;->e:Lamy;

    invoke-virtual {v0, p1}, Lamy;->b(Laiw;)V

    .line 127
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_2
    invoke-virtual {v1, v0}, Laib;->b(Ljava/lang/String;)Laie;

    move-result-object v1

    .line 109
    if-nez v1, :cond_3

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Had two simultaneous puts for: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    move-exception v0

    .line 126
    :goto_2
    iget-object v0, p0, Lanc;->e:Lamy;

    invoke-virtual {v0, p1}, Lamy;->b(Laiw;)V

    goto :goto_0

    .line 110
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 126
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lanc;->e:Lamy;

    invoke-virtual {v1, p1}, Lamy;->b(Laiw;)V

    throw v0

    .line 113
    :cond_3
    :try_start_4
    invoke-virtual {v1}, Laie;->a()Ljava/io/File;

    move-result-object v0

    .line 114
    invoke-virtual {p2, v0}, Lamw;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    invoke-virtual {v1}, Laie;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 118
    :cond_4
    :try_start_5
    invoke-virtual {v1}, Laie;->d()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Laie;->d()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
