.class public final Lcvq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcvs;

.field b:Z

.field final synthetic c:Lcvo;


# direct methods
.method constructor <init>(Lcvo;Lcvs;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Lcvq;->c:Lcvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p2, p0, Lcvq;->a:Lcvs;

    .line 750
    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 5

    .prologue
    .line 782
    iget-object v1, p0, Lcvq;->c:Lcvo;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-object v0, p0, Lcvq;->a:Lcvs;

    .line 1867
    iget-object v0, v0, Lcvs;->d:Lcvq;

    .line 783
    if-eq v0, p0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 787
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 786
    :cond_0
    :try_start_1
    new-instance v0, Lcvr;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcvq;->a:Lcvs;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcvs;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2824
    invoke-direct {v0, p0, v2}, Lcvr;-><init>(Lcvq;Ljava/io/OutputStream;)V

    .line 786
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 808
    iget-boolean v0, p0, Lcvq;->b:Z

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcvq;->c:Lcvo;

    .line 3088
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Lcvq;Z)V

    .line 810
    iget-object v0, p0, Lcvq;->c:Lcvo;

    iget-object v1, p0, Lcvq;->a:Lcvs;

    .line 3867
    iget-object v1, v1, Lcvs;->a:Ljava/lang/String;

    .line 810
    invoke-virtual {v0, v1}, Lcvo;->c(Ljava/lang/String;)Z

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_0
    iget-object v0, p0, Lcvq;->c:Lcvo;

    .line 4088
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Lcvq;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcvq;->c:Lcvo;

    .line 5088
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcvo;->a(Lcvq;Z)V

    .line 822
    return-void
.end method
