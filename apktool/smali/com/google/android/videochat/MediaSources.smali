.class public Lcom/google/android/videochat/MediaSources;
.super Ljava/lang/Object;
.source "MediaSources.java"


# instance fields
.field public final audio:[Lcom/google/android/videochat/NamedSource;

.field public final video:[Lcom/google/android/videochat/NamedSource;


# direct methods
.method public constructor <init>([Lcom/google/android/videochat/NamedSource;[Lcom/google/android/videochat/NamedSource;)V
    .locals 0
    .param p1, "audio"    # [Lcom/google/android/videochat/NamedSource;
    .param p2, "video"    # [Lcom/google/android/videochat/NamedSource;

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/videochat/MediaSources;->audio:[Lcom/google/android/videochat/NamedSource;

    .line 15
    iput-object p2, p0, Lcom/google/android/videochat/MediaSources;->video:[Lcom/google/android/videochat/NamedSource;

    .line 16
    return-void
.end method
