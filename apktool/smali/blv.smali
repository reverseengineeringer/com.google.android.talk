.class public final Lblv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 4831
    iput-object p1, p0, Lblv;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lblv;->a:Lbng;

    .line 2285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 1834
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    iget v0, v0, Lbjb;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 2839
    iget-object v0, p0, Lblv;->a:Lbng;

    .line 3285
    iget-object v0, v0, Lbng;->i:Lbpq;

    .line 2839
    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    iget-boolean v0, v0, Lbjb;->g:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3844
    iget-object v0, p0, Lblv;->a:Lbng;

    .line 4285
    iget-boolean v0, v0, Lbng;->aE:Z

    .line 3844
    return v0
.end method
