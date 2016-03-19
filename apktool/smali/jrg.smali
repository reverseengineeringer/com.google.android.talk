.class public final Ljrg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Ljrf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljto;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljrg;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ljrg;->b:Ljrf;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljrf;

    invoke-direct {v0}, Ljrf;-><init>()V

    sput-object v0, Ljrg;->b:Ljrf;

    .line 19
    :cond_0
    const-class v1, Ljto;

    .line 1028
    const-class v0, Ljrh;

    invoke-static {p0, v0}, Laal;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljrh;

    .line 1029
    invoke-interface {v0}, Ljrh;->b()Ljto;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v1, v0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
