.class final Lceu;
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
    .line 78
    iput-object p1, p0, Lceu;->b:Lcet;

    iput-object p2, p0, Lceu;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lceu;->b:Lcet;

    invoke-virtual {v0}, Lcet;->a()V

    .line 82
    iget-object v0, p0, Lceu;->b:Lcet;

    .line 1046
    iget-object v1, v0, Lcet;->d:Lhba;

    iget v0, v0, Lcet;->a:I

    invoke-interface {v1, v0}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xb33

    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    invoke-interface {v0}, Lhax;->d()V

    .line 83
    iget-object v0, p0, Lceu;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    return-void
.end method
