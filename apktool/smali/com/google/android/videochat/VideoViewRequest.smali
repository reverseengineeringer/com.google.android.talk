.class public Lcom/google/android/videochat/VideoViewRequest;
.super Ljava/lang/Object;
.source "VideoViewRequest.java"


# instance fields
.field public final frameRate:I

.field public final height:I

.field public final renderer:Lcom/google/android/videochat/Renderer;

.field public final ssrc:I

.field public final width:I


# direct methods
.method public constructor <init>(ILcom/google/android/videochat/Renderer;III)V
    .locals 0
    .param p1, "ssrc"    # I
    .param p2, "renderer"    # Lcom/google/android/videochat/Renderer;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameRate"    # I

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/google/android/videochat/VideoViewRequest;->ssrc:I

    .line 30
    iput-object p2, p0, Lcom/google/android/videochat/VideoViewRequest;->renderer:Lcom/google/android/videochat/Renderer;

    .line 31
    iput p3, p0, Lcom/google/android/videochat/VideoViewRequest;->width:I

    .line 32
    iput p4, p0, Lcom/google/android/videochat/VideoViewRequest;->height:I

    .line 33
    iput p5, p0, Lcom/google/android/videochat/VideoViewRequest;->frameRate:I

    .line 34
    return-void
.end method
