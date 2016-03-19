.class final Lcdq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcdp;


# direct methods
.method constructor <init>(Lcdp;I)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcdq;->b:Lcdp;

    iput p2, p0, Lcdq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcdq;->b:Lcdp;

    iget-object v0, v0, Lcdp;->a:Lcdo;

    invoke-virtual {v0}, Lcdo;->a()V

    .line 124
    iget-object v0, p0, Lcdq;->b:Lcdp;

    iget-object v0, v0, Lcdp;->a:Lcdo;

    invoke-virtual {v0}, Lcdo;->getTargetFragment()Lav;

    move-result-object v0

    check-cast v0, Lcdn;

    iget v1, p0, Lcdq;->a:I

    .line 1057
    invoke-virtual {v0}, Lcdn;->getFragmentManager()Lbg;

    move-result-object v2

    invoke-virtual {v2}, Lbg;->a()Lbz;

    move-result-object v2

    .line 1139
    new-instance v3, Lcdr;

    invoke-direct {v3}, Lcdr;-><init>()V

    .line 1140
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1141
    const-string v5, "action_index"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1142
    invoke-virtual {v3, v4}, Lcdr;->setArguments(Landroid/os/Bundle;)V

    .line 1059
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcdr;->setTargetFragment(Lav;I)V

    .line 1060
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0}, Lcdr;->a(Lbz;Ljava/lang/String;)I

    .line 125
    return-void
.end method
