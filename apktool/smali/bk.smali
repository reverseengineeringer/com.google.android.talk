.class final Lbk;
.super Lbl;
.source "SourceFile"


# instance fields
.field final synthetic a:Lav;

.field final synthetic b:Lbh;


# direct methods
.method constructor <init>(Lbh;Landroid/view/View;Landroid/view/animation/Animation;Lav;)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lbk;->b:Lbh;

    iput-object p4, p0, Lbk;->a:Lav;

    invoke-direct {p0, p2, p3}, Lbl;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1157
    invoke-super {p0, p1}, Lbl;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1158
    iget-object v0, p0, Lbk;->a:Lav;

    iget-object v0, v0, Lav;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lbk;->a:Lav;

    const/4 v1, 0x0

    iput-object v1, v0, Lav;->l:Landroid/view/View;

    .line 1160
    iget-object v0, p0, Lbk;->b:Lbh;

    iget-object v1, p0, Lbk;->a:Lav;

    iget-object v2, p0, Lbk;->a:Lav;

    iget v2, v2, Lav;->m:I

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lbh;->a(Lav;IIIZ)V

    .line 1163
    :cond_0
    return-void
.end method
