.class final Lhgi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic a:Lhge;


# direct methods
.method constructor <init>(Lhge;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lhgi;->a:Lhge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lhgi;->a:Lhge;

    .line 1024
    iget-object v0, v0, Lhge;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 158
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 161
    iget-object v0, p0, Lhgi;->a:Lhge;

    iget-object v0, v0, Lhge;->l:Lhee;

    iget-object v1, p0, Lhgi;->a:Lhge;

    invoke-virtual {v0, v1}, Lhee;->a(Lhgn;)V

    .line 162
    return-void
.end method
