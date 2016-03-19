.class final Leih;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1122
    sget-object v1, Leie;->h:Ljava/lang/Object;

    .line 275
    monitor-enter v1

    .line 2122
    :try_start_0
    sget-object v0, Leie;->b:Leie;

    .line 3122
    invoke-virtual {v0}, Leie;->d()Z

    move-result v0

    .line 276
    if-eqz v0, :cond_0

    .line 4122
    const/4 v0, 0x0

    sput-object v0, Leie;->b:Leie;

    .line 281
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
