.class public final Lgvb;
.super Lfir;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfir;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:I

.field final synthetic i:Lgrg;


# direct methods
.method public constructor <init>(Lgrg;Lfic;Landroid/net/Uri;I)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lgvb;->i:Lgrg;

    iput-object p3, p0, Lgvb;->a:Landroid/net/Uri;

    iput v0, p0, Lgvb;->b:I

    invoke-direct {p0, p2, v0}, Lfir;-><init>(Lfic;S)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Lcom/google/android/gms/common/api/Status;)Lfim;
    .locals 2

    .prologue
    .line 2000
    new-instance v0, Lgro;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/data/DataHolder;->b(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lgro;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 0
    return-object v0
.end method

.method protected synthetic a(Lfia;)V
    .locals 2

    .prologue
    .line 0
    check-cast p1, Lgun;

    .line 1000
    iget-object v0, p0, Lgvb;->a:Landroid/net/Uri;

    iget v1, p0, Lgvb;->b:I

    invoke-virtual {p1, p0, v0, v1}, Lgun;->a(Lfis;Landroid/net/Uri;I)V

    .line 0
    return-void
.end method
