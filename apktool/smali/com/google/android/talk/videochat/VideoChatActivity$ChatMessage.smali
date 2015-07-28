.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChatMessage"
.end annotation


# instance fields
.field mMessage:Ljava/lang/String;

.field mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .prologue
    .line 413
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mMessage:Ljava/lang/String;

    .line 415
    iput-wide p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatMessage;->mTimestamp:J

    .line 416
    return-void
.end method
