.class public Lorg/webrtc/voiceengine/AudioEffectsJB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static EFFECT_AUTO:I = 0x0

.field private static EFFECT_NONE:I = 0x0

.field private static EFFECT_PLATFORM:I = 0x0

.field private static EFFECT_WEBRTC:I = 0x0

.field private static final SOFTWARE_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

.field private static final SOFTWARE_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

.field private static final SOFTWARE_NOISE_SUPPRESSOR:Ljava/util/UUID;

.field private static final TAG:Ljava/lang/String; = "AudioEffectsJB"

.field private static _isInitialized:Z

.field private static _shouldUsePlatformAcousticEchoCanceler:Ljava/lang/Boolean;

.field private static _shouldUsePlatformAutomaticGainControl:Ljava/lang/Boolean;

.field private static _shouldUsePlatformNoiseSuppressor:Ljava/lang/Boolean;

.field private static _shouldUseWebRTCAcousticEchoCanceler:Ljava/lang/Boolean;

.field private static _shouldUseWebRTCAutomaticGainControl:Ljava/lang/Boolean;

.field private static _shouldUseWebRTCNoiseSuppressor:Ljava/lang/Boolean;

.field private static _useAcousticEchoCancelerMode:I

.field private static _useAutomaticGainControlMode:I

.field private static _useNoiseSuppressorMode:I


# instance fields
.field private _autoGainController:Landroid/media/audiofx/AutomaticGainControl;

.field private _echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private _noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 29
    const-string v0, "c06c8400-8e06-11e0-9cb6-0002a5d5c51b"

    .line 30
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_NOISE_SUPPRESSOR:Ljava/util/UUID;

    .line 31
    const-string v0, "bb392ec0-8d4d-11e0-a896-0002a5d5c51b"

    .line 32
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    .line 33
    const-string v0, "aa8130e0-66fc-11e0-bad0-0002a5d5c51b"

    .line 34
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    .line 37
    sput v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    .line 38
    const/4 v0, 0x1

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_PLATFORM:I

    .line 39
    const/4 v0, 0x2

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_WEBRTC:I

    .line 40
    const/4 v0, 0x3

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_NONE:I

    .line 42
    sput-boolean v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    .line 48
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCNoiseSuppressor:Ljava/lang/Boolean;

    .line 49
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 50
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAutomaticGainControl:Ljava/lang/Boolean;

    .line 52
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformNoiseSuppressor:Ljava/lang/Boolean;

    .line 53
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAcousticEchoCanceler:Ljava/lang/Boolean;

    .line 54
    sput-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAutomaticGainControl:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 25
    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    .line 26
    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    return-void
.end method

.method private static assertIsTrue(Z)V
    .locals 2

    .prologue
    .line 337
    if-nez p0, :cond_0

    .line 338
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected condition to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 340
    :cond_0
    return-void
.end method

.method public static initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {p0}, Lorg/webrtc/voiceengine/AudioEffectsJB;->mapMode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useNoiseSuppressorMode:I

    .line 76
    invoke-static {p1}, Lorg/webrtc/voiceengine/AudioEffectsJB;->mapMode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAcousticEchoCancelerMode:I

    .line 77
    invoke-static {p2}, Lorg/webrtc/voiceengine/AudioEffectsJB;->mapMode(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAutomaticGainControlMode:I

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    .line 79
    return-void
.end method

.method private static isAtLeastJB()Z
    .locals 2

    .prologue
    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mapMode(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    .line 69
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "platform"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_PLATFORM:I

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "webrtc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_WEBRTC:I

    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_NONE:I

    goto :goto_0

    .line 69
    :cond_4
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    goto :goto_0
.end method

.method public static shouldUsePlatformAcousticEchoCanceler()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    sget-boolean v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v0}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 174
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAcousticEchoCanceler:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 176
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAcousticEchoCancelerMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-eq v0, v2, :cond_0

    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAcousticEchoCancelerMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_PLATFORM:I

    if-ne v0, v2, :cond_3

    .line 178
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->isAtLeastJB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    const/4 v0, 0x1

    .line 182
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    .line 183
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 184
    iget-object v5, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v6, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_ACOUSTIC_ECHO_CANCELER:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 183
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 189
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 190
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUsePlatformAcousticEchoCanceler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_4
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldUsePlatformAutomaticGainControl()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 200
    sget-boolean v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v0}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 201
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAutomaticGainControl:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 203
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAutomaticGainControlMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-eq v0, v2, :cond_0

    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAutomaticGainControlMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_PLATFORM:I

    if-ne v0, v2, :cond_3

    .line 205
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->isAtLeastJB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    invoke-static {}, Landroid/media/audiofx/AutomaticGainControl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    const/4 v0, 0x1

    .line 209
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    .line 210
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 211
    iget-object v5, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v6, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_AUTOMATIC_GAIN_CONTROL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 210
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 216
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 217
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAutomaticGainControl:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x27

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUsePlatformAutomaticGainControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_4
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldUsePlatformNoiseSuppressor()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 145
    sget-boolean v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v0}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 146
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformNoiseSuppressor:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 149
    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useNoiseSuppressorMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-eq v0, v2, :cond_0

    sget v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useNoiseSuppressorMode:I

    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_PLATFORM:I

    if-ne v0, v2, :cond_3

    .line 151
    :cond_0
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->isAtLeastJB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    const/4 v0, 0x1

    .line 155
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v3

    .line 156
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 157
    iget-object v5, v5, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    sget-object v6, Lorg/webrtc/voiceengine/AudioEffectsJB;->SOFTWARE_NOISE_SUPPRESSOR:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    .line 156
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 162
    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 163
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformNoiseSuppressor:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUsePlatformNoiseSuppressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_4
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUsePlatformNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static shouldUseWebRTCAcousticEchoCanceler()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 105
    sget-boolean v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v1}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 106
    sget-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAcousticEchoCanceler:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 107
    const/4 v1, 0x0

    .line 108
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAcousticEchoCancelerMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_WEBRTC:I

    if-ne v2, v3, :cond_2

    .line 114
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 115
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUseWebRTCAcousticEchoCanceler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :cond_1
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAcousticEchoCanceler:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 110
    :cond_2
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAcousticEchoCancelerMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-ne v2, v3, :cond_3

    .line 111
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformAcousticEchoCanceler()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static shouldUseWebRTCAutomaticGainControl()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 125
    sget-boolean v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v1}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 126
    sget-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAutomaticGainControl:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 127
    const/4 v1, 0x0

    .line 128
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAutomaticGainControlMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_WEBRTC:I

    if-ne v2, v3, :cond_2

    .line 134
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 135
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAutomaticGainControl:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUseWebRTCAutomaticGainControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCAutomaticGainControl:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 130
    :cond_2
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useAutomaticGainControlMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-ne v2, v3, :cond_3

    .line 131
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformAutomaticGainControl()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static shouldUseWebRTCNoiseSuppressor()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 85
    sget-boolean v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_isInitialized:Z

    invoke-static {v1}, Lorg/webrtc/voiceengine/AudioEffectsJB;->assertIsTrue(Z)V

    .line 86
    sget-object v1, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCNoiseSuppressor:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 87
    const/4 v1, 0x0

    .line 88
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useNoiseSuppressorMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_WEBRTC:I

    if-ne v2, v3, :cond_2

    .line 94
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 95
    sput-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCNoiseSuppressor:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "shouldUseWebRTCNoiseSuppressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_1
    sget-object v0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_shouldUseWebRTCNoiseSuppressor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 90
    :cond_2
    sget v2, Lorg/webrtc/voiceengine/AudioEffectsJB;->_useNoiseSuppressorMode:I

    sget v3, Lorg/webrtc/voiceengine/AudioEffectsJB;->EFFECT_AUTO:I

    if-ne v2, v3, :cond_3

    .line 91
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformNoiseSuppressor()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public enable(Landroid/media/AudioRecord;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 230
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/NoiseSuppressor;->create(I)Landroid/media/audiofx/NoiseSuppressor;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 231
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2

    .line 232
    const-string v0, "AudioEffectsJB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 234
    const-string v1, "name: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    :goto_0
    const-string v1, "implementor: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    :goto_1
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    .line 239
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformNoiseSuppressor()Z

    move-result v1

    .line 240
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/NoiseSuppressor;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "AudioEffectsJB"

    const-string v3, "FAILED: setEnabled did not return AudioEffect.SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    if-eqz v0, :cond_c

    const-string v0, "enabled"

    move-object v2, v0

    :goto_2
    if-eqz v1, :cond_d

    .line 244
    const-string v0, "true"

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 245
    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "enabled"

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "NoiseSuppressor: was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_2
    :goto_5
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 260
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_5

    .line 261
    const-string v0, "AudioEffectsJB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 263
    const-string v1, "name: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    :goto_6
    const-string v1, "implementor: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    :goto_7
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    .line 268
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformAcousticEchoCanceler()Z

    move-result v1

    .line 269
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_4

    .line 270
    const-string v2, "AudioEffectsJB"

    const-string v3, "FAILED: setEnabled did not return AudioEffect.SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_4
    if-eqz v0, :cond_12

    const-string v0, "enabled"

    move-object v2, v0

    :goto_8
    if-eqz v1, :cond_13

    .line 273
    const-string v0, "true"

    move-object v1, v0

    :goto_9
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 274
    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "enabled"

    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AcousticEchoCanceler: was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    :cond_5
    :goto_b
    :try_start_2
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v0

    invoke-static {v0}, Landroid/media/audiofx/AutomaticGainControl;->create(I)Landroid/media/audiofx/AutomaticGainControl;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    .line 289
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_8

    .line 290
    const-string v0, "AudioEffectsJB"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    .line 292
    const-string v1, "name: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    :goto_c
    const-string v1, "implementor: "

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    :goto_d
    iget-object v0, v0, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_6
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v0

    .line 297
    invoke-static {}, Lorg/webrtc/voiceengine/AudioEffectsJB;->shouldUsePlatformAutomaticGainControl()Z

    move-result v1

    .line 298
    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AutomaticGainControl;->setEnabled(Z)I

    move-result v2

    if-eqz v2, :cond_7

    .line 299
    const-string v2, "AudioEffectsJB"

    const-string v3, "FAILED: setEnabled did not return AudioEffect.SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_7
    if-eqz v0, :cond_18

    const-string v0, "enabled"

    move-object v2, v0

    :goto_e
    if-eqz v1, :cond_19

    .line 302
    const-string v0, "true"

    move-object v1, v0

    :goto_f
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    .line 303
    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "enabled"

    :goto_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x32

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AutomaticGainControl: was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    :cond_8
    :goto_11
    return-void

    .line 234
    :cond_9
    :try_start_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 251
    :catch_0
    move-exception v0

    const-string v0, "AudioEffectsJB"

    const-string v1, "NoiseSuppressor effect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_a

    .line 253
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 255
    :cond_a
    iput-object v6, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    goto/16 :goto_5

    .line 235
    :cond_b
    :try_start_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :cond_c
    const-string v0, "disabled"

    move-object v2, v0

    goto/16 :goto_2

    .line 244
    :cond_d
    const-string v0, "false"

    move-object v1, v0

    goto/16 :goto_3

    .line 245
    :cond_e
    const-string v0, "disabled"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 263
    :cond_f
    :try_start_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    .line 280
    :catch_1
    move-exception v0

    const-string v0, "AudioEffectsJB"

    const-string v1, "AcousticEchoCanceler effect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_10

    .line 282
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 284
    :cond_10
    iput-object v6, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    goto/16 :goto_b

    .line 264
    :cond_11
    :try_start_6
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 272
    :cond_12
    const-string v0, "disabled"

    move-object v2, v0

    goto/16 :goto_8

    .line 273
    :cond_13
    const-string v0, "false"

    move-object v1, v0

    goto/16 :goto_9

    .line 274
    :cond_14
    const-string v0, "disabled"
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_a

    .line 292
    :cond_15
    :try_start_7
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_c

    .line 309
    :catch_2
    move-exception v0

    const-string v0, "AudioEffectsJB"

    const-string v1, "AutomaticGainControl effect failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_16

    .line 311
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 313
    :cond_16
    iput-object v6, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    goto :goto_11

    .line 293
    :cond_17
    :try_start_8
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 301
    :cond_18
    const-string v0, "disabled"

    move-object v2, v0

    goto/16 :goto_e

    .line 302
    :cond_19
    const-string v0, "false"

    move-object v1, v0

    goto/16 :goto_f

    .line 303
    :cond_1a
    const-string v0, "disabled"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_10
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 322
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {v0}, Landroid/media/audiofx/AcousticEchoCanceler;->release()V

    .line 324
    iput-object v1, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_echoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    invoke-virtual {v0}, Landroid/media/audiofx/AutomaticGainControl;->release()V

    .line 328
    iput-object v1, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_autoGainController:Landroid/media/audiofx/AutomaticGainControl;

    .line 330
    :cond_1
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    invoke-virtual {v0}, Landroid/media/audiofx/NoiseSuppressor;->release()V

    .line 332
    iput-object v1, p0, Lorg/webrtc/voiceengine/AudioEffectsJB;->_noiseSuppressor:Landroid/media/audiofx/NoiseSuppressor;

    .line 334
    :cond_2
    return-void
.end method
