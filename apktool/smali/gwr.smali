.class public final Lgwr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static c:Lgwq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lgwi;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgwr;->a:Ljava/lang/String;

    .line 13
    const-class v0, Lgwk;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgwr;->b:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static a(Landroid/content/Context;Lilh;)V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lgwr;->c:Lgwq;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lgwq;

    invoke-direct {v0}, Lgwq;-><init>()V

    sput-object v0, Lgwr;->c:Lgwq;

    .line 30
    :cond_0
    const-class v0, Lgwk;

    .line 1023
    new-instance v1, Lgwp;

    invoke-direct {v1, p0}, Lgwp;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p1, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 32
    return-void
.end method

.method public static a(Lilh;)V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lgwr;->c:Lgwq;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lgwq;

    invoke-direct {v0}, Lgwq;-><init>()V

    sput-object v0, Lgwr;->c:Lgwq;

    .line 22
    :cond_0
    const-class v0, Lgwi;

    .line 1018
    new-instance v1, Lgwn;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lgwn;-><init>(B)V

    .line 22
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method
