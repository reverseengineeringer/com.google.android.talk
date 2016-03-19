.class final Ldlb;
.super Lbio;
.source "SourceFile"


# instance fields
.field final synthetic c:Ldky;


# direct methods
.method constructor <init>(Ldky;Landroid/content/Context;Lhpz;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Ldlb;->c:Ldky;

    invoke-direct {p0, p2, p3, p4, p5}, Lbio;-><init>(Landroid/content/Context;Lhpz;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Ldlb;->c:Ldky;

    .line 1035
    iget-object v1, v0, Ldky;->a:Ldlf;

    .line 215
    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Ldlb;->c:Ldky;

    iget-object v2, p0, Ldlb;->b:Ljava/lang/String;

    .line 2035
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ldky;->a(Ljava/lang/String;Z)Ldmk;

    move-result-object v0

    .line 217
    invoke-interface {v0, p1}, Ldmk;->a(Landroid/database/Cursor;)I

    .line 218
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
