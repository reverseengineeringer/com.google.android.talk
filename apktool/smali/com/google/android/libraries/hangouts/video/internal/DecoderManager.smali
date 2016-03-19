.class public final Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByNative;
.end annotation


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
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->b:I

    .line 34
    iput-object p1, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->nativeInit()V

    .line 36
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->setSupportedCodecs(I)Z

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1097
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_hardware_decode"

    invoke-static {v0, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 93
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lhfl;->a(Landroid/content/Context;Z)I

    move-result v1

    and-int/2addr v0, v1

    return v0

    .line 1103
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "babel_hangout_vp8_hardware_decode"

    invoke-static {v0, v3, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1108
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "babel_hangout_h264_hardware_decode2"

    invoke-static {v3, v4, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private e()I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a(Landroid/content/Context;)I

    move-result v0

    .line 62
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->b:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 63
    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->b:I

    and-int/2addr v0, v1

    .line 65
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
.method public a(Lhev;)Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 140
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 141
    new-instance v0, Lhew;

    invoke-direct {v0, p0, p1}, Lhew;-><init>(Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;Lhev;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Lhey;

    invoke-direct {v0, p0, p1}, Lhey;-><init>(Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;Lhev;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->nativeRelease()V

    .line 44
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->nativeContext:J

    return-wide v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->b:I

    .line 57
    invoke-direct {p0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->e()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->setSupportedCodecs(I)Z

    .line 58
    return-void
.end method

.method native consumeNextEncodedFrame(IJLjava/nio/ByteBuffer;)Z
.end method

.method public d()Z
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "babel_hangout_hardware_decode_supports_dynamic_resolution_changes"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native frameDecoded(IJII)Z
.end method

.method native getCodecType(I)I
.end method

.method native getNextEncodedFrameMetadata(IZLjava/lang/Object;)Z
.end method

.method native notifyHardwareFailed(I)Z
.end method

.method native notifyResolutionNotSupported(III)Z
.end method
