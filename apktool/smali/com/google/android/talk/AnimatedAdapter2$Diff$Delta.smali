.class Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;
.super Ljava/lang/Object;
.source "AnimatedAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AnimatedAdapter2$Diff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Delta"
.end annotation


# instance fields
.field public mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

.field public mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

.field final synthetic this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;)V
    .locals 0
    .param p2, "orig"    # Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;
    .param p3, "rev"    # Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    .prologue
    .line 778
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->this$1:Lcom/google/android/talk/AnimatedAdapter2$Diff;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p2, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mOrig:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    .line 780
    iput-object p3, p0, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;->mRev:Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;

    .line 781
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/talk/AnimatedAdapter2$Diff;
    .param p2, "x1"    # Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;
    .param p3, "x2"    # Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;
    .param p4, "x3"    # Lcom/google/android/talk/AnimatedAdapter2$1;

    .prologue
    .line 774
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Delta;-><init>(Lcom/google/android/talk/AnimatedAdapter2$Diff;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;Lcom/google/android/talk/AnimatedAdapter2$Diff$Chunk;)V

    return-void
.end method
