.class public final Lgpx;
.super Lfkg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfkg;"
    }
.end annotation


# instance fields
.field private final b:Lgnp;

.field private final c:Lgno;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lgnp;Lgno;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfkg;-><init>(Lcom/google/android/gms/common/data/DataHolder;B)V

    iput-object p2, p0, Lgpx;->b:Lgnp;

    iput-object p3, p0, Lgpx;->c:Lgno;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1000
    new-instance v0, Lgpl;

    iget-object v1, p0, Lfkg;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0}, Lfkg;->e()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lgpx;->b:Lgnp;

    iget-object v5, p0, Lgpx;->c:Lgno;

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lgpl;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/os/Bundle;Lgnp;Lgno;)V

    .line 0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "People:size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lfkg;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
