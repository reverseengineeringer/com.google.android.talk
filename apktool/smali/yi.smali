.class final Lyi;
.super Lyn;
.source "SourceFile"


# instance fields
.field final synthetic a:Laao;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lmd;

.field final synthetic e:Laaw;


# direct methods
.method constructor <init>(Laaw;Laao;IILmd;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lyi;->e:Laaw;

    iput-object p2, p0, Lyi;->a:Laao;

    iput p3, p0, Lyi;->b:I

    iput p4, p0, Lyi;->c:I

    iput-object p5, p0, Lyi;->d:Lmd;

    .line 1635
    invoke-direct {p0}, Lyn;-><init>()V

    .line 285
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lyi;->d:Lmd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 302
    iget-object v0, p0, Lyi;->e:Laaw;

    iget-object v1, p0, Lyi;->a:Laao;

    .line 2266
    invoke-virtual {v0, v1}, Laaw;->e(Laao;)V

    .line 303
    iget-object v0, p0, Lyi;->e:Laaw;

    .line 3035
    iget-object v0, v0, Laaw;->j:Ljava/util/ArrayList;

    .line 303
    iget-object v1, p0, Lyi;->a:Laao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lyi;->e:Laaw;

    .line 4035
    invoke-virtual {v0}, Laaw;->j()V

    .line 305
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 292
    iget v0, p0, Lyi;->b:I

    if-eqz v0, :cond_0

    .line 293
    invoke-static {p1, v1}, Lks;->a(Landroid/view/View;F)V

    .line 295
    :cond_0
    iget v0, p0, Lyi;->c:I

    if-eqz v0, :cond_1

    .line 296
    invoke-static {p1, v1}, Lks;->b(Landroid/view/View;F)V

    .line 298
    :cond_1
    return-void
.end method
