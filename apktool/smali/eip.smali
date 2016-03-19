.class final Leip;
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
        "Lgli;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Leim;


# direct methods
.method constructor <init>(Leim;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Leip;->a:Leim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 8

    .prologue
    .line 244
    check-cast p1, Lgli;

    .line 1247
    invoke-interface {p1}, Lgli;->a()Lfkg;

    move-result-object v0

    .line 1248
    invoke-interface {p1}, Lgli;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    .line 1249
    const-string v2, "Babel"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lezi;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1250
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

    add-int/lit8 v6, v6, 0x33

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Aggregated people loaded: status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " aggregatedPeople="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lezi;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :cond_0
    iget-object v2, p0, Leip;->a:Leim;

    .line 2029
    iget-boolean v2, v2, Leim;->d:Z

    .line 1253
    if-nez v2, :cond_3

    .line 1262
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1263
    iget-object v2, p0, Leip;->a:Leim;

    .line 3029
    iget-object v2, v2, Leim;->b:Lfkg;

    .line 1263
    invoke-static {v2, v0}, Lhbs;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1265
    :cond_1
    iget-object v2, p0, Leip;->a:Leim;

    .line 4029
    iput-object v0, v2, Leim;->b:Lfkg;

    .line 1267
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1268
    iget-object v1, p0, Leip;->a:Leim;

    .line 5029
    iget-object v1, v1, Leim;->a:Leir;

    .line 1268
    if-eqz v1, :cond_3

    .line 1269
    new-instance v1, Lejh;

    invoke-direct {v1, v0}, Lejh;-><init>(Lfkg;)V

    .line 1271
    iget-object v0, p0, Leip;->a:Leim;

    .line 6029
    iget-object v0, v0, Leim;->a:Leir;

    .line 1271
    iget-object v2, p0, Leip;->a:Leim;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Leir;->a(Leim;Lfkg;Lgpx;)V

    .line 1272
    :cond_2
    :goto_0
    return-void

    .line 1273
    :cond_3
    invoke-virtual {v0}, Lfkg;->b()V

    goto :goto_0
.end method
