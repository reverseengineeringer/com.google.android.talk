.class public final Lhfl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "OMX.google."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OMX.SEC."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "OMX.Intel.VideoEncoder.VP8"

    aput-object v2, v0, v1

    sput-object v0, Lhfl;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    const-string v1, "video/x-vnd.on2.vp8"

    invoke-static {p0, v1, p1}, Lhfl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 70
    :cond_0
    const-string v1, "video/avc"

    invoke-static {p0, v1, p1}, Lhfl;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    or-int/lit8 v0, v0, 0x2

    .line 73
    :cond_1
    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    .prologue
    const/16 v10, 0x15

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v0, v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-eqz p2, :cond_2

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    .line 95
    const-string v0, "video/x-vnd.on2.vp8"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_0

    .line 1161
    :cond_2
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v6

    move v5, v1

    .line 1162
    :goto_1
    if-ge v5, v6, :cond_d

    .line 1163
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 1179
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v0, v1

    .line 1180
    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_5

    .line 1181
    aget-object v7, v4, v0

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v0, v2

    .line 1166
    :goto_3
    if-eqz v0, :cond_c

    .line 1167
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-ne v0, p2, :cond_c

    .line 2114
    new-array v0, v1, [Ljava/lang/String;

    .line 2115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "babel_hangout_allow_software_media_codec"

    invoke-static {v4, v7, v1}, Lgvj;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2118
    sget-object v0, Lhfl;->a:[Ljava/lang/String;

    .line 2121
    :cond_3
    array-length v7, v0

    move v4, v1

    :goto_4
    if-ge v4, v7, :cond_7

    aget-object v8, v0, v4

    .line 2122
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v0, v1

    .line 1168
    :goto_5
    if-eqz v0, :cond_c

    move-object v0, v3

    .line 100
    :goto_6
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1180
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 1185
    goto :goto_3

    .line 2121
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2127
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_b

    .line 2139
    invoke-virtual {v3, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 2140
    if-nez v0, :cond_8

    move v0, v1

    .line 2128
    :goto_7
    if-nez v0, :cond_b

    move v0, v1

    .line 2129
    goto :goto_5

    .line 2144
    :cond_8
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v0

    .line 2145
    if-eqz v0, :cond_9

    const/16 v4, 0x500

    const/16 v7, 0x2d0

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    .line 2146
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->areSizeAndRateSupported(IID)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    move v0, v1

    .line 2147
    goto :goto_7

    :cond_a
    move v0, v2

    .line 2149
    goto :goto_7

    :cond_b
    move v0, v2

    .line 2132
    goto :goto_5

    .line 1162
    :cond_c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 1172
    :cond_d
    const/4 v0, 0x0

    goto :goto_6
.end method
