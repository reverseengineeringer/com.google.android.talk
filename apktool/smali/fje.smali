.class final Lfje;
.super Lfjh;


# instance fields
.field final synthetic a:Lfiv;

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lfia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfiv;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lfia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 0
    iput-object p1, p0, Lfje;->a:Lfiv;

    .line 1000
    invoke-direct {p0, p1}, Lfjh;-><init>(Lfiv;)V

    .line 0
    iput-object p2, p0, Lfje;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 0
    iget-object v0, p0, Lfje;->a:Lfiv;

    .line 2000
    iget-object v0, v0, Lfiv;->a:Lfjj;

    .line 0
    iget-object v0, v0, Lfjj;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lfje;->a:Lfiv;

    .line 3000
    invoke-virtual {v0}, Lfiv;->j()Ljava/util/Set;

    move-result-object v0

    move-object v1, v0

    .line 0
    :goto_0
    iget-object v0, p0, Lfje;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfia;

    iget-object v3, p0, Lfje;->a:Lfiv;

    .line 4000
    iget-object v3, v3, Lfiv;->g:Lfks;

    .line 0
    invoke-interface {v0, v3, v1}, Lfia;->a(Lfks;Ljava/util/Set;)V

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method
