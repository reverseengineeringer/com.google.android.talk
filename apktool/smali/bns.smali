.class final Lbns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcje;


# instance fields
.field final synthetic a:Lbng;


# direct methods
.method constructor <init>(Lbng;)V
    .locals 0

    .prologue
    .line 3080
    iput-object p1, p0, Lbns;->a:Lbng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3083
    if-nez p2, :cond_0

    .line 3084
    iget-object v2, p0, Lbns;->a:Lbng;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    .line 3285
    :goto_0
    invoke-virtual {v2, v0}, Lbng;->a(Z)V

    .line 3085
    if-eqz p1, :cond_3

    .line 3086
    iget-object v0, p0, Lbns;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lexa;->a(Landroid/view/View;)V

    .line 4202
    :cond_0
    :goto_1
    sget-object v0, Lfar;->a:Lfar;

    .line 3092
    if-eqz v0, :cond_1

    .line 3093
    invoke-virtual {v0, p1}, Lfar;->a(Z)V

    .line 3095
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 3084
    goto :goto_0

    .line 3088
    :cond_3
    iget-object v0, p0, Lbns;->a:Lbng;

    invoke-virtual {v0}, Lbng;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lexa;->a(Landroid/view/View;Z)V

    goto :goto_1
.end method
