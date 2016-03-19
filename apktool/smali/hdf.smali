.class public final Lhdf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Lhdf;

.field static final b:I


# instance fields
.field final c:Landroid/os/Handler;

.field final d:[I

.field final e:Ljava/lang/Runnable;

.field f:D

.field g:Lhdh;

.field volatile h:I

.field volatile i:I

.field volatile j:I

.field private final k:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lhdf;->b:I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "present"

    invoke-static {v0}, Lhdf;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lhdf;->b:I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lhdg;

    invoke-direct {v0, p0}, Lhdg;-><init>(Lhdf;)V

    iput-object v0, p0, Lhdf;->e:Ljava/lang/Runnable;

    .line 43
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lhdf;->f:D

    .line 44
    new-instance v0, Lhdh;

    invoke-direct {v0, p0, v2, v2}, Lhdh;-><init>(Lhdf;II)V

    iput-object v0, p0, Lhdf;->g:Lhdh;

    .line 59
    sget v0, Lhdf;->b:I

    new-array v0, v0, [I

    iput-object v0, p0, Lhdf;->d:[I

    .line 61
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CpuMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lhdf;->k:Landroid/os/HandlerThread;

    .line 62
    iget-object v0, p0, Lhdf;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lhdf;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhdf;->c:Landroid/os/Handler;

    .line 64
    iget-object v0, p0, Lhdf;->c:Landroid/os/Handler;

    iget-object v1, p0, Lhdf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method static a(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 197
    const-string v0, "/sys/devices/system/cpu/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lhdf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    .line 199
    const-string v2, "\\-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 204
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 206
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 207
    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 208
    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 209
    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    move v1, v0

    .line 218
    :cond_1
    :goto_1
    return v1

    .line 197
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    const-string v2, "vclib"

    const-string v3, "Could not parse cpu count for state: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :goto_2
    const/4 v3, 0x4

    invoke-static {v3, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 247
    const/4 v0, 0x0

    .line 248
    invoke-static {p0}, Lhdf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 254
    :goto_0
    return v0

    .line 252
    :catch_0
    move-exception v1

    const-string v1, "vclib"

    const-string v2, "Could not parse cpu frequency value."

    .line 4089
    const/4 v3, 0x5

    invoke-static {v3, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x5

    .line 230
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 231
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 237
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    const-string v1, "vclib"

    const-string v2, "Could not close file reader."

    .line 1089
    invoke-static {v6, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_3
    const-string v3, "vclib"

    const-string v4, "Could not find or read from file: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2073
    :goto_2
    const/4 v4, 0x3

    invoke-static {v4, v3, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v1, :cond_0

    .line 237
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 240
    :catch_2
    move-exception v1

    const-string v1, "vclib"

    const-string v2, "Could not close file reader."

    .line 2089
    invoke-static {v6, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_1
    :try_start_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    :goto_3
    if-eqz v1, :cond_2

    .line 237
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 241
    :cond_2
    :goto_4
    throw v0

    .line 240
    :catch_3
    move-exception v1

    const-string v1, "vclib"

    const-string v2, "Could not close file reader."

    .line 3089
    invoke-static {v6, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 235
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    .line 233
    :catch_4
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lhdf;->c:Landroid/os/Handler;

    iget-object v1, p0, Lhdf;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v0, p0, Lhdf;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lhdf;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 95
    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lhdf;->j:I

    return v0
.end method

.method public c()I
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lhdf;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lhdf;->h:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lhdf;->i:I

    return v0
.end method

.method f()Lhdh;
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 264
    const-string v1, "/proc/stat"

    invoke-static {v1}, Lhdf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    if-nez v3, :cond_0

    .line 266
    new-instance v1, Lhdh;

    invoke-direct {v1, p0, v0, v0}, Lhdh;-><init>(Lhdf;II)V

    move-object v0, v1

    .line 285
    :goto_0
    return-object v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 271
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    invoke-direct {v2, v3}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    .line 273
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v1

    .line 274
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    .line 275
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    .line 276
    add-int/2addr v1, v3

    add-int/2addr v1, v4

    .line 277
    :try_start_2
    invoke-virtual {v2}, Ljava/util/Scanner;->nextInt()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    .line 282
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .line 285
    :cond_1
    :goto_1
    new-instance v2, Lhdh;

    invoke-direct {v2, p0, v1, v0}, Lhdh;-><init>(Lhdf;II)V

    move-object v0, v2

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    move-object v2, v1

    move v1, v0

    :goto_2
    :try_start_3
    const-string v3, "vclib"

    const-string v4, "Could not parse /proc/stat"

    .line 5089
    const/4 v5, 0x5

    invoke-static {v5, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 281
    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_2

    .line 282
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    throw v0

    .line 281
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 279
    :catch_1
    move-exception v1

    move v1, v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_2
.end method
