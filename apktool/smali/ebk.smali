.class public final Lebk;
.super Ldyx;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbfd;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 17
    iput-object p2, p0, Lebk;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public p_()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lbfz;

    .line 1036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 1123
    iget-object v2, p0, Ldyx;->b:Ldvb;

    iget v2, v2, Ldvb;->a:I

    .line 23
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lebk;->a:Ljava/lang/String;

    .line 1134
    iget-object v2, p0, Ldyx;->c:Ldyy;

    .line 22
    invoke-static {v0, v1, v2}, Lbft;->a(Lbfz;Ljava/lang/String;Ldyy;)V

    .line 26
    return-void
.end method
