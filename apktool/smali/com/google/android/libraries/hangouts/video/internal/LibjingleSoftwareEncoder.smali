.class public final Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhdr;


# instance fields
.field private final a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

.field private b:I

.field private c:Lhlp;

.field private d:Z

.field private e:I

.field private f:Z

.field private final g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/hangouts/video/internal/RendererManager;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    .line 1033
    invoke-direct {v0}, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    .line 48
    iput-object p1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    .line 50
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    .line 56
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->initializeGLContext(I)Z

    .line 57
    return-void
.end method

.method public a(IIZ)V
    .locals 7

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 95
    const-string v0, "Asked to setResolution without first calling initializeGLContext."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    new-instance v1, Lhlp;

    invoke-direct {v1, p1, p2}, Lhlp;-><init>(II)V

    .line 1064
    if-eqz p3, :cond_4

    .line 1066
    new-instance v0, Lhlp;

    and-int/lit8 v2, p1, -0x8

    and-int/lit8 v3, p2, -0x2

    invoke-direct {v0, v2, v3}, Lhlp;-><init>(II)V

    .line 103
    :goto_1
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->c:Lhlp;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->c:Lhlp;

    invoke-virtual {v2, v1}, Lhlp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 104
    :cond_2
    iput-object v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->c:Lhlp;

    .line 105
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v4, "sub_indims"

    .line 106
    invoke-virtual {v1}, Lhlp;->a()I

    move-result v5

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 107
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v4, "sub_outdims"

    .line 108
    invoke-virtual {v0}, Lhlp;->a()I

    move-result v5

    .line 107
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 110
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v4, "sub_inclip"

    iget v5, v1, Lhlp;->a:I

    iget v6, v0, Lhlp;->a:I

    sub-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x10

    iget v1, v1, Lhlp;->b:I

    iget v0, v0, Lhlp;->b:I

    sub-int v0, v1, v0

    or-int/2addr v0, v5

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 115
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->d:Z

    if-eq v0, p3, :cond_0

    .line 116
    iput-boolean p3, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->d:Z

    .line 117
    iget-object v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v3, "sub_screencast"

    if-eqz p3, :cond_7

    .line 118
    const/4 v0, 0x1

    .line 117
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    goto :goto_0

    .line 1075
    :cond_4
    mul-int v0, p1, p2

    const v2, 0x7e900

    if-lt v0, v2, :cond_5

    .line 1077
    new-instance v0, Lhlp;

    and-int/lit8 v2, p1, -0x40

    and-int/lit8 v3, p2, -0x8

    invoke-direct {v0, v2, v3}, Lhlp;-><init>(II)V

    goto :goto_1

    .line 1078
    :cond_5
    mul-int v0, p1, p2

    const v2, 0x1fa40

    if-lt v0, v2, :cond_6

    .line 1080
    new-instance v0, Lhlp;

    and-int/lit8 v2, p1, -0x20

    and-int/lit8 v3, p2, -0x4

    invoke-direct {v0, v2, v3}, Lhlp;-><init>(II)V

    goto :goto_1

    .line 1083
    :cond_6
    new-instance v0, Lhlp;

    and-int/lit8 v2, p1, -0x8

    and-int/lit8 v3, p2, -0x2

    invoke-direct {v0, v2, v3}, Lhlp;-><init>(II)V

    goto :goto_1

    .line 118
    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(J)V
    .locals 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    iput-wide p1, v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;->timestampNanos:J

    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;->isFake:Z

    .line 153
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public a(IJZ[F)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 126
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 127
    const-string v0, "Asked to encode a frame without first calling initializeGLContext."

    invoke-static {v0}, Lhbs;->a(Ljava/lang/String;)V

    move v0, v1

    .line 146
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->f:Z

    if-eq v0, p4, :cond_1

    .line 131
    iput-boolean p4, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->f:Z

    .line 132
    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v3, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v4, "sub_intextype"

    if-eqz p4, :cond_3

    .line 134
    const v0, 0x8d65

    .line 132
    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 137
    :cond_1
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->e:I

    if-eq v0, p1, :cond_2

    .line 138
    iput p1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->e:I

    .line 139
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    const-string v3, "sub_intex"

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->setIntParam(ILjava/lang/String;I)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    iput-wide p2, v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;->timestampNanos:J

    .line 144
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    iput-boolean v1, v0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;->isFake:Z

    .line 145
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    iget-object v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->g:Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder$EncoderInputData;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->renderFrame(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 146
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_3
    const/16 v0, 0xde1

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 164
    iget v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    if-ne v0, v2, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->a:Lcom/google/android/libraries/hangouts/video/internal/RendererManager;

    iget v1, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/RendererManager;->releaseRenderer(I)V

    .line 169
    iput v2, p0, Lcom/google/android/libraries/hangouts/video/internal/LibjingleSoftwareEncoder;->b:I

    goto :goto_0
.end method
