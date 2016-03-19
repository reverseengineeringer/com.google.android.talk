.class final Lqz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lqr;

.field final synthetic b:Lqw;


# direct methods
.method constructor <init>(Lqw;Lqr;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lqz;->b:Lqw;

    iput-object p2, p0, Lqz;->a:Lqr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lqz;->b:Lqw;

    iget-object v0, v0, Lqw;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lqz;->a:Lqr;

    .line 1061
    iget-object v1, v1, Lqr;->a:Lsa;

    .line 956
    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 957
    iget-object v0, p0, Lqz;->b:Lqw;

    iget-boolean v0, v0, Lqw;->E:Z

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Lqz;->a:Lqr;

    .line 2061
    iget-object v0, v0, Lqr;->a:Lsa;

    .line 958
    invoke-virtual {v0}, Lsa;->dismiss()V

    .line 960
    :cond_0
    return-void
.end method
