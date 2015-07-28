.class Lcom/google/android/talk/videochat/VideoChatActivity$Effect;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Effect"
.end annotation


# instance fields
.field public id:I

.field public param:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 240
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->id:I

    .line 242
    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$Effect;->param:Ljava/lang/Object;

    .line 243
    return-void
.end method
