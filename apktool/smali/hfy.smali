.class final Lhfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lhfu;


# direct methods
.method constructor <init>(Lhfu;I)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lhfy;->b:Lhfu;

    iput p2, p0, Lhfy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lhfy;->b:Lhfu;

    iget v1, p0, Lhfy;->a:I

    .line 1023
    iput v1, v0, Lhfu;->f:I

    .line 172
    iget-object v0, p0, Lhfy;->b:Lhfu;

    invoke-virtual {v0}, Lhfu;->i()V

    .line 173
    iget-object v0, p0, Lhfy;->b:Lhfu;

    .line 2023
    iget-object v0, v0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lhfy;->b:Lhfu;

    .line 3023
    iget-object v0, v0, Lhfu;->b:Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;

    .line 174
    iget-object v1, p0, Lhfy;->b:Lhfu;

    .line 4023
    iget v1, v1, Lhfu;->f:I

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/hangouts/video/internal/MediaCodecDecoder;->d(I)V

    .line 176
    :cond_0
    return-void
.end method
