.class public final Lgrg;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Lfic;Landroid/net/Uri;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfij",
            "<",
            "Lgro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6000
    new-instance v0, Lgvb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lgvb;-><init>(Lgrg;Lfic;Landroid/net/Uri;I)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method private d(Lfic;Landroid/net/Uri;)Lfij;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfij",
            "<",
            "Lgrj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7000
    new-instance v0, Lgvc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lgvc;-><init>(Lgrg;Lfic;Landroid/net/Uri;I)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lfic;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            ")",
            "Lfij",
            "<",
            "Lgro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2000
    new-instance v0, Lgva;

    invoke-direct {v0, p0, p1}, Lgva;-><init>(Lgrg;Lfic;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;Landroid/net/Uri;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Landroid/net/Uri;",
            ")",
            "Lfij",
            "<",
            "Lgro;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3000
    invoke-direct {p0, p1, p2}, Lgrg;->c(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    return-object v0
.end method

.method public a(Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Lcom/google/android/gms/wearable/PutDataRequest;",
            ")",
            "Lfij",
            "<",
            "Lgrh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v0, Lguz;

    invoke-direct {v0, p0, p1, p2}, Lguz;-><init>(Lgrg;Lfic;Lcom/google/android/gms/wearable/PutDataRequest;)V

    invoke-interface {p1, v0}, Lfic;->a(Lfir;)Lfir;

    move-result-object v0

    return-object v0
.end method

.method public b(Lfic;Landroid/net/Uri;)Lfij;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfic;",
            "Landroid/net/Uri;",
            ")",
            "Lfij",
            "<",
            "Lgrj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4000
    invoke-direct {p0, p1, p2}, Lgrg;->d(Lfic;Landroid/net/Uri;)Lfij;

    move-result-object v0

    return-object v0
.end method
