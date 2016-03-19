.class final Ldbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ldbh;


# direct methods
.method constructor <init>(Ldbh;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Ldbj;->b:Ldbh;

    iput-object p2, p0, Ldbj;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 244
    const-string v0, "Babel"

    const-string v1, "contact permission banner declined"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lezi;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    iget-object v0, p0, Ldbj;->b:Ldbh;

    .line 1100
    iget-object v0, v0, Ldbh;->f:Lbfd;

    .line 245
    const/16 v1, 0xa70

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 247
    iget-object v0, p0, Ldbj;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Ldbj;->b:Ldbh;

    .line 2100
    iget-object v0, v0, Ldbh;->context:Lill;

    .line 249
    iget-object v1, p0, Ldbj;->b:Ldbh;

    .line 3100
    iget-object v1, v1, Ldbh;->f:Lbfd;

    .line 249
    invoke-virtual {v1}, Lbfd;->g()I

    move-result v1

    invoke-static {v0, v1}, Lbff;->i(Landroid/content/Context;I)V

    .line 250
    return-void
.end method
