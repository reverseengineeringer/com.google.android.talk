.class public final Lmnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lorg/chromium/base/JavaHandlerThread;


# direct methods
.method public constructor <init>(Lorg/chromium/base/JavaHandlerThread;JJZ)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lmnn;->d:Lorg/chromium/base/JavaHandlerThread;

    iput-wide p2, p0, Lmnn;->a:J

    iput-wide p4, p0, Lmnn;->b:J

    iput-boolean p6, p0, Lmnn;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lmnn;->d:Lorg/chromium/base/JavaHandlerThread;

    iget-wide v2, p0, Lmnn;->a:J

    iget-wide v4, p0, Lmnn;->b:J

    invoke-static {v0, v2, v3, v4, v5}, Lorg/chromium/base/JavaHandlerThread;->b(Lorg/chromium/base/JavaHandlerThread;JJ)V

    .line 51
    iget-boolean v0, p0, Lmnn;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmnn;->d:Lorg/chromium/base/JavaHandlerThread;

    iget-object v0, v0, Lorg/chromium/base/JavaHandlerThread;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 52
    :cond_0
    return-void
.end method
