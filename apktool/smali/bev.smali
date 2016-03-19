.class public final Lbev;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lbng;


# direct methods
.method public constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 9023
    iput-object p1, p0, Lbev;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 7026
    iget-object v2, p0, Lbev;->a:Lbng;

    .line 7649
    invoke-virtual {v2}, Lbng;->ao()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lbng;->i:Lbpq;

    invoke-interface {v0}, Lbpq;->a()Lbjb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8182
    invoke-virtual {v2}, Lbng;->d()I

    move-result v0

    invoke-static {v0}, Laal;->g(I)Z

    move-result v0

    .line 7649
    if-nez v0, :cond_3

    :cond_0
    move-object v0, v1

    .line 7617
    :cond_1
    :goto_0
    iget-object v3, v2, Lbng;->bb:Lcyx;

    if-eq v3, v0, :cond_2

    iget-object v3, v2, Lbng;->bb:Lcyx;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lbng;->bb:Lcyx;

    .line 7618
    invoke-virtual {v3, v0}, Lcyx;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7619
    :cond_2
    :goto_1
    return-void

    .line 7653
    :cond_3
    invoke-virtual {v2}, Lbng;->ag()Lcyx;

    move-result-object v0

    .line 7654
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcyx;->a()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    move-object v0, v1

    .line 7658
    goto :goto_0

    .line 7622
    :cond_5
    iput-object v0, v2, Lbng;->bb:Lcyx;

    .line 7626
    iget-object v3, v2, Lbng;->bb:Lcyx;

    if-eqz v3, :cond_8

    .line 7627
    invoke-virtual {v0}, Lcyx;->b()Ljava/lang/String;

    move-result-object v1

    .line 7628
    iget-object v0, v0, Lcyx;->e:Ljava/lang/String;

    .line 7631
    :goto_2
    iget-object v3, v2, Lbng;->bc:Lfct;

    if-eqz v3, :cond_6

    .line 7632
    iget-object v3, v2, Lbng;->bc:Lfct;

    invoke-interface {v3, v1}, Lfct;->a(Ljava/lang/String;)V

    .line 7636
    :cond_6
    iget-object v3, v2, Lbng;->context:Lill;

    const-class v4, Lbkx;

    .line 7637
    invoke-static {v3, v4}, Lilh;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 7638
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 7639
    iget-object v4, v2, Lbng;->at:Lbfd;

    invoke-virtual {v4}, Lbfd;->g()I

    goto :goto_3

    .line 7642
    :cond_7
    iget-object v2, v2, Lbng;->bd:Lbne;

    invoke-virtual {v2, v0, v1}, Lbne;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2
.end method
