.class public final Lebj;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lbfd;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 26
    iput p2, p0, Lebj;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lbfz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 32
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 1134
    iget-object v1, p0, Ldyx;->c:Ldyy;

    .line 33
    iget v2, p0, Lebj;->a:I

    .line 31
    invoke-static {v0, v1, v2}, Lbft;->a(Lbfz;Ldyy;I)V

    .line 35
    return-void
.end method
