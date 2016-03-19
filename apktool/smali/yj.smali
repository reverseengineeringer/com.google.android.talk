.class final Lyj;
.super Lyn;
.source "SourceFile"


# instance fields
.field final synthetic a:Lyl;

.field final synthetic b:Lmd;

.field final synthetic c:Laaw;


# direct methods
.method constructor <init>(Laaw;Lyl;Lmd;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lyj;->c:Laaw;

    iput-object p2, p0, Lyj;->a:Lyl;

    iput-object p3, p0, Lyj;->b:Lmd;

    .line 1635
    invoke-direct {p0}, Lyn;-><init>()V

    .line 349
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 353
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lyj;->b:Lmd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 358
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lks;->c(Landroid/view/View;F)V

    .line 359
    invoke-static {p1, v2}, Lks;->a(Landroid/view/View;F)V

    .line 360
    invoke-static {p1, v2}, Lks;->b(Landroid/view/View;F)V

    .line 361
    iget-object v0, p0, Lyj;->c:Laaw;

    iget-object v1, p0, Lyj;->a:Lyl;

    iget-object v1, v1, Lyl;->a:Laao;

    .line 2291
    invoke-virtual {v0, v1}, Laaw;->e(Laao;)V

    .line 362
    iget-object v0, p0, Lyj;->c:Laaw;

    .line 3035
    iget-object v0, v0, Laaw;->l:Ljava/util/ArrayList;

    .line 362
    iget-object v1, p0, Lyj;->a:Lyl;

    iget-object v1, v1, Lyl;->a:Laao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v0, p0, Lyj;->c:Laaw;

    .line 4035
    invoke-virtual {v0}, Laaw;->j()V

    .line 364
    return-void
.end method
