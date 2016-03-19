.class final Lelf;
.super Leap;
.source "SourceFile"


# instance fields
.field final synthetic a:Lelc;


# direct methods
.method constructor <init>(Lelc;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lelf;->a:Lelc;

    invoke-direct {p0}, Leap;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lbfd;)V
    .locals 3

    .prologue
    .line 215
    invoke-virtual {p1}, Lbfd;->g()I

    move-result v0

    iget-object v1, p0, Lelf;->a:Lelc;

    .line 1035
    iget-object v1, v1, Lelc;->a:Lhpu;

    .line 215
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 216
    iget-object v0, p0, Lelf;->a:Lelc;

    .line 2035
    iget-object v0, v0, Lelc;->a:Lhpu;

    .line 216
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 217
    iget-object v1, p0, Lelf;->a:Lelc;

    .line 3035
    iget-object v1, v1, Lelc;->f:Like;

    .line 217
    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lelf;->a:Lelc;

    .line 4035
    iget-object v1, v1, Lelc;->f:Like;

    .line 218
    iget-object v2, p0, Lelf;->a:Lelc;

    .line 5035
    iget-object v2, v2, Lelc;->b:Lelm;

    .line 219
    invoke-virtual {v2, v0}, Lelm;->c(I)Z

    move-result v2

    .line 218
    invoke-virtual {v1, v2}, Like;->a(Z)V

    .line 221
    :cond_0
    iget-object v1, p0, Lelf;->a:Lelc;

    .line 6035
    iget-object v1, v1, Lelc;->e:Like;

    .line 221
    if-eqz v1, :cond_1

    .line 222
    iget-object v1, p0, Lelf;->a:Lelc;

    .line 7035
    iget-object v1, v1, Lelc;->e:Like;

    .line 222
    iget-object v2, p0, Lelf;->a:Lelc;

    .line 8035
    iget-object v2, v2, Lelc;->b:Lelm;

    .line 222
    invoke-virtual {v2, v0}, Lelm;->b(I)Z

    move-result v0

    invoke-virtual {v1, v0}, Like;->a(Z)V

    .line 225
    :cond_1
    return-void
.end method
