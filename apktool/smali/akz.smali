.class final Lakz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lanm;

.field final b:Lanm;

.field final c:Lalh;

.field final d:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<",
            "Lale",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lanm;Lanm;Lalh;)V
    .locals 1

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Lala;

    invoke-direct {v0, p0}, Lala;-><init>(Lakz;)V

    invoke-static {v0}, Lavs;->a(Lavw;)Lic;

    move-result-object v0

    iput-object v0, p0, Lakz;->d:Lic;

    .line 446
    iput-object p1, p0, Lakz;->a:Lanm;

    .line 447
    iput-object p2, p0, Lakz;->b:Lanm;

    .line 448
    iput-object p3, p0, Lakz;->c:Lalh;

    .line 449
    return-void
.end method


# virtual methods
.method a(Laiw;Z)Lale;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Laiw;",
            "Z)",
            "Lale",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lakz;->d:Lic;

    invoke-interface {v0}, Lic;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lale;

    .line 454
    invoke-virtual {v0, p1, p2}, Lale;->a(Laiw;Z)Lale;

    move-result-object v0

    return-object v0
.end method
