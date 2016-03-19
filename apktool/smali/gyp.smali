.class public final Lgyp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lgyo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lgyi;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgyp;->a:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 4

    .prologue
    .line 16
    sget-object v0, Lgyp;->b:Lgyo;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lgyo;

    invoke-direct {v0}, Lgyo;-><init>()V

    sput-object v0, Lgyp;->b:Lgyo;

    .line 19
    :cond_0
    const-class v2, Lgyi;

    .line 1021
    const-class v0, Lgxl;

    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgxl;

    .line 1023
    const-class v1, Lgws;

    .line 1024
    invoke-static {p0, v1}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgws;

    invoke-interface {v1}, Lgws;->a()Latn;

    move-result-object v1

    invoke-interface {v0, v1}, Lgxl;->a(Lgxj;)Lgxl;

    move-result-object v0

    invoke-interface {v0}, Lgxl;->a()Lgxk;

    move-result-object v1

    .line 1025
    const-class v0, Lgwv;

    .line 1026
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwv;

    .line 1027
    new-instance v3, Lgyj;

    invoke-direct {v3, p0, v1, v0}, Lgyj;-><init>(Landroid/content/Context;Lgxk;Lgwv;)V

    .line 19
    invoke-virtual {p1, v2, v3}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 21
    return-void
.end method
