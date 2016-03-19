.class public final Lhvg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lhvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lhuy;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhvg;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lhvg;->b:Lhvf;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lhvf;

    invoke-direct {v0}, Lhvf;-><init>()V

    sput-object v0, Lhvg;->b:Lhvf;

    .line 18
    :cond_0
    const-class v0, Lhuy;

    .line 1016
    new-instance v1, Lhva;

    invoke-direct {v1, p0}, Lhva;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 20
    return-void
.end method
