.class final Lmpg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lmpf;


# direct methods
.method constructor <init>(Lmpf;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lmpg;->b:Lmpf;

    iput-object p2, p0, Lmpg;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Landroid/net/TrafficStats;->getThreadStatsTag()I

    move-result v1

    .line 142
    iget-object v0, p0, Lmpg;->b:Lmpf;

    iget-object v0, v0, Lmpf;->b:Lmpe;

    .line 1035
    iget v0, v0, Lmpe;->g:I

    .line 142
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 144
    :try_start_0
    iget-object v0, p0, Lmpg;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
