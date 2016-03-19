.class public final Lgcz;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic i:Lglh;

.field final synthetic j:Lglg;


# direct methods
.method public constructor <init>(Lglg;Lfic;Ljava/lang/String;Ljava/lang/String;Lglh;)V
    .locals 1

    iput-object p1, p0, Lgcz;->j:Lglg;

    iput-object p3, p0, Lgcz;->a:Ljava/lang/String;

    iput-object p4, p0, Lgcz;->b:Ljava/lang/String;

    iput-object p5, p0, Lgcz;->i:Lglh;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;C)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 1

    .prologue
    .line 2000
    new-instance v0, Lgda;

    invoke-direct {v0, p0, p1}, Lgda;-><init>(Lgcz;Lcom/google/android/gms/common/api/Status;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 12

    .prologue
    move-object v0, p1

    .line 0
    check-cast v0, Lgot;

    .line 1000
    iget-object v2, p0, Lgcz;->a:Ljava/lang/String;

    iget-object v3, p0, Lgcz;->b:Ljava/lang/String;

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->a()Z

    move-result v4

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->c()Z

    move-result v6

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->e()I

    move-result v7

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->f()I

    move-result v8

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->g()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->h()Z

    move-result v10

    iget-object v1, p0, Lgcz;->i:Lglh;

    invoke-virtual {v1}, Lglh;->i()I

    move-result v11

    move-object v1, p0

    invoke-virtual/range {v0 .. v11}, Lgot;->a(Lfis;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIILjava/lang/String;ZI)V

    .line 0
    return-void
.end method
