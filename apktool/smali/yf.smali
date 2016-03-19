.class final Lyf;
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
    .line 163
    iput-object p1, p0, Lyf;->b:Laaw;

    iput-object p2, p0, Lyf;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 165
    iget-object v0, p0, Lyf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laao;

    .line 166
    iget-object v2, p0, Lyf;->b:Laaw;

    .line 3223
    iget-object v3, v0, Laao;->a:Landroid/view/View;

    .line 3447
    sget-object v4, Lks;->a:Llc;

    invoke-virtual {v4, v3}, Llc;->k(Landroid/view/View;)Lmd;

    move-result-object v3

    .line 3225
    iget-object v4, v2, Laaw;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3226
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lmd;->a(F)Lmd;

    move-result-object v4

    invoke-virtual {v2}, Laaw;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lmd;->a(J)Lmd;

    move-result-object v4

    new-instance v5, Lyh;

    invoke-direct {v5, v2, v0, v3}, Lyh;-><init>(Laaw;Laao;Lmd;)V

    invoke-virtual {v4, v5}, Lmd;->a(Lmn;)Lmd;

    move-result-object v0

    invoke-virtual {v0}, Lmd;->c()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lyf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v0, p0, Lyf;->b:Laaw;

    .line 4035
    iget-object v0, v0, Laaw;->f:Ljava/util/ArrayList;

    .line 169
    iget-object v1, p0, Lyf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method
