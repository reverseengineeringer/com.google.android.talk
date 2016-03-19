.class public final Ldws;
.super Ldyx;
.source "SourceFile"


# static fields
.field private static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lezi;->o:Limx;

    const/4 v0, 0x0

    sput-boolean v0, Ldws;->a:Z

    return-void
.end method

.method public constructor <init>(Lbfd;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Ldyx;-><init>(Lbfd;)V

    .line 15
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

    .line 22
    invoke-direct {v0, v1, v2}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-virtual {v0}, Lbfz;->r()V

    .line 25
    return-void
.end method
