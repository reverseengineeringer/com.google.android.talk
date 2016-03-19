.class final Lfjq;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lfjj;


# direct methods
.method constructor <init>(Lfjj;)V
    .locals 0

    .prologue
    .line 2000
    iput-object p1, p0, Lfjq;->a:Lfjj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfjr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfjr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1000
    iget-object v0, p0, Lfjq;->a:Lfjj;

    iget-object v0, v0, Lfjj;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
