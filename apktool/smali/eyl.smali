.class final Leyl;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Leyk;

.field final synthetic b:Leyh;


# direct methods
.method public constructor <init>(Leyh;Leyk;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Leyl;->b:Leyh;

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 84
    iput-object p2, p0, Leyl;->a:Leyk;

    .line 85
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 90
    iget-object v0, p0, Leyl;->b:Leyh;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 1045
    iput-object v1, v0, Leyh;->c:Landroid/os/Looper;

    .line 91
    monitor-enter p0

    .line 2036
    :try_start_0
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 93
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 96
    iget-object v1, p0, Leyl;->a:Leyk;

    iget v1, v1, Leyk;->d:I

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 97
    iget-object v3, p0, Leyl;->a:Leyk;

    iget-object v3, v3, Leyk;->b:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 98
    iget-object v1, p0, Leyl;->a:Leyk;

    iget-boolean v1, v1, Leyk;->c:Z

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 99
    iget-object v1, p0, Leyl;->a:Leyk;

    iget v1, v1, Leyk;->e:F

    iget-object v3, p0, Leyl;->a:Leyk;

    iget v3, v3, Leyk;->e:F

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 100
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 101
    iget-object v1, p0, Leyl;->a:Leyk;

    iget-object v1, v1, Leyk;->b:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Leyl;->a:Leyk;

    iget-object v1, v1, Leyk;->b:Landroid/net/Uri;

    .line 102
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Leyl;->a:Leyk;

    iget-object v1, v1, Leyk;->b:Landroid/net/Uri;

    .line 103
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    const/4 v3, 0x0

    iget-object v1, p0, Leyl;->a:Leyk;

    iget v4, v1, Leyk;->d:I

    iget-object v1, p0, Leyl;->a:Leyk;

    iget-boolean v1, v1, Leyk;->c:Z

    if-eqz v1, :cond_2

    .line 108
    const/4 v1, 0x2

    .line 104
    :goto_0
    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 111
    :cond_0
    iget-object v1, p0, Leyl;->b:Leyh;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 112
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 113
    iget-object v1, p0, Leyl;->b:Leyh;

    .line 3045
    iget-object v1, v1, Leyh;->f:Landroid/media/MediaPlayer;

    .line 113
    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Leyl;->b:Leyh;

    .line 4045
    iget-object v1, v1, Leyh;->f:Landroid/media/MediaPlayer;

    .line 114
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 116
    :cond_1
    iget-object v1, p0, Leyl;->b:Leyh;

    .line 5045
    iput-object v2, v1, Leyh;->f:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_1
    :try_start_2
    iget-object v1, p0, Leyl;->b:Leyh;

    .line 7045
    iput-object v0, v1, Leyh;->h:Landroid/media/AudioManager;

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 124
    return-void

    .line 109
    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    :try_start_3
    iget-object v2, p0, Leyl;->b:Leyh;

    .line 6045
    iget-object v2, v2, Leyh;->d:Ljava/lang/String;

    .line 118
    iget-object v3, p0, Leyl;->a:Leyk;

    iget-object v3, v3, Leyk;->b:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x18

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
