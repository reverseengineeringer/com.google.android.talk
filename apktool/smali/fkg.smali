.class public abstract Lfkg;
.super Ljava/lang/Object;

# interfaces
.implements Lfil;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfil;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/data/DataHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 1

    .prologue
    .line 2000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/data/DataHolder;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;B)V
    .locals 0

    .prologue
    .line 8000
    invoke-direct {p0, p1}, Lfkg;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;C)V
    .locals 1

    .prologue
    .line 9000
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfkg;-><init>(Lcom/google/android/gms/common/data/DataHolder;B)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->d()I

    move-result v0

    goto :goto_0
.end method

.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public b()V
    .locals 1

    .prologue
    .line 7000
    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->f()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4000
    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3000
    invoke-virtual {p0}, Lfkg;->b()V

    return-void
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 5000
    iget-object v0, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->c()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6000
    new-instance v0, Lfkm;

    invoke-direct {v0, p0}, Lfkm;-><init>(Lfkg;)V

    return-object v0
.end method
