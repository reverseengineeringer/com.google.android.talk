.class final Lktq;
.super Lkru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkru",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lktp;


# direct methods
.method constructor <init>(Lktp;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lktq;->a:Lktp;

    invoke-direct {p0}, Lkru;-><init>()V

    return-void
.end method


# virtual methods
.method b()Lkrz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkrz",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lktq;->a:Lktp;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1561
    iget-object v0, p0, Lktq;->a:Lktp;

    iget-object v0, v0, Lktp;->a:Lkto;

    .line 2057
    iget-object v0, v0, Lkto;->b:Lkxu;

    .line 1561
    invoke-virtual {v0}, Lkxu;->f()Lksf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lktq;->a:Lktp;

    iget-object v1, v1, Lktp;->a:Lkto;

    .line 3057
    iget-object v1, v1, Lkto;->c:Lksf;

    .line 1561
    invoke-virtual {v1, p1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkwj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 558
    return-object v0
.end method
