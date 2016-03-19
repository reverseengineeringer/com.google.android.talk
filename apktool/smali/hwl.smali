.class final Lhwl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Levf;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/Runnable;

.field final synthetic b:Lhwj;

.field private final c:J

.field private d:Ljuc;


# direct methods
.method constructor <init>(Lhwj;Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 113
    iput-object p1, p0, Lhwl;->b:Lhwj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p2, p0, Lhwl;->a:Ljava/lang/Runnable;

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lhwl;->c:J

    .line 116
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Ljuc;->a()Ljuc;

    move-result-object v0

    iput-object v0, p0, Lhwl;->d:Ljuc;

    .line 132
    iget-wide v0, p0, Lhwl;->c:J

    invoke-static {p0, v0, v1}, Laal;->a(Ljava/lang/Runnable;J)V

    .line 133
    return-void
.end method

.method b()V
    .locals 1

    .prologue
    .line 1089
    invoke-static {}, Laal;->y()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lhwl;->b()V

    .line 142
    iget-object v0, p0, Lhwl;->b:Lhwj;

    .line 2027
    invoke-virtual {v0, p0}, Lhwj;->b(Lhwl;)V

    .line 143
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lhwl;->d:Ljuc;

    new-instance v1, Lhwm;

    invoke-direct {v1, p0}, Lhwm;-><init>(Lhwl;)V

    invoke-static {v0, v1}, Ljuc;->a(Ljuc;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    return-void
.end method
