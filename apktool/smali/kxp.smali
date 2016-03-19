.class final Lkxp;
.super Lkru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkru",
        "<",
        "Ljava/util/Map$Entry",
        "<TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkxo;


# direct methods
.method constructor <init>(Lkxo;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lkxp;->a:Lkxo;

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
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lkxp;->a:Lkxo;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lkxp;->a:Lkxo;

    iget-object v0, v0, Lkxo;->a:Lkxn;

    iget-object v0, v0, Lkxn;->b:Lkxm;

    .line 2039
    iget-object v0, v0, Lkxm;->d:[Ljava/util/Map$Entry;

    .line 1236
    aget-object v0, v0, p1

    .line 1237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkwj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 233
    return-object v0
.end method
