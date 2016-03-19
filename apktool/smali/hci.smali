.class public final Lhci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhei;


# static fields
.field private static final d:[[Ljava/lang/String;

.field private static final z:J


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field final a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

.field final b:Landroid/net/ConnectivityManager;

.field c:Lhcs;

.field private final e:Landroid/content/Context;

.field private final f:Lhcd;

.field private final g:Lheh;

.field private final h:Lhej;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhcu;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/net/wifi/WifiManager;

.field private final k:Landroid/net/wifi/WifiManager$WifiLock;

.field private l:Lhcp;

.field private final m:Lhbt;

.field private final n:Lhef;

.field private final o:Lhgv;

.field private p:Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

.field private final q:Lhhe;

.field private final r:Lhbo;

.field private s:Lhit;

.field private t:Landroid/os/PowerManager$WakeLock;

.field private final u:Lhiv;

.field private final v:Lhfm;

.field private final w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private final y:Lhek;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    const/16 v0, 0x14

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "babel_hangout_blocked_interface_names"

    aput-object v2, v1, v4

    const-string v2, "USE_DEFAULT_NETWORKS_ONLY"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "babel_hangout_ec_comfort_noise_generation"

    aput-object v2, v1, v4

    const-string v2, "EC_COMFORT_NOISE_GENERATION"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "babel_hangout_agc_mode"

    aput-object v2, v1, v4

    const-string v2, "AGC_MODE"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_agc_config_target_level"

    aput-object v3, v2, v4

    const-string v3, "AGC_CONFIG_TARGET_LEVEL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_agc_config_comp_gain"

    aput-object v3, v2, v4

    const-string v3, "AGC_CONFIG_COMP_GAIN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_agc_config_limiter_enable"

    aput-object v3, v2, v4

    const-string v3, "AGC_CONFIG_LIMITER_ENABLE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_enable_rx_auto_gain_control"

    aput-object v3, v2, v4

    const-string v3, "ENABLE_RX_AUTO_GAIN_CONTROL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_rx_agc_config_target_level"

    aput-object v3, v2, v4

    const-string v3, "RX_AGC_CONFIG_TARGET_LEVEL"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_rx_agc_config_comp_gain"

    aput-object v3, v2, v4

    const-string v3, "RX_AGC_CONFIG_COMP_GAIN"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_rx_agc_config_limiter_enable"

    aput-object v3, v2, v4

    const-string v3, "RX_AGC_CONFIG_LIMITER_ENABLE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_audio_record_sampling_rate"

    aput-object v3, v2, v4

    const-string v3, "AUDIO_RECORDING_SAMPLING_RATE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_audio_playback_sampling_rate"

    aput-object v3, v2, v4

    const-string v3, "AUDIO_PLAYBACK_SAMPLING_RATE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_audio_recording_device"

    aput-object v3, v2, v4

    const-string v3, "AUDIO_RECORDING_DEVICE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_enter_step_timeout"

    aput-object v3, v2, v4

    const-string v3, "CALL_ENTER_STEP_TIMEOUT_MILLIS"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_log_file_size"

    aput-object v3, v2, v4

    const-string v3, "DIAGNOSTIC_RAW_LOG_FILE_SIZE_BYTES"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_hangout_h264_bitstream_rewrite_type"

    aput-object v3, v2, v4

    const-string v3, "H264_BITSTREAM_REWRITE_TYPE"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_nova_handoff_expand_rate_threshold"

    aput-object v3, v2, v4

    const-string v3, "NOVA_HANDOFF_EXPAND_RATE_THRESHOLD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_nova_handoff_recv_fraction_lost_threshold"

    aput-object v3, v2, v4

    const-string v3, "NOVA_HANDOFF_RECV_FRACTION_LOST_THRESHOLD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_nova_handoff_send_fraction_lost_threshold"

    aput-object v3, v2, v4

    const-string v3, "NOVA_HANDOFF_SEND_FRACTION_LOST_THRESHOLD"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "babel_nova_enable_receive_bitrate_handoff"

    aput-object v3, v2, v4

    const-string v3, "NOVA_ENABLE_RECV_BITRATE_HANDOFF"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lhci;->d:[[Ljava/lang/String;

    .line 219
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lhci;->z:J

    return-void
.end method

.method public constructor <init>(Lhcd;)V
    .locals 7

    .prologue
    const/16 v2, 0x3e80

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lhci;->w:Ljava/util/Map;

    .line 212
    iput-boolean v6, p0, Lhci;->x:Z

    .line 220
    new-instance v0, Lhcj;

    invoke-direct {v0, p0}, Lhcj;-><init>(Lhci;)V

    iput-object v0, p0, Lhci;->A:Ljava/lang/Runnable;

    .line 229
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lhci;->B:Ljava/util/Set;

    .line 286
    invoke-virtual {p1}, Lhcd;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhci;->e:Landroid/content/Context;

    .line 287
    iput-object p1, p0, Lhci;->f:Lhcd;

    .line 289
    new-instance v0, Lhej;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lhej;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lhci;->h:Lhej;

    .line 290
    iget-object v0, p0, Lhci;->h:Lhej;

    invoke-virtual {v0, p0}, Lhej;->a(Lhei;)V

    .line 292
    new-instance v0, Lheh;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lheh;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lhci;->g:Lheh;

    .line 293
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    iget-object v3, p0, Lhci;->h:Lhej;

    iget-object v4, p0, Lhci;->g:Lheh;

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;-><init>(Landroid/content/Context;Landroid/os/Handler;Lheh;)V

    iput-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 294
    new-instance v0, Lhgv;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    iget-object v3, p0, Lhci;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lhgv;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lhci;->o:Lhgv;

    .line 296
    new-instance v0, Lhhe;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    iget-object v3, p0, Lhci;->o:Lhgv;

    invoke-direct {v0, v1, v3}, Lhhe;-><init>(Landroid/content/Context;Lhgv;)V

    iput-object v0, p0, Lhci;->q:Lhhe;

    .line 297
    new-instance v0, Lhbo;

    new-instance v1, Lhhr;

    .line 2583
    invoke-direct {v1, p0}, Lhhr;-><init>(Lhci;)V

    .line 297
    iget-object v3, p0, Lhci;->q:Lhhe;

    invoke-direct {v0, v1, v3}, Lhbo;-><init>(Lhhr;Lhbl;)V

    iput-object v0, p0, Lhci;->r:Lhbo;

    .line 300
    iget-object v0, p0, Lhci;->g:Lheh;

    const-string v1, "babel_hangout_ns_mode"

    .line 301
    invoke-virtual {v0, v1}, Lheh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhci;->g:Lheh;

    const-string v3, "babel_hangout_aec_mode"

    .line 302
    invoke-virtual {v1, v3}, Lheh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lhci;->g:Lheh;

    const-string v4, "babel_hangout_agc_mode"

    .line 303
    invoke-virtual {v3, v4}, Lheh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v0, v1, v3}, Lorg/webrtc/voiceengine/AudioEffectsJB;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUseWebRTCNoiseSuppressor()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Z)V

    .line 305
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 306
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUseWebRTCAcousticEchoCanceler()Z

    move-result v1

    .line 305
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->b(Z)V

    .line 307
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 308
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUseWebRTCAutomaticGainControl()Z

    move-result v1

    .line 307
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c(Z)V

    .line 310
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 3389
    iget-object v0, p0, Lhci;->g:Lheh;

    const-string v1, "babel_hangout_audio_record_sampling_rate"

    invoke-virtual {v0, v1, v5}, Lheh;->a(Ljava/lang/String;I)I

    move-result v1

    .line 3391
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3392
    const-string v3, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3393
    if-eq v1, v5, :cond_0

    move v0, v1

    .line 3407
    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->setDefaultSampleRateHz(I)V

    .line 316
    :goto_1
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->d()V

    .line 317
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    .line 318
    invoke-static {v1}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lhci;->d:[[Ljava/lang/String;

    iget-object v3, p0, Lhci;->e:Landroid/content/Context;

    .line 320
    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/raw_call_logs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lhci;->i:Ljava/util/List;

    .line 323
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lhci;->b:Landroid/net/ConnectivityManager;

    .line 325
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lhci;->j:Landroid/net/wifi/WifiManager;

    .line 327
    iget-object v0, p0, Lhci;->j:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    const-string v2, "VideoChatWifiLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lhci;->k:Landroid/net/wifi/WifiManager$WifiLock;

    .line 330
    iget-object v0, p0, Lhci;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 331
    new-instance v0, Lhek;

    invoke-direct {v0}, Lhek;-><init>()V

    iput-object v0, p0, Lhci;->y:Lhek;

    .line 333
    new-instance v0, Lhbt;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhbt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhci;->m:Lhbt;

    .line 334
    new-instance v0, Lhef;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lhef;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhci;->n:Lhef;

    .line 336
    invoke-virtual {p1}, Lhcd;->b()Lhiv;

    move-result-object v0

    iput-object v0, p0, Lhci;->u:Lhiv;

    .line 337
    new-instance v0, Lhfm;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lhfm;-><init>(Landroid/content/Context;Lhcd;)V

    iput-object v0, p0, Lhci;->v:Lhfm;

    .line 338
    return-void

    .line 3395
    :cond_0
    if-eqz v0, :cond_1

    .line 3397
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 3398
    :catch_0
    move-exception v0

    .line 3400
    const-string v1, "vclib"

    const-string v3, "AudioManager sample rate is invalid."

    invoke-static {v1, v3, v0}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v2

    .line 3404
    goto/16 :goto_0

    .line 4367
    :cond_2
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v1, "ec_supported"

    .line 4368
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4369
    if-eqz v0, :cond_4

    .line 4370
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4371
    array-length v1, v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 4372
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 4373
    const-string v1, "yes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4375
    :cond_3
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, v6}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->b(Z)V

    .line 4380
    :cond_4
    iget-object v0, p0, Lhci;->g:Lheh;

    const-string v1, "babel_hangout_audio_record_sampling_rate"

    invoke-virtual {v0, v1, v2}, Lheh;->a(Ljava/lang/String;I)I

    move-result v0

    .line 4383
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->setDefaultSampleRateHz(I)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lhci;Lhil;Latn;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lhci;->a(Lhil;Latn;)V

    return-void
.end method

.method private a(Lhil;Latn;)V
    .locals 2

    .prologue
    .line 881
    invoke-static {}, Laal;->w()V

    .line 882
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 883
    invoke-interface {v0, p1, p2}, Lhcu;->a(Lhil;Latn;)V

    goto :goto_0

    .line 885
    :cond_0
    return-void
.end method

.method static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 24162
    invoke-static {v2}, Lhlk;->a(I)Z

    move-result v0

    .line 1026
    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "vclib"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 25073
    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1029
    :cond_0
    return-void
.end method

.method private a([BZI)V
    .locals 3

    .prologue
    .line 1439
    iget-object v0, p0, Lhci;->c:Lhcs;

    .line 33198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1441
    :try_start_0
    new-instance v0, Ljux;

    invoke-direct {v0}, Ljux;-><init>()V

    .line 34131
    array-length v1, p1

    invoke-static {v0, p1, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 1441
    check-cast v0, Ljux;

    .line 1442
    iget-object v1, v0, Ljux;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 34144
    const-string v2, "Expected condition to be false"

    invoke-static {v2, v1}, Lhbs;->b(Ljava/lang/String;Z)V

    .line 1443
    iget-object v1, p0, Lhci;->c:Lhcs;

    iget-object v2, v0, Ljux;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lhcs;->e(Ljava/lang/String;)V

    .line 1444
    if-eqz p2, :cond_1

    .line 1449
    iget-object v1, v0, Ljux;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1450
    iget-object v1, p0, Lhci;->c:Lhcs;

    invoke-virtual {v1}, Lhcs;->k()Lhcw;

    move-result-object v1

    iget-object v2, v0, Ljux;->d:Ljava/lang/String;

    iget-object v0, v0, Ljux;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p3}, Lhcw;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    iget-object v1, p0, Lhci;->c:Lhcs;

    invoke-virtual {v1}, Lhcs;->k()Lhcw;

    move-result-object v1

    iget-object v0, v0, Ljux;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lhcw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    const-string v1, "vclib"

    const-string v2, "Unable to parse HandoffLogEntry proto from bytes"

    invoke-static {v1, v2, v0}, Lhlk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([Lcom/google/android/libraries/hangouts/video/internal/NamedSource;I)V
    .locals 6

    .prologue
    .line 888
    invoke-static {}, Laal;->w()V

    .line 889
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v0, p1, v1

    .line 892
    iget-object v3, p0, Lhci;->c:Lhcs;

    invoke-virtual {v3}, Lhcs;->m()Lhip;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->a:Ljava/lang/String;

    iget-object v4, p0, Lhci;->c:Lhcs;

    .line 893
    invoke-virtual {v4}, Lhcs;->m()Lhip;

    move-result-object v4

    invoke-virtual {v4}, Lhip;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 897
    :cond_0
    iget-object v3, p0, Lhci;->c:Lhcs;

    iget-object v4, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lhcs;->c(Ljava/lang/String;)Lhil;

    move-result-object v3

    .line 898
    if-nez v3, :cond_3

    .line 902
    const-string v3, "vclib"

    const-string v4, "Received a media source update for an unknown participant: "

    iget-object v0, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16101
    :goto_1
    const/4 v4, 0x6

    invoke-static {v4, v3, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 902
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 908
    :cond_3
    packed-switch p2, :pswitch_data_0

    .line 922
    const-string v4, "Unexpected MediaSourceEvent type"

    invoke-static {v4}, Lhbs;->a(Ljava/lang/String;)V

    .line 926
    :goto_2
    new-instance v4, Lhiq;

    iget v0, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->c:I

    invoke-direct {v4, p2, v0}, Lhiq;-><init>(II)V

    .line 927
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 928
    invoke-interface {v0, v3, v4}, Lhcu;->a(Lhil;Latn;)V

    goto :goto_3

    .line 910
    :pswitch_0
    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->c:I

    invoke-virtual {v3, v4}, Lhil;->b(I)V

    goto :goto_2

    .line 913
    :pswitch_1
    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->c:I

    invoke-virtual {v3, v4}, Lhil;->c(I)V

    goto :goto_2

    .line 916
    :pswitch_2
    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->c:I

    invoke-virtual {v3, v4}, Lhil;->d(I)V

    goto :goto_2

    .line 919
    :pswitch_3
    iget v4, v0, Lcom/google/android/libraries/hangouts/video/internal/NamedSource;->c:I

    invoke-virtual {v3, v4}, Lhil;->e(I)V

    goto :goto_2

    .line 931
    :cond_4
    return-void

    .line 908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private c(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 851
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0, p2}, Lhcs;->a(I)V

    .line 852
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lhci;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 501
    if-nez v0, :cond_0

    .line 502
    const-string v0, "networkType"

    .line 504
    :goto_0
    return-object v0

    :cond_0
    const-string v1, "networkType"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 539
    iget-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 11134
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 540
    invoke-static {}, Laal;->w()V

    .line 543
    iget-object v1, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    const-string v2, "apiaryUri: "

    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    .line 547
    iget-object v1, p0, Lhci;->c:Lhcs;

    invoke-virtual {v1}, Lhcs;->j()Lhkt;

    move-result-object v1

    .line 548
    invoke-static {v1}, Lhit;->a(Lhkt;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    new-instance v2, Lhit;

    iget-object v3, p0, Lhci;->e:Landroid/content/Context;

    iget-object v4, p0, Lhci;->q:Lhhe;

    new-instance v5, Lhck;

    invoke-direct {v5, p0, v0, v1}, Lhck;-><init>(Lhci;Ljava/lang/String;Lhkt;)V

    invoke-direct {v2, v3, v4, v1, v5}, Lhit;-><init>(Landroid/content/Context;Lhbl;Lhkt;Lhbp;)V

    iput-object v2, p0, Lhci;->s:Lhit;

    .line 563
    iget-object v0, p0, Lhci;->s:Lhit;

    invoke-virtual {v0}, Lhit;->b()V

    .line 570
    :goto_1
    return-void

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :cond_1
    const-string v2, "initiateCall for "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v1}, Lhkt;->f()Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v2, p0, Lhci;->c:Lhcs;

    invoke-virtual {v2, v0}, Lhcs;->a(Ljava/lang/String;)V

    .line 568
    iget-object v2, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Lhkt;Ljava/lang/String;)V

    goto :goto_1

    .line 565
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 939
    const-string v0, "CallManager.finishCall"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 940
    iget-object v0, p0, Lhci;->A:Ljava/lang/Runnable;

    .line 17089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17649
    invoke-static {}, Laal;->w()V

    .line 17650
    const-string v0, "CallManager.endCallAndSignOut"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17651
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 17652
    const-string v0, "vclib"

    const-string v1, "Ignoring endCallAndSignOut; call never joined."

    .line 18081
    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 18990
    :goto_0
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->a()I

    move-result v0

    if-eqz v0, :cond_0

    .line 18991
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0, v4}, Lhek;->a(I)V

    .line 19588
    :cond_0
    invoke-static {}, Laal;->w()V

    .line 19589
    iget-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 19590
    const-string v0, "vclib"

    const-string v1, "Releasing WakeLock"

    .line 20081
    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 19591
    iget-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 19592
    iput-object v5, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    .line 19595
    :cond_1
    iget-object v0, p0, Lhci;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19596
    const-string v0, "vclib"

    const-string v1, "Releasing WiFi lock"

    .line 21081
    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 19597
    iget-object v0, p0, Lhci;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 945
    :cond_2
    iget-object v0, p0, Lhci;->h:Lhej;

    invoke-virtual {v0, v5}, Lhej;->a(Lhei;)V

    .line 951
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->b()V

    .line 955
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_6

    .line 956
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->p()I

    move-result v0

    const/16 v1, 0x3f7

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lhci;->c:Lhcs;

    .line 957
    invoke-virtual {v0}, Lhcs;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 959
    new-instance v1, Lhcn;

    iget-object v0, p0, Lhci;->r:Lhbo;

    const-class v2, Lhbh;

    .line 961
    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    iget-object v2, p0, Lhci;->c:Lhcs;

    .line 962
    invoke-virtual {v2}, Lhcs;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lhcn;-><init>(Lhbh;Ljava/lang/String;)V

    .line 959
    invoke-static {v1}, Lhbw;->a(Ljava/lang/Runnable;)V

    .line 971
    :goto_1
    iget-object v0, p0, Lhci;->l:Lhcp;

    if-eqz v0, :cond_3

    .line 972
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    iget-object v1, p0, Lhci;->l:Lhcp;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 973
    iput-object v5, p0, Lhci;->l:Lhcp;

    .line 976
    :cond_3
    iget-object v0, p0, Lhci;->n:Lhef;

    invoke-virtual {v0}, Lhef;->a()V

    .line 978
    iget-object v0, p0, Lhci;->v:Lhfm;

    invoke-virtual {v0}, Lhfm;->a()V

    .line 980
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 981
    iget-object v2, p0, Lhci;->c:Lhcs;

    invoke-interface {v0, v2}, Lhcu;->b(Lhcs;)V

    goto :goto_2

    .line 17655
    :cond_4
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0, v6}, Lhek;->a(I)V

    .line 17656
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->b()V

    .line 17657
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->e()V

    goto/16 :goto_0

    .line 964
    :cond_5
    const-string v0, "vclib"

    const-string v1, "Skiping LeaveHandler, endCause: %d, resolveHangoutId: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lhci;->c:Lhcs;

    .line 965
    invoke-virtual {v3}, Lhcs;->p()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lhci;->c:Lhcs;

    invoke-virtual {v4}, Lhcs;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 22077
    invoke-static {v6, v0, v1, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 968
    :cond_6
    const-string v0, "vclib"

    const-string v1, "currentCall is null; leave not required."

    .line 23073
    invoke-static {v6, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 984
    :cond_7
    iput-object v5, p0, Lhci;->c:Lhcs;

    .line 985
    iget-object v0, p0, Lhci;->o:Lhgv;

    invoke-virtual {v0, v5}, Lhgv;->a(Lhhb;)V

    .line 986
    iget-object v0, p0, Lhci;->q:Lhhe;

    invoke-virtual {v0}, Lhhe;->a()V

    .line 987
    return-void
.end method


# virtual methods
.method a()Lhcs;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    invoke-static {}, Laal;->w()V

    .line 413
    iget-object v0, p0, Lhci;->c:Lhcs;

    return-object v0
.end method

.method a(CILjava/lang/String;)V
    .locals 1

    .prologue
    .line 736
    invoke-static {}, Laal;->w()V

    .line 737
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(CILjava/lang/String;)V

    .line 738
    return-void
.end method

.method a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 664
    invoke-static {}, Laal;->w()V

    .line 665
    iget-boolean v0, p0, Lhci;->C:Z

    if-eqz v0, :cond_0

    .line 666
    const-string v0, "vclib"

    const-string v1, "Terminate already started; ignoring."

    .line 13089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 700
    :goto_0
    return-void

    .line 670
    :cond_0
    iput-boolean v5, p0, Lhci;->C:Z

    .line 672
    iget-object v0, p0, Lhci;->s:Lhit;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lhci;->s:Lhit;

    invoke-virtual {v0}, Lhit;->a()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lhci;->s:Lhit;

    .line 677
    :cond_1
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_4

    .line 678
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    .line 679
    const-string v1, "vclib"

    const-string v2, "terminateCall sessionId: %s endCause: %d"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    .line 14077
    const/4 v0, 0x3

    invoke-static {v0, v1, v2, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14527
    iget-object v0, p0, Lhci;->p:Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

    if-eqz v0, :cond_2

    .line 14530
    iget-object v0, p0, Lhci;->p:Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

    iget v0, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;->a:I

    .line 14531
    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    const-string v2, "startBitrate"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 14533
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 14534
    invoke-direct {p0}, Lhci;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 14535
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 681
    :cond_2
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0, p1}, Lhcs;->c(I)V

    .line 683
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->a()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 685
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->f()V

    .line 690
    iget-object v0, p0, Lhci;->A:Ljava/lang/Runnable;

    sget-wide v2, Lhci;->z:J

    invoke-static {v0, v2, v3}, Laal;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 694
    :cond_3
    invoke-direct {p0}, Lhci;->g()V

    goto :goto_0

    .line 697
    :cond_4
    const-string v0, "vclib"

    const-string v1, "terminateCall: abandoned"

    .line 15081
    const/4 v2, 0x4

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-direct {p0}, Lhci;->g()V

    goto :goto_0
.end method

.method public a(II[B)V
    .locals 1

    .prologue
    .line 1309
    invoke-static {}, Laal;->w()V

    .line 1310
    iget-object v0, p0, Lhci;->r:Lhbo;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lhci;->r:Lhbo;

    invoke-virtual {v0, p1, p2, p3}, Lhbo;->a(II[B)V

    .line 1313
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1328
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 1330
    invoke-static {}, Laal;->w()V

    .line 1331
    iget-object v0, p0, Lhci;->f:Lhcd;

    invoke-virtual {v0}, Lhcd;->j()Lhku;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lhku;->a(ILjava/lang/String;)V

    .line 1332
    return-void
.end method

.method public a(JII)V
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lhci;->u:Lhiv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lhiv;->a(JII)V

    .line 1500
    return-void
.end method

.method public a(JLjava/lang/String;[BI)V
    .locals 7

    .prologue
    .line 1285
    iget-object v1, p0, Lhci;->o:Lhgv;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lhgv;->a(JLjava/lang/String;[BI)V

    .line 1286
    return-void
.end method

.method public a(Lcom/google/android/libraries/hangouts/video/internal/Stats;)V
    .locals 3

    .prologue
    .line 1043
    instance-of v0, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 1044
    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;

    .line 1045
    iget-object v1, p0, Lhci;->w:Ljava/util/Map;

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    iget-object v1, p0, Lhci;->w:Ljava/util/Map;

    iget v2, v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;

    .line 1047
    iget v2, v1, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->width:I

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;->b(I)V

    .line 1048
    iget v1, v1, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->height:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;->c(I)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhcw;->b(Lcom/google/android/libraries/hangouts/video/internal/Stats;)V

    .line 1052
    return-void
.end method

.method a(Lhcu;)V
    .locals 1

    .prologue
    .line 835
    invoke-static {}, Laal;->w()V

    .line 836
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 837
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_0
    return-void
.end method

.method a(Ljava/io/PrintWriter;)V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-nez v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhcw;->a(Ljava/io/PrintWriter;)V

    .line 1014
    invoke-virtual {p0}, Lhci;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    const-string v0, "Call info"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    const-string v1, "     media state: "

    .line 23431
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1016
    :goto_1
    if-eqz v0, :cond_3

    const-string v0, "connected"

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    const-string v1, "  localSessionId: "

    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1019
    const-string v1, "     hangoutId: "

    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    :cond_1
    invoke-static {}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->c()V

    goto :goto_0

    .line 23431
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1016
    :cond_3
    const-string v0, "-"

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1017
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 1019
    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 762
    invoke-static {}, Laal;->w()V

    .line 763
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1317
    invoke-static {}, Laal;->w()V

    .line 1318
    invoke-direct {p0, p1}, Lhci;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 1321
    invoke-interface {v0, p1, p2}, Lhcu;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1324
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 14

    .prologue
    .line 25162
    const/4 v3, 0x3

    invoke-static {v3}, Lhlk;->a(I)Z

    move-result v3

    .line 1115
    if-eqz v3, :cond_0

    .line 1116
    const-string v3, "handleEndpointEvent: participantId=%s eventType=%s, args=%d, %s, %s, %s, participantProto? %b"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 1119
    invoke-static/range {p2 .. p2}, Lhej;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 1120
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    const/4 v5, 0x4

    aput-object p5, v4, v5

    const/4 v5, 0x5

    aput-object p6, v4, v5

    const/4 v5, 0x6

    aput-object p7, v4, v5

    .line 1116
    invoke-static {v3, v4}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1127
    :cond_0
    iget-object v3, p0, Lhci;->c:Lhcs;

    if-nez v3, :cond_2

    .line 1128
    const-string v3, "Got endpoint event, but there\'s no current call. Ignore."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    iget-object v3, p0, Lhci;->c:Lhcs;

    invoke-virtual {v3, p1}, Lhcs;->b(Ljava/lang/String;)Lhil;

    move-result-object v5

    .line 1133
    if-eqz p2, :cond_3

    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 1135
    :cond_3
    if-nez v5, :cond_1

    .line 1139
    const/4 v5, 0x0

    .line 1140
    new-instance v4, Lkhk;

    invoke-direct {v4}, Lkhk;-><init>()V

    .line 1142
    if-eqz p7, :cond_17

    .line 26131
    :try_start_0
    move-object/from16 v0, p7

    array-length v3, v0

    move-object/from16 v0, p7

    invoke-static {v4, v0, v3}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v3

    .line 1143
    check-cast v3, Lkhk;
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    :try_start_1
    iget-object v4, v3, Lkhk;->e:Ljava/lang/String;
    :try_end_1
    .catch Llyg; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    move-object v12, v3

    move-object v6, v4

    .line 1151
    :goto_2
    const/4 v9, 0x0

    .line 1153
    iget-object v3, v12, Lkhk;->n:Ljava/lang/Integer;

    .line 27043
    const/4 v4, 0x0

    invoke-static {v3, v4}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v3

    .line 1153
    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 1154
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lhbs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1156
    new-instance v4, Lhir;

    move-object/from16 v0, p5

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v4, p1, v0, v1, v2}, Lhir;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    :goto_3
    if-eqz v9, :cond_6

    .line 1173
    iget-object v5, p0, Lhci;->c:Lhcs;

    move-object v3, v4

    check-cast v3, Lhip;

    invoke-virtual {v5, v3}, Lhcs;->a(Lhip;)V

    .line 1177
    :goto_4
    new-instance v3, Lhin;

    invoke-direct {v3}, Lhin;-><init>()V

    .line 1179
    if-nez p2, :cond_a

    .line 1180
    const/4 v5, 0x0

    .line 1181
    if-eqz v12, :cond_15

    .line 1183
    iget-object v5, p0, Lhci;->r:Lhbo;

    sget-object v6, Lhbh;->a:Lhbq;

    .line 1184
    invoke-interface {v6, v12}, Lhbq;->a(Llyi;)Ljava/lang/String;

    move-result-object v6

    .line 1183
    invoke-virtual {v5, v6}, Lhbo;->a(Ljava/lang/String;)V

    .line 1185
    iget-object v5, p0, Lhci;->v:Lhfm;

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    aput v8, v6, v7

    invoke-virtual {v5, v6}, Lhfm;->a([I)V

    .line 27856
    :goto_5
    if-eqz v12, :cond_9

    .line 27857
    const-string v5, "Updating privileges from proto"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27858
    iget-object v6, v12, Lkhk;->s:[I

    array-length v7, v6

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_7

    aget v8, v6, v5

    .line 27859
    packed-switch v8, :pswitch_data_0

    .line 27858
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1146
    :catch_0
    move-exception v3

    move-object v13, v3

    move-object v3, v4

    move-object v4, v13

    .line 1148
    :goto_8
    const-string v6, "vclib"

    const-string v7, "Could not parse participantProto"

    invoke-static {v6, v7, v4}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v12, v3

    move-object v6, v5

    goto :goto_2

    .line 1160
    :cond_4
    if-nez p2, :cond_5

    const/4 v9, 0x1

    .line 1162
    :goto_9
    if-nez v9, :cond_16

    iget-object v3, p0, Lhci;->c:Lhcs;

    invoke-virtual {v3}, Lhcs;->m()Lhip;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1165
    iget-object v3, p0, Lhci;->c:Lhcs;

    invoke-virtual {v3}, Lhcs;->m()Lhip;

    move-result-object v3

    invoke-virtual {v3}, Lhip;->u()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1168
    :goto_a
    new-instance v3, Lhip;

    move-object v4, p1

    move-object/from16 v5, p5

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p6

    invoke-direct/range {v3 .. v11}, Lhip;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZLjava/lang/String;)V

    move-object v4, v3

    goto :goto_3

    .line 1160
    :cond_5
    const/4 v9, 0x0

    goto :goto_9

    .line 1175
    :cond_6
    iget-object v3, p0, Lhci;->c:Lhcs;

    invoke-virtual {v3, v4}, Lhcs;->a(Lhil;)V

    goto :goto_4

    .line 27861
    :pswitch_0
    invoke-virtual {v4}, Lhil;->q()V

    goto :goto_7

    .line 27864
    :pswitch_1
    invoke-virtual {v4}, Lhil;->s()V

    goto :goto_7

    :cond_7
    move-object v5, v4

    move-object v4, v3

    .line 1268
    :cond_8
    :goto_b
    invoke-direct {p0, v5, v4}, Lhci;->a(Lhil;Latn;)V

    goto/16 :goto_0

    .line 27876
    :cond_9
    const-string v5, "Fallback to legacy privileges"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27877
    invoke-virtual {v4}, Lhil;->q()V

    :cond_a
    move-object v5, v4

    move-object v4, v3

    .line 1189
    goto :goto_b

    :cond_b
    const/4 v3, 0x2

    move/from16 v0, p2

    if-ne v0, v3, :cond_f

    .line 1190
    if-nez v5, :cond_c

    .line 1192
    const-string v3, "vclib"

    const-string v4, "Got an ENDPOINT_EXITED event for %s, which doesn\'t exist in endpoints"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v4, v5}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1197
    :cond_c
    const/4 v4, 0x0

    .line 1198
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1200
    :try_start_2
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 1207
    :goto_c
    iget-object v4, p0, Lhci;->c:Lhcs;

    invoke-virtual {v4, v5}, Lhcs;->b(Lhil;)V

    .line 1208
    new-instance v4, Lhio;

    invoke-direct {v4, v3}, Lhio;-><init>(Ljava/lang/Integer;)V

    goto :goto_b

    .line 1202
    :catch_1
    move-exception v3

    const-string v6, "vclib"

    const-string v7, "CallState - unexpected endpoint exit error string:"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28089
    :goto_d
    const/4 v7, 0x5

    invoke-static {v7, v6, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    move-object v3, v4

    goto :goto_c

    .line 1202
    :cond_e
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 1210
    :cond_f
    if-eqz v5, :cond_1

    .line 1217
    packed-switch p2, :pswitch_data_1

    .line 1262
    const-string v3, "Unexpected event type"

    invoke-static {v3}, Lhbs;->a(Ljava/lang/String;)V

    .line 1263
    const/4 v4, 0x0

    goto :goto_b

    .line 1219
    :pswitch_2
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lhil;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    new-instance v4, Lhik;

    invoke-direct {v4}, Lhik;-><init>()V

    goto :goto_b

    .line 1226
    :pswitch_3
    if-eqz p3, :cond_10

    const/4 v3, 0x1

    move v6, v3

    .line 1227
    :goto_e
    if-nez p4, :cond_11

    const/4 v3, 0x0

    .line 1230
    :goto_f
    if-ne v5, v3, :cond_12

    .line 1231
    const-string v3, "vclib"

    const-string v4, "Got a remote mute request with the wrong by_participant_id, ignoring."

    .line 29089
    const/4 v5, 0x5

    invoke-static {v5, v3, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1226
    :cond_10
    const/4 v3, 0x0

    move v6, v3

    goto :goto_e

    .line 1228
    :cond_11
    iget-object v3, p0, Lhci;->c:Lhcs;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lhcs;->b(Ljava/lang/String;)Lhil;

    move-result-object v3

    goto :goto_f

    .line 1235
    :cond_12
    new-instance v4, Lhij;

    invoke-direct {v4, v6, v3}, Lhij;-><init>(ZLhil;)V

    .line 1236
    invoke-virtual {v5}, Lhil;->k()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1237
    if-eqz v3, :cond_8

    move-object v3, v4

    .line 1242
    check-cast v3, Lhij;

    invoke-virtual {v3}, Lhij;->a()Z

    move-result v3

    .line 29134
    const-string v7, "Expected condition to be true"

    invoke-static {v7, v3}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 30011
    invoke-static {v6}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->setMicrophoneMute(Z)V

    .line 1246
    invoke-virtual {v5, v6}, Lhil;->a(Z)V

    goto/16 :goto_b

    .line 1249
    :cond_13
    invoke-virtual {v5, v6}, Lhil;->a(Z)V

    goto/16 :goto_b

    .line 1254
    :pswitch_4
    if-eqz p3, :cond_14

    const/4 v3, 0x1

    move v4, v3

    .line 1255
    :goto_10
    instance-of v3, v5, Lhip;

    .line 30134
    const-string v6, "Expected condition to be true"

    invoke-static {v6, v3}, Lhbs;->a(Ljava/lang/String;Z)V

    move-object v3, v5

    .line 1256
    check-cast v3, Lhip;

    .line 1257
    invoke-virtual {v3, v4}, Lhip;->b(Z)V

    .line 1258
    new-instance v3, Lhis;

    invoke-direct {v3, v4}, Lhis;-><init>(Z)V

    move-object v4, v3

    .line 1259
    goto/16 :goto_b

    .line 1254
    :cond_14
    const/4 v3, 0x0

    move v4, v3

    goto :goto_10

    .line 1146
    :catch_2
    move-exception v4

    goto/16 :goto_8

    :cond_15
    move-object v12, v5

    goto/16 :goto_5

    :cond_16
    move v10, v9

    goto/16 :goto_a

    :cond_17
    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    .line 27859
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1217
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/google/android/libraries/hangouts/video/internal/MediaSources;)V
    .locals 2

    .prologue
    .line 1273
    invoke-static {}, Laal;->w()V

    .line 1274
    invoke-direct {p0, p1}, Lhci;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1281
    :goto_0
    return-void

    .line 1277
    :cond_0
    iget-object v0, p2, Lcom/google/android/libraries/hangouts/video/internal/MediaSources;->a:[Lcom/google/android/libraries/hangouts/video/internal/NamedSource;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lhci;->a([Lcom/google/android/libraries/hangouts/video/internal/NamedSource;I)V

    .line 1278
    iget-object v0, p2, Lcom/google/android/libraries/hangouts/video/internal/MediaSources;->b:[Lcom/google/android/libraries/hangouts/video/internal/NamedSource;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lhci;->a([Lcom/google/android/libraries/hangouts/video/internal/NamedSource;I)V

    .line 1279
    iget-object v0, p2, Lcom/google/android/libraries/hangouts/video/internal/MediaSources;->c:[Lcom/google/android/libraries/hangouts/video/internal/NamedSource;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lhci;->a([Lcom/google/android/libraries/hangouts/video/internal/NamedSource;I)V

    .line 1280
    iget-object v0, p2, Lcom/google/android/libraries/hangouts/video/internal/MediaSources;->d:[Lcom/google/android/libraries/hangouts/video/internal/NamedSource;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lhci;->a([Lcom/google/android/libraries/hangouts/video/internal/NamedSource;I)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ZZZ[B)V
    .locals 7

    .prologue
    .line 730
    invoke-static {}, Laal;->w()V

    .line 731
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Ljava/lang/String;Ljava/lang/String;ZZZ[B)V

    .line 733
    return-void
.end method

.method a(Z)V
    .locals 1

    .prologue
    .line 798
    invoke-static {}, Laal;->w()V

    .line 799
    iget-boolean v0, p0, Lhci;->x:Z

    if-eq p1, v0, :cond_0

    .line 800
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->e(Z)V

    .line 801
    iput-boolean p1, p0, Lhci;->x:Z

    .line 803
    :cond_0
    return-void
.end method

.method a(Z[Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 718
    invoke-static {}, Laal;->w()V

    .line 719
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    const/4 v6, 0x0

    move-object v2, p2

    move v4, v3

    move v5, v1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Z[Ljava/lang/String;IZZLjava/lang/String;)V

    .line 726
    return-void
.end method

.method public a([B)V
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Laal;->w()V

    .line 15423
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c()Z

    move-result v0

    .line 706
    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->handlePushNotification([B)V

    .line 709
    :cond_0
    return-void
.end method

.method a([Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 746
    invoke-static {}, Laal;->w()V

    .line 747
    iget-boolean v0, p0, Lhci;->C:Z

    if-eqz v0, :cond_0

    .line 748
    const-string v0, "vclib"

    const-string v1, "Ignoring view request issued while leaving a call."

    .line 16089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 759
    :goto_0
    return-void

    :cond_0
    move v0, v1

    .line 751
    :goto_1
    if-gtz v0, :cond_2

    aget-object v2, p1, v1

    .line 752
    iget v3, v2, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->width:I

    if-nez v3, :cond_1

    iget v3, v2, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->height:I

    if-nez v3, :cond_1

    .line 753
    iget-object v3, p0, Lhci;->w:Ljava/util/Map;

    iget v2, v2, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->ssrc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 755
    :cond_1
    iget-object v3, p0, Lhci;->w:Ljava/util/Map;

    iget v4, v2, Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;->ssrc:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 758
    :cond_2
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a([Lcom/google/android/libraries/hangouts/video/internal/VideoViewRequest;)V

    goto :goto_0
.end method

.method a(Lhkt;)Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 454
    invoke-static {}, Laal;->w()V

    .line 455
    iget-object v0, p0, Lhci;->c:Lhcs;

    .line 5188
    const-string v3, "Expected null"

    invoke-static {v3, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p1}, Lhkt;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No session id provided for call"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    new-instance v0, Lhcs;

    invoke-direct {v0, p1}, Lhcs;-><init>(Lhkt;)V

    iput-object v0, p0, Lhci;->c:Lhcs;

    .line 463
    iget-object v0, p0, Lhci;->b:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 464
    if-nez v3, :cond_1

    .line 465
    const-string v0, "vclib"

    const-string v2, "No network connected"

    .line 6101
    const/4 v3, 0x6

    invoke-static {v3, v0, v2}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 6934
    iget-object v0, p0, Lhci;->c:Lhcs;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lhcs;->c(I)V

    .line 6935
    invoke-direct {p0}, Lhci;->g()V

    move v0, v1

    .line 495
    :goto_0
    return v0

    .line 7573
    :cond_1
    iget-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    .line 8188
    const-string v4, "Expected null"

    invoke-static {v4, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7574
    invoke-static {}, Laal;->w()V

    .line 7575
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 7576
    const v4, 0x20000001

    const-string v5, "vclib"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    .line 7578
    const-string v0, "vclib"

    const-string v4, "Acquiring WakeLock"

    .line 9081
    invoke-static {v6, v0, v4}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 7579
    iget-object v0, p0, Lhci;->t:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7581
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 7582
    const-string v0, "vclib"

    const-string v3, "Acquiring WiFi lock"

    .line 10081
    invoke-static {v6, v0, v3}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 7583
    iget-object v0, p0, Lhci;->k:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 471
    :cond_2
    iget-object v0, p0, Lhci;->c:Lhcs;

    iget-object v3, p0, Lhci;->m:Lhbt;

    invoke-virtual {v3}, Lhbt;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lhcs;->b(I)V

    .line 473
    invoke-virtual {p1}, Lhkt;->u()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 475
    new-instance v3, Lhcp;

    .line 10502
    invoke-direct {v3, p0}, Lhcp;-><init>(Lhci;)V

    .line 475
    iput-object v3, p0, Lhci;->l:Lhcp;

    .line 476
    iget-object v3, p0, Lhci;->e:Landroid/content/Context;

    iget-object v4, p0, Lhci;->l:Lhcp;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    :cond_3
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 492
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0}, Lhek;->a()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected sign-in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move v0, v1

    .line 493
    goto/16 :goto_0

    .line 481
    :pswitch_0
    const-string v0, "We\'re not yet signed in; signing in and postponing initiation until done"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-virtual {p0, p1}, Lhci;->b(Lhkt;)V

    :goto_1
    move v0, v2

    .line 495
    goto/16 :goto_0

    .line 485
    :pswitch_1
    const-string v0, "Sign-in in progress. Postponing initiation until done"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 488
    :pswitch_2
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->c()V

    .line 489
    invoke-direct {p0}, Lhci;->f()V

    goto :goto_1

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b()Lhek;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Laal;->w()V

    .line 419
    iget-object v0, p0, Lhci;->y:Lhek;

    return-object v0
.end method

.method public b(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1341
    if-ne p1, v1, :cond_0

    .line 1342
    iget-object v0, p0, Lhci;->v:Lhfm;

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x7

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lhfm;->a([I)V

    .line 1344
    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "CallManager.handleCallEnd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-static {}, Laal;->w()V

    .line 1350
    iget-object v2, p0, Lhci;->c:Lhcs;

    if-nez v2, :cond_4

    .line 31203
    const/16 v2, 0x15

    if-eq p1, v2, :cond_0

    const/16 v2, 0x16

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3eb

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3f7

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x3fa

    if-ne p1, v2, :cond_3

    :cond_0
    move v2, v1

    .line 1354
    :goto_0
    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    if-ne p1, v2, :cond_2

    :cond_1
    move v0, v1

    .line 32134
    :cond_2
    const-string v1, "Expected condition to be true"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 1361
    :goto_1
    return-void

    :cond_3
    move v2, v0

    .line 31203
    goto :goto_0

    .line 1357
    :cond_4
    iget-object v1, p0, Lhci;->c:Lhcs;

    invoke-virtual {v1, p1, p2}, Lhcs;->a(ILjava/lang/String;)V

    .line 1358
    const-string v1, "CallManager.handleCallEnd - finishing call"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1359
    invoke-direct {p0}, Lhci;->g()V

    goto :goto_1
.end method

.method public b(Lcom/google/android/libraries/hangouts/video/internal/Stats;)V
    .locals 8

    .prologue
    const v7, 0x16e360

    const v6, 0xf4240

    const v3, 0x7a120

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1057
    instance-of v0, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1058
    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;

    .line 1059
    iget-object v1, p0, Lhci;->c:Lhcs;

    invoke-virtual {v1}, Lhcs;->n()I

    move-result v1

    .line 1060
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->setMediaNetworkType(I)V

    .line 1061
    iget-object v2, p0, Lhci;->m:Lhbt;

    invoke-virtual {v2, v1}, Lhbt;->a(I)Ljum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/Stats$ConnectionInfoStats;->setSignalStrength(Ljum;)V

    .line 1066
    :cond_0
    :goto_0
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhcw;->a(Lcom/google/android/libraries/hangouts/video/internal/Stats;)V

    .line 1068
    new-instance v0, Ljuk;

    invoke-direct {v0}, Ljuk;-><init>()V

    .line 1069
    iget-object v1, p0, Lhci;->f:Lhcd;

    invoke-virtual {v1}, Lhcd;->j()Lhku;

    move-result-object v1

    .line 1070
    instance-of v2, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceSenderStats;

    if-eqz v2, :cond_3

    .line 1071
    check-cast p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceSenderStats;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceSenderStats;->addTo(Ljuk;)V

    .line 1072
    invoke-virtual {v1, v0}, Lhku;->a(Ljuk;)V

    .line 1089
    :cond_1
    :goto_1
    return-void

    .line 1062
    :cond_2
    instance-of v0, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, p0, Lhci;->n:Lhef;

    move-object v0, p1

    check-cast v0, Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;

    invoke-virtual {v1, v0}, Lhef;->a(Lcom/google/android/libraries/hangouts/video/internal/Stats$GlobalStats;)V

    goto :goto_0

    .line 1073
    :cond_3
    instance-of v2, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;

    if-eqz v2, :cond_4

    .line 1074
    check-cast p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VoiceReceiverStats;->addTo(Ljuk;)V

    .line 1075
    invoke-virtual {v1, v0}, Lhku;->a(Ljuk;)V

    goto :goto_1

    .line 1076
    :cond_4
    instance-of v2, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;

    if-eqz v2, :cond_5

    .line 1077
    check-cast p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoSenderStats;->addTo(Ljuk;)V

    .line 1078
    invoke-virtual {v1, v0}, Lhku;->a(Ljuk;)V

    goto :goto_1

    .line 1079
    :cond_5
    instance-of v2, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;

    if-eqz v2, :cond_6

    .line 1080
    check-cast p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats$VideoReceiverStats;->addTo(Ljuk;)V

    .line 1081
    invoke-virtual {v1, v0}, Lhku;->a(Ljuk;)V

    goto :goto_1

    .line 1082
    :cond_6
    instance-of v2, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

    if-eqz v2, :cond_1

    .line 1083
    check-cast p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

    .line 1084
    iput-object p1, p0, Lhci;->p:Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;

    .line 1085
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;->addTo(Ljuk;)V

    .line 1086
    invoke-virtual {v1, v0}, Lhku;->a(Ljuk;)V

    .line 1087
    iget v0, p1, Lcom/google/android/libraries/hangouts/video/internal/Stats$BandwidthEstimationStats;->a:I

    .line 25093
    if-lt v0, v3, :cond_7

    iget-object v1, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 25094
    iget-object v1, p0, Lhci;->u:Lhiv;

    const/16 v2, 0xa86

    invoke-virtual {v1, v2}, Lhiv;->a(I)V

    .line 25095
    iget-object v1, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25096
    iget-object v1, p0, Lhci;->v:Lhfm;

    new-array v2, v5, [I

    const/16 v3, 0x1f5

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lhfm;->a([I)V

    .line 25099
    :cond_7
    if-lt v0, v6, :cond_8

    iget-object v1, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 25100
    iget-object v1, p0, Lhci;->u:Lhiv;

    const/16 v2, 0xa87

    invoke-virtual {v1, v2}, Lhiv;->a(I)V

    .line 25101
    iget-object v1, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25102
    iget-object v1, p0, Lhci;->v:Lhfm;

    new-array v2, v5, [I

    const/16 v3, 0x1f6

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Lhfm;->a([I)V

    .line 25105
    :cond_8
    if-lt v0, v7, :cond_1

    iget-object v0, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25106
    iget-object v0, p0, Lhci;->u:Lhiv;

    const/16 v1, 0xa88

    invoke-virtual {v0, v1}, Lhiv;->a(I)V

    .line 25107
    iget-object v0, p0, Lhci;->B:Ljava/util/Set;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25108
    iget-object v0, p0, Lhci;->v:Lhfm;

    new-array v1, v5, [I

    const/16 v2, 0x1f7

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lhfm;->a([I)V

    goto/16 :goto_1
.end method

.method b(Lhcu;)V
    .locals 1

    .prologue
    .line 842
    invoke-static {}, Laal;->w()V

    .line 843
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 844
    return-void
.end method

.method b(Lhkt;)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 638
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-class v1, Lhcb;

    invoke-static {v0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcb;

    .line 639
    invoke-virtual {p1}, Lhkt;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhcb;->a(Ljava/lang/String;)Lhca;

    move-result-object v0

    .line 11341
    new-instance v1, Ljxm;

    invoke-direct {v1}, Ljxm;-><init>()V

    .line 11345
    invoke-virtual {p1}, Lhkt;->z()Ljug;

    move-result-object v2

    iget-object v2, v2, Ljug;->b:Ljava/lang/Boolean;

    invoke-static {v2, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11346
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljxm;->a:Ljava/lang/Integer;

    .line 11350
    :goto_0
    iget-object v2, p0, Lhci;->e:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/libraries/hangouts/video/internal/CallService;->a(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Ljxm;->d:Ljava/lang/Long;

    .line 11351
    iget-object v2, p0, Lhci;->q:Lhhe;

    invoke-virtual {v2, v1}, Lhhe;->a(Ljxm;)V

    .line 11353
    new-instance v1, Ljxj;

    invoke-direct {v1}, Ljxj;-><init>()V

    .line 11354
    invoke-virtual {p1}, Lhkt;->p()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljxj;->a:Ljava/lang/String;

    .line 11355
    invoke-virtual {p1}, Lhkt;->o()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljxj;->b:Ljava/lang/String;

    .line 11356
    invoke-virtual {p1}, Lhkt;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljxj;->d:Ljava/lang/String;

    .line 11357
    iget-object v2, p0, Lhci;->q:Lhhe;

    invoke-virtual {v2, v1}, Lhhe;->a(Ljxj;)V

    .line 11359
    iget-object v1, p0, Lhci;->q:Lhhe;

    invoke-virtual {p1}, Lhkt;->d()Lmdx;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhhe;->a(Lmdx;)V

    .line 11361
    iget-object v1, p0, Lhci;->q:Lhhe;

    iget-object v2, p0, Lhci;->f:Lhcd;

    invoke-virtual {v2}, Lhcd;->j()Lhku;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lhhe;->a(Lhca;Lhku;)V

    .line 642
    iget-object v1, p0, Lhci;->y:Lhek;

    invoke-virtual {v1, v0}, Lhek;->a(Lhca;)V

    .line 643
    iget-object v0, p0, Lhci;->y:Lhek;

    invoke-virtual {v0, v5}, Lhek;->a(I)V

    .line 11606
    invoke-virtual {p1}, Lhkt;->z()Ljug;

    move-result-object v6

    .line 11607
    iget-object v0, p0, Lhci;->f:Lhcd;

    invoke-virtual {v0}, Lhcd;->h()Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;

    move-result-object v1

    .line 11608
    iget-object v0, p0, Lhci;->f:Lhcd;

    invoke-virtual {v0}, Lhcd;->g()Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    move-result-object v4

    .line 11611
    iget-object v0, v6, Ljug;->g:Ljava/lang/Boolean;

    invoke-static {v0, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11612
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->c()V

    .line 11613
    invoke-virtual {v4}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->a()V

    .line 12517
    :cond_0
    iget-object v0, v6, Ljug;->e:Ljava/lang/Integer;

    invoke-static {v0, v5}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v0

    .line 12518
    if-gt v0, v5, :cond_1

    .line 12519
    iget-object v0, p0, Lhci;->e:Landroid/content/Context;

    const-string v2, "startBitrate"

    invoke-virtual {v0, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 12521
    invoke-direct {p0}, Lhci;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12523
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Ljug;->e:Ljava/lang/Integer;

    .line 11617
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-static {v6}, Llyi;->a(Llyi;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a([B)V

    .line 11622
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    .line 11623
    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/DecoderManager;->b()J

    move-result-wide v2

    .line 11624
    invoke-virtual {v4}, Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;->c()J

    move-result-wide v4

    move-object v1, p1

    .line 11622
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->a(Lhkt;JJ)V

    .line 11626
    new-instance v2, Lhco;

    .line 12559
    invoke-direct {v2, p0}, Lhco;-><init>(Lhci;)V

    .line 11628
    new-instance v0, Lhhi;

    iget-object v1, p0, Lhci;->e:Landroid/content/Context;

    .line 11629
    invoke-virtual {p1}, Lhkt;->a()Ljava/lang/String;

    move-result-object v3

    .line 11630
    invoke-virtual {p1}, Lhkt;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Ljug;->q:Ljava/lang/Boolean;

    .line 11631
    invoke-static {v5, v7}, Laal;->a(Ljava/lang/Boolean;Z)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lhhi;-><init>(Landroid/content/Context;Lhhb;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 11632
    iget-object v1, p0, Lhci;->o:Lhgv;

    invoke-virtual {v1, v0}, Lhgv;->a(Lhhb;)V

    .line 646
    return-void

    .line 11348
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Ljxm;->a:Ljava/lang/Integer;

    goto/16 :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 767
    invoke-static {}, Laal;->w()V

    .line 769
    new-instance v1, Lkhr;

    invoke-direct {v1}, Lkhr;-><init>()V

    .line 770
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lkhr;->a:Ljava/lang/String;

    .line 771
    iput-object p1, v1, Lkhr;->b:Ljava/lang/String;

    .line 772
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lkhr;->c:Ljava/lang/Integer;

    .line 773
    iget-object v0, p0, Lhci;->r:Lhbo;

    const-class v2, Lhbh;

    invoke-virtual {v0, v2}, Lhbo;->a(Ljava/lang/Class;)Lhbm;

    move-result-object v0

    check-cast v0, Lhbh;

    new-instance v2, Lhcl;

    invoke-direct {v2, p0, p1}, Lhcl;-><init>(Lhci;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lhbh;->c(Llyi;Lhbp;)V

    .line 795
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 1366
    invoke-static {}, Laal;->w()V

    .line 1368
    invoke-direct {p0, p1}, Lhci;->f(Ljava/lang/String;)Z

    move-result v0

    .line 1369
    if-nez v0, :cond_2

    .line 1370
    const-string v1, "vclib"

    const-string v2, "Received state change for unknown call: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33089
    :goto_0
    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1402
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 1370
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1374
    :cond_2
    packed-switch p2, :pswitch_data_0

    goto :goto_1

    .line 1379
    :pswitch_1
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0}, Lhcw;->a()V

    .line 1380
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0}, Lhcw;->c()V

    .line 1381
    invoke-direct {p0, p1, p2}, Lhci;->c(Ljava/lang/String;I)V

    goto :goto_1

    .line 1385
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lhci;->c(Ljava/lang/String;I)V

    .line 1386
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->k()Lhcw;

    move-result-object v0

    invoke-virtual {v0}, Lhcw;->b()V

    .line 1387
    iget-object v0, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhcu;

    .line 1388
    iget-object v2, p0, Lhci;->c:Lhcs;

    invoke-interface {v0, v2}, Lhcu;->a(Lhcs;)V

    goto :goto_2

    .line 1393
    :pswitch_3
    const-string v1, "STATE_DEINIT sessionid: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    invoke-direct {p0, p1, p2}, Lhci;->c(Ljava/lang/String;I)V

    .line 1399
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lhci;->b(ILjava/lang/String;)V

    goto :goto_1

    .line 1393
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 1374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method b(Z)V
    .locals 2

    .prologue
    .line 811
    invoke-static {}, Laal;->w()V

    .line 813
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->d(Z)V

    .line 817
    :cond_0
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->m()Lhip;

    move-result-object v0

    if-nez v0, :cond_1

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Mute is allowed only after STATE_INPROGRESS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->m()Lhip;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhip;->a(Z)V

    .line 823
    new-instance v0, Lhcm;

    invoke-direct {v0, p0, p1}, Lhcm;-><init>(Lhci;Z)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 832
    :cond_2
    return-void
.end method

.method public b([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1406
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lhci;->c:Lhcs;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhcs;->a(Z)V

    .line 1409
    invoke-direct {p0, p1, v2, v2}, Lhci;->a([BZI)V

    .line 1412
    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 1465
    new-instance v0, Lhky;

    invoke-direct {v0, p1}, Lhky;-><init>(I)V

    .line 1466
    iget-object v1, p0, Lhci;->f:Lhcd;

    invoke-virtual {v1}, Lhcd;->j()Lhku;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhku;->a(Lhky;)V

    .line 1467
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 806
    invoke-static {}, Laal;->w()V

    .line 807
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->b(Ljava/lang/String;)V

    .line 808
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "handleSignedInStateUpdate: signedIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lhci;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    invoke-static {}, Laal;->w()V

    .line 31134
    const-string v0, "Expected condition to be true"

    invoke-static {v0, p1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 1299
    iget-object v0, p0, Lhci;->y:Lhek;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lhek;->a(I)V

    .line 1300
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->c()V

    .line 1302
    invoke-direct {p0}, Lhci;->f()V

    .line 1304
    :cond_0
    return-void
.end method

.method public c([B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1416
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lhci;->c:Lhcs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhcs;->a(Z)V

    .line 1419
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0}, Lhcs;->l()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 1420
    const/16 v0, 0x33

    .line 1422
    :goto_0
    invoke-direct {p0, p1, v2, v0}, Lhci;->a([BZI)V

    .line 1424
    :cond_0
    return-void

    .line 1421
    :cond_1
    const/16 v0, 0x17

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lhci;->c:Lhcs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()Lhbo;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lhci;->r:Lhbo;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Lhci;->a(I)V

    .line 1472
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lhci;->a:Lcom/google/android/libraries/hangouts/video/internal/Libjingle;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/hangouts/video/internal/Libjingle;->c(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method public d([B)V
    .locals 3

    .prologue
    .line 34325
    :try_start_0
    new-instance v0, Lkjs;

    invoke-direct {v0}, Lkjs;-><init>()V

    .line 35131
    array-length v1, p1

    invoke-static {v0, p1, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 34325
    check-cast v0, Lkjs;

    .line 1478
    iget-object v1, p0, Lhci;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhcu;

    .line 1479
    invoke-interface {v1, v0}, Lhcu;->a(Lkjs;)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1481
    :catch_0
    move-exception v0

    .line 1482
    const-string v1, "vclib"

    const-string v2, "Cannot parse StreamRequest."

    invoke-static {v1, v2, v0}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1484
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lhci;->c:Lhcs;

    invoke-virtual {v0, p1}, Lhcs;->d(Ljava/lang/String;)V

    .line 1337
    return-void
.end method

.method public e([B)V
    .locals 3

    .prologue
    .line 35134
    :try_start_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    .line 36131
    array-length v1, p1

    invoke-static {v0, p1, v1}, Llyi;->b(Llyi;[BI)Llyi;

    move-result-object v0

    .line 35134
    check-cast v0, Ljuf;

    .line 1490
    new-instance v1, Lhky;

    invoke-direct {v1, v0}, Lhky;-><init>(Ljuf;)V

    .line 1491
    iget-object v0, p0, Lhci;->f:Lhcd;

    invoke-virtual {v0}, Lhcd;->j()Lhku;

    move-result-object v0

    invoke-virtual {v0, v1}, Lhku;->a(Lhky;)V
    :try_end_0
    .catch Llyg; {:try_start_0 .. :try_end_0} :catch_0

    .line 1495
    :goto_0
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    const-string v1, "vclib"

    const-string v2, "Cannot parse Media Event."

    invoke-static {v1, v2, v0}, Lhlk;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
