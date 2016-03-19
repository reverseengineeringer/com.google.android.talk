.class public final Liig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Liif;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Liia;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liig;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 3

    .prologue
    .line 15
    sget-object v0, Liig;->b:Liif;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Liif;

    invoke-direct {v0}, Liif;-><init>()V

    sput-object v0, Liig;->b:Liif;

    .line 18
    :cond_0
    const-class v1, Liia;

    .line 1018
    new-instance v2, Liid;

    const-class v0, Lgwi;

    .line 1019
    invoke-static {p0, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwi;

    invoke-direct {v2, v0}, Liid;-><init>(Lgwi;)V

    .line 18
    invoke-virtual {p1, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
