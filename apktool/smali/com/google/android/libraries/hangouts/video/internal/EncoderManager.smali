.class public final Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private nativeContext:J
    .annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b:I

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->nativeInit()V

    .line 35
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->setSupportedCodecs(I)Z

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "babel_hangout_hardware_encode"

    invoke-static {v2, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lhfl;->a(Landroid/content/Context;Z)I

    move-result v1

    and-int/2addr v0, v1

    return v0

    .line 1116
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "babel_hangout_vp8_hardware_encode"

    invoke-static {v2, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 1121
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "babel_hangout_h264_hardware_encode2"

    invoke-static {v2, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1124
    or-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-static {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a(Landroid/content/Context;)I

    move-result v2

    .line 78
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :pswitch_0
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 82
    :pswitch_1
    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private d()I
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a(Landroid/content/Context;)I

    move-result v0

    .line 89
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 90
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b:I

    and-int/2addr v0, v1

    .line 92
    :cond_0
    return v0
.end method

.method private final native nativeInit()V
.end method

.method private final native nativeRelease()V
.end method

.method private final native setSupportedCodecs(I)Z
.end method


# virtual methods
.method public a(ILhcd;Lhds;)Lhdr;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 48
    new-instance v0, Lhdi;

    .line 51
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->d()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a:Landroid/content/Context;

    .line 54
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "babel_hangout_encoder_quality_scaling_mode"

    .line 53
    invoke-static {v2, v4, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a:Landroid/content/Context;

    .line 58
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "babel_hangout_max_outstanding_encoder_frames"

    .line 57
    invoke-static {v2, v4, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lhdi;-><init>(ILhcd;ZLhds;II)V

    return-object v0

    :cond_0
    move v3, v1

    .line 51
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->b:I

    .line 70
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->setSupportedCodecs(I)Z

    .line 71
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->nativeRelease()V

    .line 134
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->nativeContext:J

    return-wide v0
.end method

.method native getEncoderConfig(JLjava/lang/Object;)Z
.end method

.method native getNativeSimulcastEncoderIds(Ljava/lang/Object;)Z
.end method

.method public native sendEncodedFrame(JJLjava/nio/ByteBuffer;IIIIIZ)I
.end method
