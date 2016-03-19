.class public final Lhdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhdr;


# instance fields
.field final a:Lhcd;

.field final b:Lhdm;

.field c:Lhds;

.field d:Lhee;

.field e:I

.field f:Z

.field g:Lhlp;

.field private final h:Lhdu;

.field private i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

.field private j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

.field private k:I

.field private l:[F


# direct methods
.method public constructor <init>(ILhcd;ZLhds;II)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lhdi;->l:[F

    .line 48
    iput-object p2, p0, Lhdi;->a:Lhcd;

    .line 49
    iput-object p4, p0, Lhdi;->c:Lhds;

    .line 50
    invoke-virtual {p2}, Lhcd;->e()Lhee;

    move-result-object v0

    iput-object v0, p0, Lhdi;->d:Lhee;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lhdi;->k:I

    .line 53
    if-eqz p3, :cond_0

    .line 54
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    .line 56
    invoke-virtual {p2}, Lhcd;->g()Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;

    move-result-object v1

    iget-object v2, p0, Lhdi;->d:Lhee;

    invoke-direct {v0, v1, v2, p5, p6}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;-><init>(Lcom/google/android/libraries/hangouts/video/internal/EncoderManager;Lhee;II)V

    iput-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    .line 62
    :cond_0
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    invoke-virtual {p2}, Lhcd;->f()Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;-><init>(Lcom/google/android/libraries/hangouts/video/internal/RendererManager;)V

    iput-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    .line 64
    new-instance v0, Lhdm;

    .line 1219
    invoke-direct {v0, p0}, Lhdm;-><init>(Lhdi;)V

    .line 64
    iput-object v0, p0, Lhdi;->b:Lhdm;

    .line 65
    new-instance v0, Lhdj;

    invoke-direct {v0, p0, p2}, Lhdj;-><init>(Lhdi;Lhcd;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 72
    new-instance v0, Lhdu;

    invoke-direct {v0, p1}, Lhdu;-><init>(I)V

    iput-object v0, p0, Lhdi;->h:Lhdu;

    .line 77
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 175
    iget v0, p0, Lhdi;->k:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iput p1, p0, Lhdi;->k:I

    .line 179
    iget-object v0, p0, Lhdi;->c:Lhds;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lhdi;->d:Lhee;

    new-instance v1, Lhdk;

    invoke-direct {v1, p0, p1}, Lhdk;-><init>(Lhdi;I)V

    invoke-virtual {v0, v1}, Lhee;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;->a()V

    .line 86
    :cond_0
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a()V

    .line 89
    :cond_1
    return-void
.end method

.method public a(IIZ)V
    .locals 4

    .prologue
    .line 111
    iput-boolean p3, p0, Lhdi;->f:Z

    .line 112
    new-instance v0, Lhlp;

    invoke-direct {v0, p1, p2}, Lhlp;-><init>(II)V

    iput-object v0, p0, Lhdi;->g:Lhlp;

    .line 113
    iget-object v0, p0, Lhdi;->h:Lhdu;

    iget-object v1, p0, Lhdi;->g:Lhlp;

    invoke-virtual {v0, v1}, Lhdu;->a(Lhlp;)V

    .line 114
    if-eqz p3, :cond_2

    .line 115
    iget-object v0, p0, Lhdi;->g:Lhlp;

    .line 117
    :goto_0
    iget-object v1, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    iget v2, v0, Lhlp;->a:I

    iget v3, v0, Lhlp;->b:I

    invoke-virtual {v1, v2, v3, p3}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a(IIZ)V

    .line 119
    iget-object v1, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a(J)V

    .line 125
    :cond_0
    iget-object v1, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    iget v2, v0, Lhlp;->a:I

    iget v0, v0, Lhlp;->b:I

    invoke-virtual {v1, v2, v0, p3}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;->a(IIZ)V

    .line 128
    :cond_1
    return-void

    .line 2094
    :cond_2
    invoke-virtual {p0}, Lhdi;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 2095
    invoke-virtual {p0}, Lhdi;->b()I

    move-result v0

    .line 2096
    :goto_1
    invoke-static {v0}, Lhgu;->b(I)Lhgu;

    move-result-object v0

    invoke-virtual {v0}, Lhgu;->c()I

    move-result v0

    .line 2097
    iget v1, p0, Lhdi;->e:I

    if-eqz v1, :cond_3

    .line 2098
    iget v1, p0, Lhdi;->e:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2099
    :cond_3
    iget-object v1, p0, Lhdi;->g:Lhlp;

    invoke-static {v1, v0}, Lhlp;->a(Lhlp;I)Lhlp;

    move-result-object v0

    goto :goto_0

    .line 2095
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lhdi;->h:Lhdu;

    invoke-virtual {v0, p1}, Lhdu;->a(Z)V

    .line 106
    return-void
.end method

.method public a(IJZ[F)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 135
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    if-eqz v0, :cond_4

    .line 139
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;->a(IJZ[F)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    .line 141
    :goto_0
    if-nez v0, :cond_0

    .line 142
    iget-object v1, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    invoke-virtual {v1}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lhdi;->a(I)V

    .line 144
    iget-object v1, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a(J)V

    .line 148
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 3043
    sget-object v0, Lhll;->a:[F

    .line 152
    invoke-static {p5, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 155
    const/16 v0, 0xb4

    .line 156
    invoke-static {v0}, Lhll;->a(I)[F

    move-result-object v0

    iget-object v1, p0, Lhdi;->l:[F

    .line 155
    invoke-static {p5, v0, v1}, Lhll;->a([F[F[F)V

    .line 157
    iget-object v0, p0, Lhdi;->h:Lhdu;

    iget-object v1, p0, Lhdi;->l:[F

    invoke-virtual {v0, v1}, Lhdu;->a([F)Z

    .line 158
    iget-object v0, p0, Lhdi;->h:Lhdu;

    invoke-virtual {v0}, Lhdu;->b()I

    move-result v1

    .line 160
    :goto_2
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    iget-object v5, p0, Lhdi;->l:[F

    move-wide v2, p2

    move v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a(IJZ[F)Z

    .line 162
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lhdi;->a(I)V

    .line 164
    :cond_1
    return v6

    :cond_2
    move v0, v7

    .line 139
    goto :goto_0

    :cond_3
    move v1, p1

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lhdi;->k:I

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v0, Lhdl;

    invoke-direct {v0, p0}, Lhdl;-><init>(Lhdi;)V

    invoke-static {v0}, Laal;->a(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;->c()V

    .line 199
    iput-object v1, p0, Lhdi;->i:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecSimulcastEncoder;

    .line 201
    :cond_0
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->c()V

    .line 203
    iput-object v1, p0, Lhdi;->j:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;

    .line 205
    :cond_1
    iget-object v0, p0, Lhdi;->h:Lhdu;

    invoke-virtual {v0}, Lhdu;->a()V

    .line 206
    return-void
.end method
