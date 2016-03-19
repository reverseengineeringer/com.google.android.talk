.class final Lbad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazo;

.field final synthetic b:Lbac;


# direct methods
.method constructor <init>(Lbac;Lazo;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lbad;->b:Lbac;

    iput-object p2, p0, Lbad;->a:Lazo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 53
    iget-object v0, p0, Lbad;->b:Lbac;

    iget-object v0, v0, Lbac;->b:Lbab;

    iget-object v1, p0, Lbad;->a:Lazo;

    .line 1065
    if-eqz v1, :cond_0

    .line 1066
    iget-object v2, v0, Lbab;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lbab;->b:Lba;

    sget v4, Laal;->it:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 1068
    invoke-virtual {v1}, Lazo;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    .line 1067
    invoke-virtual {v3, v4, v5}, Lba;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget-object v0, v0, Lbab;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 1071
    :cond_0
    iget-object v1, v0, Lbab;->a:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v0, v0, Lbab;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
