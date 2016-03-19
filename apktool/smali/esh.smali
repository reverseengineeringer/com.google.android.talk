.class final Lesh;
.super Lhku;
.source "SourceFile"


# instance fields
.field final synthetic a:Leue;


# direct methods
.method constructor <init>(Leue;)V
    .locals 1

    .prologue
    .line 132
    iput-object p1, p0, Lesh;->a:Leue;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lhku;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lesh;->a:Leue;

    .line 1033
    iget-object v0, v0, Leue;->g:Landroid/os/Handler;

    .line 137
    new-instance v1, Lesi;

    invoke-direct {v1, p0}, Lesi;-><init>(Lesh;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    return-void
.end method
