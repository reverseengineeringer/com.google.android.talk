.class public final Lhfd;
.super Lhfa;
.source "SourceFile"


# instance fields
.field private final a:Lhfe;

.field private b:I

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;Lhdo;JIIIIIII)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct/range {p0 .. p10}, Lhfa;-><init>(Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;Lhdo;JIIIIII)V

    .line 50
    new-instance v1, Lhfe;

    .line 1022
    invoke-direct {v1, p0}, Lhfe;-><init>(Lhfd;)V

    .line 50
    iput-object v1, p0, Lhfd;->a:Lhfe;

    .line 88
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-virtual {p0}, Lhfd;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    move/from16 v0, p11

    iput v0, p0, Lhfd;->b:I

    .line 90
    const/4 v1, 0x2

    move/from16 v0, p11

    if-ne v0, v1, :cond_0

    .line 91
    const-string v1, "webrtc.vp8.2-layer"

    iput-object v1, p0, Lhfd;->c:Ljava/lang/String;

    .line 105
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x3

    move/from16 v0, p11

    if-ne v0, v1, :cond_1

    .line 93
    const-string v1, "webrtc.vp8.3-layer"

    iput-object v1, p0, Lhfd;->c:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_1
    iput-object v4, p0, Lhfd;->c:Ljava/lang/String;

    .line 98
    iput v3, p0, Lhfd;->b:I

    goto :goto_0

    .line 102
    :cond_2
    iput-object v4, p0, Lhfd;->c:Ljava/lang/String;

    .line 103
    iput v3, p0, Lhfd;->b:I

    goto :goto_0
.end method


# virtual methods
.method protected a(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lhfd;->c()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lhfd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lhfd;->c()Landroid/media/MediaCodec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "ts-schema"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const-string v0, "vclib"

    const-string v1, "HW encoder doesn\'t support temporal scalability; disabling."

    .line 1081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lhfd;->b:I

    .line 127
    :cond_0
    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lhfd;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "ts-schema"

    iget-object v1, p0, Lhfd;->c:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lhfd;->a:Lhfe;

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 115
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x2

    .line 136
    iget v2, p0, Lhfd;->b:I

    if-ge v2, v1, :cond_0

    .line 168
    :goto_0
    return v0

    .line 152
    :cond_0
    iget v2, p0, Lhfd;->b:I

    if-ne v2, v1, :cond_1

    .line 154
    invoke-virtual {p0}, Lhfd;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 155
    :cond_1
    iget v2, p0, Lhfd;->b:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 156
    invoke-virtual {p0}, Lhfd;->d()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    .line 157
    if-nez v0, :cond_2

    .line 158
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    if-ne v0, v1, :cond_3

    .line 160
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 162
    goto :goto_0

    .line 167
    :cond_4
    iget v1, p0, Lhfd;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected temporal layer count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lhbs;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
