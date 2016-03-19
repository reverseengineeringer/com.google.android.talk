.class public final Lfdz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Z

.field private final c:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput v0, p0, Lfdz;->a:I

    .line 254
    iput-boolean v0, p0, Lfdz;->b:Z

    .line 258
    iput-object p1, p0, Lfdz;->c:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;

    .line 259
    iput p2, p0, Lfdz;->a:I

    .line 260
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    if-eqz p1, :cond_0

    .line 270
    iput-boolean v0, p0, Lfdz;->b:Z

    .line 272
    :cond_0
    iget v2, p0, Lfdz;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lfdz;->a:I

    if-nez v2, :cond_2

    .line 273
    iget-boolean v2, p0, Lfdz;->b:Z

    .line 1280
    iget-object v3, p0, Lfdz;->c:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;

    .line 2161
    iget v4, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->d:I

    if-nez v4, :cond_3

    .line 2162
    :goto_0
    iget-boolean v4, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->f:Z

    if-eq v0, v4, :cond_1

    .line 2163
    iput-boolean v0, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->f:Z

    .line 2164
    iget-object v0, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->b:Lfeb;

    if-eqz v0, :cond_1

    .line 2165
    iget-object v0, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->b:Lfeb;

    iget-boolean v3, v3, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->f:Z

    invoke-interface {v0, v3}, Lfeb;->a(Z)V

    .line 1286
    :cond_1
    iget-object v0, p0, Lfdz;->c:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;

    .line 3042
    iget-object v0, v0, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->g:Landroid/os/Handler;

    .line 1286
    if-eqz v2, :cond_4

    .line 1287
    iget-object v2, p0, Lfdz;->c:Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;

    .line 4042
    iget v2, v2, Lcom/google/android/apps/hangouts/views/ParticipantsGalleryView;->c:I

    .line 1287
    int-to-long v2, v2

    .line 1286
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 275
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 2161
    goto :goto_0

    .line 1287
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1
.end method
