.class final Ldau;
.super Ldbd;
.source "SourceFile"


# instance fields
.field final synthetic c:Ldas;


# direct methods
.method constructor <init>(Ldas;II)V
    .locals 6

    .prologue
    .line 101
    iput-object p1, p0, Ldau;->c:Ldas;

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
    .locals 2

    .prologue
    .line 104
    check-cast p1, Ldbe;

    .line 1370
    iget-object v0, p1, Ldbe;->p:Landroid/widget/TextView;

    .line 105
    sget v1, Laen;->jB:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2370
    iget-object v0, p1, Ldbe;->p:Landroid/widget/TextView;

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 107
    return-void
.end method
