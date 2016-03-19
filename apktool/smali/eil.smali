.class final Leil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lfkg;

.field final d:Lgpx;

.field final e:Lfkg;

.field final f:Lgpx;


# direct methods
.method public constructor <init>(Ljava/util/List;Lfkg;Lgpx;Lfkg;Lgpx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "La;",
            ">;",
            "Lfkg;",
            "Lgpx;",
            "Lfkg;",
            "Lgpx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-object p1, p0, Leil;->b:Ljava/util/List;

    .line 699
    iput-object p2, p0, Leil;->c:Lfkg;

    .line 700
    iput-object p3, p0, Leil;->d:Lgpx;

    .line 701
    iput-object p4, p0, Leil;->e:Lfkg;

    .line 702
    iput-object p5, p0, Leil;->f:Lgpx;

    .line 703
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Lhbs;->a()V

    .line 709
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 710
    iget-object v2, p0, Leil;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 1122
    :cond_0
    sget-boolean v2, Leie;->a:Z

    .line 713
    if-eqz v2, :cond_1

    .line 716
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GmsPeopleCache: onDataBufferReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_1
    iget-object v0, p0, Leil;->e:Lfkg;

    if-eqz v0, :cond_2

    .line 721
    iget-object v0, p0, Leil;->e:Lfkg;

    invoke-virtual {v0}, Lfkg;->b()V

    .line 724
    :cond_2
    iget-object v0, p0, Leil;->f:Lgpx;

    if-eqz v0, :cond_3

    .line 725
    iget-object v0, p0, Leil;->f:Lgpx;

    invoke-virtual {v0}, Lfkg;->b()V

    .line 728
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Leil;->a:Z

    .line 729
    return-void
.end method
