.class final Lakk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Laiw;

.field private b:Lajc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lajc",
            "<TZ;>;"
        }
    .end annotation
.end field

.field private c:Lalp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lalp",
            "<TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Laiw;Lajc;Lalp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Laiw;",
            "Lajc",
            "<TX;>;",
            "Lalp",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .line 567
    iput-object p1, p0, Lakk;->a:Laiw;

    .line 568
    iput-object p2, p0, Lakk;->b:Lajc;

    .line 569
    iput-object p3, p0, Lakk;->c:Lalp;

    .line 570
    return-void
.end method

.method a(Lakl;Laja;)V
    .locals 5

    .prologue
    .line 574
    :try_start_0
    invoke-virtual {p1}, Lakl;->a()Lamu;

    move-result-object v0

    iget-object v1, p0, Lakk;->a:Laiw;

    new-instance v2, Lamw;

    iget-object v3, p0, Lakk;->b:Lajc;

    iget-object v4, p0, Lakk;->c:Lalp;

    invoke-direct {v2, v3, v4, p2}, Lamw;-><init>(Laiu;Ljava/lang/Object;Laja;)V

    invoke-interface {v0, v1, v2}, Lamu;->a(Laiw;Lamw;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    iget-object v0, p0, Lakk;->c:Lalp;

    invoke-virtual {v0}, Lalp;->a()V

    .line 578
    return-void

    .line 577
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lakk;->c:Lalp;

    invoke-virtual {v1}, Lalp;->a()V

    throw v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lakk;->c:Lalp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lakk;->a:Laiw;

    .line 587
    iput-object v0, p0, Lakk;->b:Lajc;

    .line 588
    iput-object v0, p0, Lakk;->c:Lalp;

    .line 589
    return-void
.end method
