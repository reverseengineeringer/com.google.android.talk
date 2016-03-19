.class final Lyg;
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
    .line 197
    iput-object p1, p0, Lyg;->c:Laaw;

    iput-object p2, p0, Lyg;->a:Laao;

    iput-object p3, p0, Lyg;->b:Lmd;

    .line 1635
    invoke-direct {p0}, Lyn;-><init>()V

    .line 197
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lyg;->b:Lmd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmd;->a(Lmn;)Lmd;

    .line 206
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lks;->c(Landroid/view/View;F)V

    .line 207
    iget-object v0, p0, Lyg;->c:Laaw;

    iget-object v1, p0, Lyg;->a:Laao;

    .line 2252
    invoke-virtual {v0, v1}, Laaw;->e(Laao;)V

    .line 208
    iget-object v0, p0, Lyg;->c:Laaw;

    .line 3035
    iget-object v0, v0, Laaw;->k:Ljava/util/ArrayList;

    .line 208
    iget-object v1, p0, Lyg;->a:Laao;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lyg;->c:Laaw;

    .line 4035
    invoke-virtual {v0}, Laaw;->j()V

    .line 210
    return-void
.end method
