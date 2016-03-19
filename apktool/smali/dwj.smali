.class public final Ldwj;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lbfd;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 18
    iput p2, p0, Ldwj;->a:I

    .line 19
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lbfz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 24
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 26
    iget v1, p0, Ldwj;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 27
    invoke-virtual {v0}, Lbfz;->z()V

    .line 29
    :cond_0
    iget v1, p0, Ldwj;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 30
    invoke-virtual {v0}, Lbfz;->A()V

    .line 33
    :cond_1
    new-instance v0, Ldot;

    iget v1, p0, Ldwj;->a:I

    invoke-direct {v0, v1}, Ldot;-><init>(I)V

    invoke-virtual {p0, v0}, Ldwj;->a(Leff;)V

    .line 34
    return-void
.end method
