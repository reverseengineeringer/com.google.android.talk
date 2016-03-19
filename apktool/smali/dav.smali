.class final Ldav;
.super Ldbd;
.source "SourceFile"


# instance fields
.field final synthetic c:Ldas;


# direct methods
.method constructor <init>(Ldas;II)V
    .locals 6

    .prologue
    .line 112
    iput-object p1, p0, Ldav;->c:Ldas;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Ldas;IZZI)V

    return-void
.end method


# virtual methods
.method protected a(Laao;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    check-cast p1, Ldbe;

    .line 1370
    iget-object v0, p1, Ldbe;->p:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Ldav;->c:Ldas;

    invoke-virtual {v1}, Ldas;->b()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/apps/hangouts/hangout/StressMode;->hn:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Ldav;->c:Ldas;

    .line 2046
    iget-object v5, v5, Ldas;->e:Lbfd;

    .line 118
    invoke-virtual {v5}, Lbfd;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2370
    iget-object v0, p1, Ldbe;->p:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 120
    return-void
.end method
