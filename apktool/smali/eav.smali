.class public final Leav;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 15
    iput-object p2, p0, Leav;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lbfz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 21
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 22
    iget-object v1, p0, Leav;->a:Ljava/lang/String;

    .line 1134
    iget-object v2, p0, Ldyx;->c:Ldyy;

    .line 22
    invoke-virtual {v0, v1, v2}, Lbfz;->a(Ljava/lang/String;Ldyy;)V

    .line 23
    return-void
.end method
