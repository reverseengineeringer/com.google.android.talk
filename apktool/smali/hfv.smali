.class final Lhfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhfu;


# direct methods
.method constructor <init>(Lhfu;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lhfv;->a:Lhfu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lhfv;->a:Lhfu;

    .line 1023
    iget-object v0, v0, Lhfu;->d:Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/libraries/hangouts/video/internal/GlRemoteRenderer;->a()V

    .line 80
    return-void
.end method
