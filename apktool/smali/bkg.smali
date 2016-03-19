.class final Lbkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbkb;


# direct methods
.method constructor <init>(Lbkb;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lbkg;->a:Lbkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lbkg;->a:Lbkb;

    .line 1066
    iget-object v0, v0, Lbkb;->i:Lbjv;

    .line 396
    iget-object v1, p0, Lbkg;->a:Lbkb;

    .line 2066
    iget-object v1, v1, Lbkb;->g:Lhpu;

    .line 397
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-static {v1}, Ldvd;->e(I)Lbfd;

    move-result-object v1

    .line 398
    invoke-virtual {v1}, Lbfd;->L()I

    move-result v1

    .line 396
    invoke-interface {v0, v1}, Lbjv;->a(I)V

    .line 399
    return-void
.end method
