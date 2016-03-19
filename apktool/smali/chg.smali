.class final Lchg;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Lchf;


# direct methods
.method constructor <init>(Lchf;)V
    .locals 1

    .prologue
    .line 43
    iput-object p1, p0, Lchg;->a:Lchf;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lchg;->a:Lchf;

    invoke-virtual {v0}, Lchf;->a()V

    .line 55
    return-void
.end method

.method public b(Lhkx;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lchg;->a:Lchf;

    .line 1030
    iget-object v1, v1, Lchf;->aj:Lhkx;

    .line 46
    invoke-virtual {v1}, Lhkx;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lchg;->a:Lchf;

    invoke-virtual {v0}, Lchf;->a()V

    .line 49
    :cond_0
    return-void
.end method
