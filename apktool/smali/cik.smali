.class final Lcik;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/net/Uri;


# instance fields
.field private final c:Landroid/media/MediaPlayer;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget v0, Laal;->hK:I

    .line 22
    invoke-static {v0}, Lezc;->c(I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcik;->a:Landroid/net/Uri;

    .line 23
    sget v0, Laal;->hH:I

    .line 24
    invoke-static {v0}, Lezc;->c(I)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcik;->b:Landroid/net/Uri;

    .line 23
    return-void
.end method

.method constructor <init>(Z)V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcik;->d:Z

    .line 30
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    .line 31
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 34
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 38
    if-eqz p1, :cond_1

    :try_start_0
    sget-object v0, Lcik;->b:Landroid/net/Uri;

    .line 39
    :goto_0
    iget-object v1, p0, Lcik;->c:Landroid/media/MediaPlayer;

    .line 1036
    sget-object v2, Laal;->oJ:Landroid/content/Context;

    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2036
    :goto_1
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 47
    const-string v1, "babel_hangout_outgoing_ringtone_volume_percentage"

    .line 46
    invoke-static {v0, v1, v4}, Laal;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 50
    if-ltz v0, :cond_0

    if-gt v0, v4, :cond_0

    .line 51
    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 2084
    iget-object v1, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 53
    :cond_0
    return-void

    .line 38
    :cond_1
    :try_start_1
    sget-object v0, Lcik;->a:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "Babel_calls"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to set data source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1101
    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 88
    iget-boolean v1, p0, Lcik;->d:Z

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return v0

    .line 93
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcik;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string v1, "Babel_calls"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed to prepare ringer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2101
    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcik;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 62
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 64
    :cond_1
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcik;->c:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 75
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
