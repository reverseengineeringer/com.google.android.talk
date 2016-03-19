.class final Ldaw;
.super Ldbd;
.source "SourceFile"


# instance fields
.field final synthetic c:Ldas;


# direct methods
.method constructor <init>(Ldas;I)V
    .locals 2

    .prologue
    .line 124
    iput-object p1, p0, Ldaw;->c:Ldas;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ldbd;-><init>(Ldas;IZZ)V

    return-void
.end method


# virtual methods
.method protected a(Laao;)V
    .locals 2

    .prologue
    .line 127
    check-cast p1, Ldbf;

    .line 128
    sget v0, Laen;->jJ:I

    invoke-virtual {p1, v0}, Ldbf;->c(I)V

    .line 1385
    iget-object v0, p1, Ldbf;->p:Landroid/widget/TextView;

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 130
    return-void
.end method
