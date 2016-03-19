.class final Lfjg;
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
    iput-object p1, p0, Lfjg;->a:Lfiv;

    .line 1000
    invoke-direct {p0, p1}, Lfjh;-><init>(Lfiv;)V

    .line 0
    iput-object p2, p0, Lfjg;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 0
    iget-object v0, p0, Lfjg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfia;

    iget-object v2, p0, Lfjg;->a:Lfiv;

    .line 2000
    iget-object v2, v2, Lfiv;->g:Lfks;

    .line 0
    invoke-interface {v0, v2}, Lfia;->a(Lfks;)V

    goto :goto_0

    :cond_0
    return-void
.end method
