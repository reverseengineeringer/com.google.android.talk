.class final Lyd;
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
    .line 116
    iput-object p1, p0, Lyd;->b:Laaw;

    iput-object p2, p0, Lyd;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 119
    iget-object v0, p0, Lyd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lym;

    .line 120
    iget-object v1, p0, Lyd;->b:Laaw;

    iget-object v2, v0, Lym;->a:Laao;

    iget v3, v0, Lym;->b:I

    iget v4, v0, Lym;->c:I

    iget v5, v0, Lym;->d:I

    iget v0, v0, Lym;->e:I

    .line 3271
    iget-object v7, v2, Laao;->a:Landroid/view/View;

    .line 3272
    sub-int v3, v5, v3

    .line 3273
    sub-int v4, v0, v4

    .line 3274
    if-eqz v3, :cond_0

    .line 3447
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, v7}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 3275
    invoke-virtual {v0, v10}, Lmd;->b(F)Lmd;

    .line 3277
    :cond_0
    if-eqz v4, :cond_1

    .line 4447
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, v7}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v0

    .line 3278
    invoke-virtual {v0, v10}, Lmd;->c(F)Lmd;

    .line 5447
    :cond_1
    sget-object v0, Lks;->a:Llc;

    invoke-virtual {v0, v7}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v5

    .line 3284
    iget-object v0, v1, Laaw;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3285
    invoke-virtual {v1}, Laaw;->a()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lmd;->a(J)Lmd;

    move-result-object v7

    new-instance v0, Lyi;

    invoke-direct/range {v0 .. v5}, Lyi;-><init>(Laaw;Laao;IILmd;)V

    invoke-virtual {v7, v0}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    invoke-virtual {v0}, Lmd;->c()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lyd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    iget-object v0, p0, Lyd;->b:Laaw;

    .line 6035
    iget-object v0, v0, Laaw;->g:Ljava/util/ArrayList;

    .line 124
    iget-object v1, p0, Lyd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method
