.class public Lcom/google/android/videochat/CameraSpecification;
.super Ljava/lang/Object;
.source "CameraSpecification.java"


# instance fields
.field public cameraId:I

.field public previewSize:Lcom/google/android/videochat/Size;


# direct methods
.method public constructor <init>(ILcom/google/android/videochat/Size;)V
    .locals 0
    .param p1, "cameraId"    # I
    .param p2, "previewSize"    # Lcom/google/android/videochat/Size;

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/android/videochat/CameraSpecification;->cameraId:I

    .line 24
    iput-object p2, p0, Lcom/google/android/videochat/CameraSpecification;->previewSize:Lcom/google/android/videochat/Size;

    .line 25
    return-void
.end method
