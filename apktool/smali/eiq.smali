.class final Leiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfin",
        "<",
        "Lglm;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leim;


# direct methods
.method constructor <init>(Leim;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Leiq;->a:Leim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 8

    .prologue
    .line 280
    check-cast p1, Lglm;

    .line 1283
    invoke-interface {p1}, Lglm;->a()Lgpx;

    move-result-object v0

    .line 1284
    invoke-interface {p1}, Lglm;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 1285
    const-string v2, "Babel"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    const-string v2, "Babel"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2d

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Non aggregated people loaded: status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " people="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1288
    :cond_0
    iget-object v2, p0, Leiq;->a:Leim;

    .line 2029
    iget-boolean v2, v2, Leim;->d:Z

    .line 1288
    if-nez v2, :cond_3

    .line 1297
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1298
    iget-object v2, p0, Leiq;->a:Leim;

    .line 3029
    iget-object v2, v2, Leim;->c:Lgpx;

    .line 1298
    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1300
    :cond_1
    iget-object v2, p0, Leiq;->a:Leim;

    .line 4029
    iput-object v0, v2, Leim;->c:Lgpx;

    .line 1302
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1303
    iget-object v1, p0, Leiq;->a:Leim;

    .line 5029
    iget-object v1, v1, Leim;->a:Leir;

    .line 1303
    if-eqz v1, :cond_3

    .line 1304
    iget-object v1, p0, Leiq;->a:Leim;

    .line 6029
    iget-object v1, v1, Leim;->a:Leir;

    .line 1304
    iget-object v2, p0, Leiq;->a:Leim;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Leir;->a(Leim;Lfkg;Lgpx;)V

    :cond_2
    :goto_0
    return-void

    .line 1306
    :cond_3
    invoke-virtual {v0}, Lfkg;->b()V

    goto :goto_0
.end method
