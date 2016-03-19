.class final Lfja;
.super Lfjh;


# instance fields
.field final synthetic a:Lfiv;


# direct methods
.method constructor <init>(Lfiv;)V
    .locals 0

    .prologue
    .line 0
    iput-object p1, p0, Lfja;->a:Lfiv;

    .line 1000
    invoke-direct {p0, p1}, Lfjh;-><init>(Lfiv;)V

    .line 0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 0
    iget-object v0, p0, Lfja;->a:Lfiv;

    .line 2000
    iget-object v0, v0, Lfiv;->d:Lgra;

    .line 0
    iget-object v1, p0, Lfja;->a:Lfiv;

    .line 3000
    iget-object v1, v1, Lfiv;->g:Lfks;

    .line 0
    iget-object v2, p0, Lfja;->a:Lfiv;

    .line 4000
    iget-object v2, v2, Lfiv;->a:Lfjj;

    .line 0
    iget-object v2, v2, Lfjj;->g:Ljava/util/Set;

    new-instance v3, Lfix;

    iget-object v4, p0, Lfja;->a:Lfiv;

    invoke-direct {v3, v4}, Lfix;-><init>(Lfiv;)V

    invoke-interface {v0, v1, v2, v3}, Lgra;->a(Lfks;Ljava/util/Set;Lgqk;)V

    return-void
.end method
