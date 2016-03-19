.class final Lbuy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lfcd;

.field public b:Leys;

.field final synthetic c:Lbuw;


# direct methods
.method constructor <init>(Lbuw;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 511
    iput-object p1, p0, Lbuy;->c:Lbuw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object v0, p0, Lbuy;->a:Lfcd;

    .line 513
    iput-object v0, p0, Lbuy;->b:Leys;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 516
    iget-object v0, p0, Lbuy;->b:Leys;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lbuy;->b:Leys;

    invoke-virtual {v0}, Leys;->b()V

    .line 518
    iput-object v1, p0, Lbuy;->b:Leys;

    .line 520
    :cond_0
    iget-object v0, p0, Lbuy;->a:Lfcd;

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lbuy;->a:Lfcd;

    invoke-virtual {v0}, Lfcd;->c()V

    .line 522
    iput-object v1, p0, Lbuy;->a:Lfcd;

    .line 524
    :cond_1
    return-void
.end method
