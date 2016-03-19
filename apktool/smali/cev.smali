.class final Lcev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcet;


# direct methods
.method constructor <init>(Lcet;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcev;->b:Lcet;

    iput-object p2, p0, Lcev;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcev;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcev;->b:Lcet;

    .line 1046
    iget-object v1, v0, Lcet;->d:Lhba;

    iget v0, v0, Lcet;->a:I

    invoke-interface {v1, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xb32

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 94
    iget-object v0, p0, Lcev;->b:Lcet;

    iget-object v1, p0, Lcev;->b:Lcet;

    iget-object v1, v1, Lcet;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcet;->a(Landroid/content/Context;)V

    .line 95
    iget-object v0, p0, Lcev;->b:Lcet;

    invoke-virtual {v0}, Lcet;->a()V

    .line 96
    iget-object v0, p0, Lcev;->b:Lcet;

    iget-object v0, v0, Lcet;->b:Landroid/content/Context;

    sget v1, Laal;->lJ:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 97
    return-void
.end method
