.class final Lhgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lhge;


# direct methods
.method constructor <init>(Lhge;Z)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lhgk;->b:Lhge;

    iput-boolean p2, p0, Lhgk;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lhgk;->b:Lhge;

    iget-boolean v1, p0, Lhgk;->a:Z

    .line 1024
    iput-boolean v1, v0, Lhge;->g:Z

    .line 392
    iget-object v0, p0, Lhgk;->b:Lhge;

    .line 2024
    iget-object v0, v0, Lhge;->b:Lhdu;

    .line 392
    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lhgk;->b:Lhge;

    .line 3024
    iget-object v0, v0, Lhge;->b:Lhdu;

    .line 394
    iget-boolean v1, p0, Lhgk;->a:Z

    invoke-virtual {v0, v1}, Lhdu;->a(Z)V

    .line 397
    :cond_0
    iget-object v0, p0, Lhgk;->b:Lhge;

    .line 4024
    iget-object v0, v0, Lhge;->f:Lhdr;

    .line 397
    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lhgk;->b:Lhge;

    .line 5024
    iget-object v0, v0, Lhge;->f:Lhdr;

    .line 398
    iget-boolean v1, p0, Lhgk;->a:Z

    invoke-interface {v0, v1}, Lhdr;->a(Z)V

    .line 400
    :cond_1
    iget-object v0, p0, Lhgk;->b:Lhge;

    invoke-virtual {v0}, Lhge;->m()V

    .line 401
    return-void
.end method
