.class public final Lbdc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Lezv;


# instance fields
.field private final b:Lbdm;

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "concurrent"

    .line 21
    invoke-static {v0}, Lezv;->a(Ljava/lang/String;)Lezv;

    move-result-object v0

    sput-object v0, Lbdc;->a:Lezv;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbdm;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lbdc;->c:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lbdc;->b:Lbdm;

    .line 28
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 33
    :goto_0
    iget-object v0, p0, Lbdc;->b:Lbdm;

    invoke-virtual {v0}, Lbdm;->a()Lbcp;

    move-result-object v1

    .line 34
    if-nez v1, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    invoke-virtual {v1}, Lbcp;->a()Ljava/lang/String;

    move-result-object v2

    .line 42
    sget-object v3, Lbdc;->a:Lezv;

    const-string v0, "RUN_"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lezv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    :try_start_0
    iget-object v0, p0, Lbdc;->b:Lbdm;

    iget-object v4, v1, Lbcp;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lbdm;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v4, "Running task "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    :goto_2
    invoke-virtual {v1, v0}, Lbcp;->a(Ljava/lang/Class;)Lbcn;

    move-result-object v0

    .line 48
    iget-object v4, p0, Lbdc;->c:Landroid/content/Context;

    iget-object v5, v1, Lbcp;->c:Lbcg;

    invoke-interface {v0, v4, v5}, Lbcn;->a(Landroid/content/Context;Lbcg;)I

    move-result v4

    .line 50
    iget-object v5, p0, Lbdc;->b:Lbdm;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    const/4 v6, 0x0

    :try_start_1
    iput-boolean v6, v1, Lbcp;->f:Z

    .line 52
    sget-object v6, Lbdd;->a:[I

    add-int/lit8 v4, v4, -0x1

    aget v4, v6, v4

    packed-switch v4, :pswitch_data_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid task state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_3
    const-string v4, "Babel_ConcurrentSchTask"

    const-string v5, "Error running task "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    sget-object v4, Lbdc;->a:Lezv;

    const-string v5, "ERROR_RUNNING"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v4, v1}, Lezv;->d(Ljava/lang/String;)V

    .line 76
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :catchall_1
    move-exception v0

    sget-object v1, Lbdc;->a:Lezv;

    invoke-virtual {v1, v3}, Lezv;->c(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_2
    :try_start_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 54
    :pswitch_0
    :try_start_5
    iget-object v0, p0, Lbdc;->b:Lbdm;

    invoke-virtual {v0, v1}, Lbdm;->a(Lbcp;)V

    .line 55
    const-string v0, "Task finished. "

    invoke-virtual {v1}, Lbcp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    :goto_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    sget-object v0, Lbdc;->a:Lezv;

    invoke-virtual {v0, v3}, Lezv;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 55
    :cond_3
    :try_start_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 58
    :pswitch_1
    iget-object v4, p0, Lbdc;->b:Lbdm;

    invoke-virtual {v4, v1}, Lbdm;->a(Lbcp;)V

    .line 59
    iget-object v1, p0, Lbdc;->b:Lbdm;

    const-wide/16 v6, 0x0

    .line 60
    invoke-static {v0, v6, v7}, Lbcx;->b(Lbcn;J)Lbcp;

    move-result-object v0

    const/4 v4, 0x1

    .line 59
    invoke-virtual {v1, v0, v4}, Lbdm;->a(Lbcp;Z)Z

    goto :goto_5

    .line 63
    :pswitch_2
    iget-object v0, p0, Lbdc;->b:Lbdm;

    invoke-virtual {v0, v1}, Lbdm;->a(Lbcp;)V

    goto :goto_5

    .line 67
    :pswitch_3
    iget-object v0, p0, Lbdc;->b:Lbdm;

    invoke-virtual {v0, v1}, Lbdm;->b(Lbcp;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 74
    :cond_4
    :try_start_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 75
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
