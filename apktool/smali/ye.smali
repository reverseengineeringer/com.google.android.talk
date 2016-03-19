.class final Lye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Laaw;


# direct methods
.method constructor <init>(Laaw;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lye;->b:Laaw;

    iput-object p2, p0, Lye;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 143
    iget-object v0, p0, Lye;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    .line 144
    iget-object v5, p0, Lye;->b:Laaw;

    .line 3339
    iget-object v1, v0, Lyl;->a:Laao;

    .line 3340
    if-nez v1, :cond_2

    move-object v1, v2

    .line 3341
    :goto_1
    iget-object v3, v0, Lyl;->b:Laao;

    .line 3342
    if-eqz v3, :cond_3

    iget-object v3, v3, Laao;->a:Landroid/view/View;

    .line 3343
    :goto_2
    if-eqz v1, :cond_1

    .line 3447
    sget-object v6, Lks;->a:Llc;

    invoke-virtual {v6, v1}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 3344
    invoke-virtual {v5}, Laaw;->d()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lmd;->a(J)Lmd;

    move-result-object v1

    .line 3346
    iget-object v6, v5, Laaw;->l:Ljava/util/ArrayList;

    iget-object v7, v0, Lyl;->a:Laao;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3347
    iget v6, v0, Lyl;->e:I

    iget v7, v0, Lyl;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Lmd;->b(F)Lmd;

    .line 3348
    iget v6, v0, Lyl;->f:I

    iget v7, v0, Lyl;->d:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v1, v6}, Lmd;->c(F)Lmd;

    .line 3349
    invoke-virtual {v1, v10}, Lmd;->a(F)Lmd;

    move-result-object v6

    new-instance v7, Lyj;

    invoke-direct {v7, v5, v0, v1}, Lyj;-><init>(Laaw;Lyl;Lmd;)V

    invoke-virtual {v6, v7}, Lmd;->a(Lmn;)Lmd;

    move-result-object v1

    invoke-virtual {v1}, Lmd;->c()V

    .line 3367
    :cond_1
    if-eqz v3, :cond_0

    .line 4447
    sget-object v1, Lks;->a:Llc;

    invoke-virtual {v1, v3}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v1

    .line 3369
    iget-object v6, v5, Laaw;->l:Ljava/util/ArrayList;

    iget-object v7, v0, Lyl;->b:Laao;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3370
    invoke-virtual {v1, v10}, Lmd;->b(F)Lmd;

    move-result-object v6

    invoke-virtual {v6, v10}, Lmd;->c(F)Lmd;

    move-result-object v6

    invoke-virtual {v5}, Laaw;->d()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lmd;->a(J)Lmd;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Lmd;->a(F)Lmd;

    move-result-object v6

    new-instance v7, Lyk;

    invoke-direct {v7, v5, v0, v1, v3}, Lyk;-><init>(Laaw;Lyl;Lmd;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    invoke-virtual {v0}, Lmd;->c()V

    goto/16 :goto_0

    .line 3340
    :cond_2
    iget-object v1, v1, Laao;->a:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v2

    .line 3342
    goto :goto_2

    .line 146
    :cond_4
    iget-object v0, p0, Lye;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lye;->b:Laaw;

    .line 5035
    iget-object v0, v0, Laaw;->h:Ljava/util/ArrayList;

    .line 147
    iget-object v1, p0, Lye;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
