.class final Lhce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhkt;

.field final synthetic b:Lhcd;


# direct methods
.method constructor <init>(Lhcd;Lhkt;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lhce;->b:Lhcd;

    iput-object p2, p0, Lhce;->a:Lhkt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lhce;->b:Lhcd;

    .line 1053
    iget-object v0, v0, Lhcd;->b:Lhci;

    .line 295
    iget-object v1, p0, Lhce;->a:Lhkt;

    invoke-virtual {v0, v1}, Lhci;->a(Lhkt;)Z

    .line 297
    iget-object v0, p0, Lhce;->b:Lhcd;

    iget-object v1, p0, Lhce;->b:Lhcd;

    .line 2053
    iget-boolean v1, v1, Lhcd;->n:Z

    .line 297
    invoke-virtual {v0, v1}, Lhcd;->a(Z)V

    .line 298
    return-void
.end method
