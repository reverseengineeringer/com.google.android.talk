.class final Lffg;
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
        "Lgro;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfff;


# direct methods
.method constructor <init>(Lfff;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lffg;->a:Lfff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lfim;)V
    .locals 3

    .prologue
    .line 72
    check-cast p1, Lgro;

    .line 1076
    :try_start_0
    invoke-virtual {p1}, Lgro;->j()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p1}, Lfkg;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgrm;

    .line 1079
    invoke-static {v0}, Lffe;->a(Lgrm;)I

    move-result v0

    .line 1080
    if-le v0, v1, :cond_2

    :goto_1
    move v1, v0

    .line 1083
    goto :goto_0

    .line 1084
    :cond_0
    if-lez v1, :cond_1

    .line 1085
    iget-object v0, p0, Lffg;->a:Lfff;

    iget-object v0, v0, Lfff;->a:Lffe;

    invoke-virtual {v0, v1}, Lffe;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    :cond_1
    invoke-virtual {p1}, Lfkg;->b()V

    .line 1090
    return-void

    .line 1089
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lfkg;->b()V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
