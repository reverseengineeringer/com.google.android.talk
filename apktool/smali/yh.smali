.class final Lyh;
.super Lyn;
.source "SourceFile"


# instance fields
.field final synthetic a:Laao;

.field final synthetic b:Lmd;

.field final synthetic c:Laaw;


# direct methods
.method constructor <init>(Laaw;Laao;Lmd;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lyh;->c:Laaw;

    iput-object p2, p0, Lyh;->a:Laao;

    iput-object p3, p0, Lyh;->b:Lmd;

    .line 1635
    invoke-direct {p0}, Lyn;-><init>()V

    .line 227
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 231
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lyh;->b:Lmd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 240
    iget-object v0, p0, Lyh;->c:Laaw;

    iget-object v1, p0, Lyh;->a:Laao;

    .line 2276
    invoke-virtual {v0, v1}, Laaw;->e(Laao;)V

    .line 241
    iget-object v0, p0, Lyh;->c:Laaw;

    .line 3035
    iget-object v0, v0, Laaw;->i:Ljava/util/ArrayList;

    .line 241
    iget-object v1, p0, Lyh;->a:Laao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lyh;->c:Laaw;

    .line 4035
    invoke-virtual {v0}, Laaw;->j()V

    .line 243
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lks;->c(Landroid/view/View;F)V

    .line 235
    return-void
.end method
