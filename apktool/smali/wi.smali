.class final Lwi;
.super Lze;
.source "SourceFile"


# instance fields
.field final synthetic a:Lwe;

.field final synthetic b:Lwh;


# direct methods
.method constructor <init>(Lwh;Landroid/view/View;Lwe;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lwi;->b:Lwh;

    iput-object p3, p0, Lwi;->a:Lwe;

    invoke-direct {p0, p2}, Lze;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Lza;
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lwi;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwe;

    .line 1052
    iget-object v0, v0, Lwe;->h:Lwj;

    .line 623
    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    .line 627
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lwi;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwe;

    .line 2052
    iget-object v0, v0, Lwe;->h:Lwj;

    .line 627
    invoke-virtual {v0}, Lwj;->d()Lza;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lwi;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwe;

    invoke-virtual {v0}, Lwe;->e()Z

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lwi;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwe;

    .line 3052
    iget-object v0, v0, Lwe;->j:Lwg;

    .line 641
    if-eqz v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 645
    :cond_0
    iget-object v0, p0, Lwi;->b:Lwh;

    iget-object v0, v0, Lwh;->a:Lwe;

    invoke-virtual {v0}, Lwe;->f()Z

    .line 646
    const/4 v0, 0x1

    goto :goto_0
.end method
